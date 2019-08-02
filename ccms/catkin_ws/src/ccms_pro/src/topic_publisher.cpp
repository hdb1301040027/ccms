#include "ros/ros.h"
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <net/if.h>
#include <sys/ioctl.h>
#include <sys/socket.h>
#include <linux/can.h>
#include <linux/can/raw.h>
#include <sys/time.h>
#include <errno.h>
#include <ros/timer.h>
#include <ros/duration.h>
#include "ccms_pro/UnpackingCanData1.h"

using namespace std;


uint16_t Module_Voltage(const uint16_t Voltage0,const uint16_t Voltage1)
{
    uint16_t volt0 = Voltage0;
    uint16_t volt1 = Voltage1;
    volt1<<=8;
    volt1|=volt0;
    return volt1;
}

bool CapOverVolt(const uint16_t Voltage2, int index)
{
    uint8_t volt0 = Voltage2;
    if(volt0&(0x01<<index))
       return true;
    else
       return false;
}

bool module_overvolt_abnormal_data(int num,uint16_t voltage_data,std::vector<uint64_t>&re_module_overvolt_abnormal)
{
	for (int i=0; i<num; i++)
    {	
        if (CapOverVolt(voltage_data,i))
        {
            re_module_overvolt_abnormal.push_back(1);
        }
        else
        {
            re_module_overvolt_abnormal.push_back(0);
        }
    }
	return true;
}

bool module_capacity_abnormal_data(int num,uint16_t voltage_data,std::vector<uint64_t>&re_module_capacity_abnormal)
{
	for (int i=0; i<num; i++)
    {	
        if (CapOverVolt(voltage_data,i))
        {
            re_module_capacity_abnormal.push_back(1);
        }
        else
        {
            re_module_capacity_abnormal.push_back(0);
        }
    }
	return true;
}

bool other_data_bit_data(int num,uint16_t voltage_data,std::vector<uint64_t>&re_other_data_bit)
{
	for (int i=0; i<num; i++)
    {	
        if (CapOverVolt(voltage_data,i))
        {
            re_other_data_bit.push_back(1);
        }
        else
        {
            re_other_data_bit.push_back(0);
        }
    }
	return true;
}

bool module_overvolt_warming_data(int num,uint16_t voltage_data,std::vector<uint64_t>&re_module_overvolt_warming)
{
	for (int i=0; i<num; i++)
    {	
        if (CapOverVolt(voltage_data,i))
        {
            re_module_overvolt_warming.push_back(1);
        }
        else
        {
            re_module_overvolt_warming.push_back(0);
        }
    }
	return true;
}
/*
void timer_callBack(const ros::TimeEvent& event)	
{
	ROS_INFO("can1: [moduleID= %d] %d %d %d",
	msg.id,msg.Module_Voltage,msg.Module_Capacitance_Temperature,msg.Module_Board_Temperature);
}
*/	
int main(int argc, char** argv)
{

	ros::init(argc,argv,"topic_publisher");
	ros::NodeHandle n;
	ros::Publisher can_1_pub = n.advertise<ccms_pro::UnpackingCanData1>("simple_can_msg",1000);
	int s,nbytes;
	struct ifreq ifr;
	struct can_frame frame;
    struct sockaddr_can addr;
	struct can_filter rfilter[43];
	memset(&frame,0,sizeof(struct can_frame));
	s = socket(PF_CAN,SOCK_RAW,CAN_RAW);
	ROS_INFO("n_s_2 %d",s);
	if(s < 0)
	{
		close(s);
		s = socket(PF_CAN,SOCK_RAW,CAN_RAW);
	}
    strcpy(ifr.ifr_name,"can0");
    ioctl(s,SIOCGIFINDEX,&ifr);
    addr.can_family = AF_CAN;
    addr.can_ifindex = ifr.ifr_ifindex;
    int ret = bind(s,(struct sockaddr *)&addr,sizeof(addr));
	for(int i=0; i<43; i++)
	{
		rfilter[i].can_id = 0x180 + i;
		rfilter[i].can_mask = CAN_SFF_MASK;
   	}
    setsockopt(s,SOL_CAN_RAW,CAN_RAW_FILTER,&rfilter,sizeof(rfilter));

	while(ros::ok())
	{  
	    nbytes = read(s,&frame,sizeof(frame));
		
	    if(nbytes > 0)
	    {
      		ccms_pro::UnpackingCanData1 msg;
 			if((frame.can_id - 0x180) <= 43)
			{
				msg.id = frame.can_id - 0x180;
			 	ros::Time begin = ros::Time::now();
			 	msg.stamp = begin;
		     	msg.Module_Voltage = Module_Voltage((uint16_t)frame.data[0],(uint16_t)frame.data[1]) - 1000;
	         	msg.Module_Capacitance_Temperature = (uint8_t)frame.data[2] - 40;
	         	msg.Module_Board_Temperature = (uint8_t)frame.data[3] - 40;

				std::vector <uint64_t> re_module_overvolt_abnormal;
				std::vector <uint64_t> re_module_capacity_abnormal;
				std::vector <uint64_t> re_other_data_bit;
				std::vector <uint64_t> re_module_overvolt_warming;

				module_overvolt_abnormal_data(8,(uint16_t)frame.data[4],re_module_overvolt_abnormal);
			 	msg.module_overvolt_abnormal = re_module_overvolt_abnormal;

				module_capacity_abnormal_data(8,(uint16_t)frame.data[5],re_module_capacity_abnormal);
			 	msg.module_capacity_abnormal = re_module_capacity_abnormal;

				other_data_bit_data(8,(uint16_t)frame.data[4],re_other_data_bit);
			 	msg.other_data_bit = re_other_data_bit;

				
				module_overvolt_warming_data(8,(uint16_t)frame.data[4],re_module_overvolt_warming);
			 	msg.module_overvolt_warming = re_module_overvolt_warming;
		 
		 	 	can_1_pub.publish(msg);
				//ros::Timer timer = n.createTimer(ros::Duration(2),timer_callBack);
		 	 	ros::spinOnce();
			 }
	    }
	    else
	    {
	        	ROS_INFO("can1 no bytes");
				ROS_INFO("%d,%s", errno,(char*)strerror(errno));
	    }
	}
	return 0;
}

