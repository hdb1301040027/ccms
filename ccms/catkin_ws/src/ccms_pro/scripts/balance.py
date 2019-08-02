#!/usr/bin/env python
# -*- coding: utf-8 -*-
from ccms_pro.msg import UnpackingCanData1
from ccms_pro.msg import BalanceResult
import rospy

#判断电容模组的均衡状态

def callback1(msg1):
    rospy.loginfo('callback1,start!!!!')
    modID=msg1.id
    msg_list1=[[],[],[]]
    #msg_list1[0]=msg1.stamp
    #msg_list1.append(msg1.Module_Voltage)                            #模组电压
    msg_list1[0]=msg1.module_overvolt_abnormal                  #模组过压异常信号
    msg_list1[1]=msg1.module_capacity_abnormal                  #模组容量异常信号
    msg_list1[2]=msg1.id
    #msg_list1.append(msg1.module_overvolt_warming)                   #模组过压预警
    list=msg_list1
    rospy.loginfo(msg_list1)

def balance():
    #rospy.loginfo("balance!!!!!!!!!!!!!!!!!!!!!!!!")
    pub = rospy.Publisher('balance_result', BalanceResult, queue_size=10) #list1数据格式在msg中定义????????????
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
	    if(sum(list[0])<=2 and sum(list[1])<=2):#balance=1均衡,balance=0不均衡
	        balance=1
	    else:
	        balance=0
	    balanceresult=BalanceResult()
            balanceresult.balancestate=balance
	    balanceresult.modID=list[2]
	    balanceresult.stamp=rospy.get_rostime()
	    pub.publish(balanceresult)
    rate.sleep()

if __name__ =='__main__' :
    #rospy.loginfo("balance!!!!!!!!!!!!")
    msg1 = UnpackingCanData1()
    #msg5 = UnpackingCanData5()
    rospy.init_node("balance")
    list=[[],[],[]]
    sub1 = rospy.Subscriber('simple_can_msg', UnpackingCanData1, callback1)
    try:
        balance()
    except rospy.ROSInterruptException:
        pass
    rospy.spin()

    
