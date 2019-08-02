#!/usr/bin/env python
# -*- coding: utf-8 -*-
from ccms_pro.msg import UnpackingCanData2
from ccms_pro.msg import UnpackingCanData3
from ccms_pro.msg import UnpackingCanData6
from ccms_pro.msg import CalcResult
import rospy
import numpy as np

#1.���г����ܵ�Դ��ģ����ģ��ĳ�������������м��
#2.�Գ������ݵ�������������
#C=Q/U=(��idt)/U=it/U,R=U/I

def callback2(msg2):
    modID=msg2.id
    msg2_list=[]
    #msg2_list.append(msg2.id)                                   #ģ��ID
    #msg2_list.append(msg2.stamp)                                #��Ϣ��ʱ���
    msg2_list.append(msg2.Module_Block_Voltage1)                  #ģ��xģ��1��ѹ 
    msg2_list.append(msg2.Module_Block_Voltage2)                  #ģ��xģ��2��ѹ    
    msg2_list.append(msg2.Module_Block_Voltage3)                  #ģ��xģ��3��ѹ 
    msg2_list.append(msg2.Module_Block_Voltage4)                  #ģ��xģ��4��ѹ
    #rospy.loginfo(np.shape(msg2_list)) 
    #rospy.loginfo(np.shape(U[0][0]))  
    U[modID][0]=msg2_list

def callback3(msg3):
    modID=msg3.id
    msg3_list=[]
    #msg3_list.append(msg3.id)                                    #ģ��ID
    #msg3_list.append(msg3.stamp)                             	  #��Ϣ��ʱ���
    msg3_list.append(msg3.Module_Block_Voltage5)                  #ģ��xģ��5��ѹ 
    msg3_list.append(msg3.Module_Block_Voltage6)                  #ģ��xģ��6��ѹ
    msg3_list.append(msg3.Module_Block_Voltage7)                  #ģ��xģ��7��ѹ
    msg3_list.append(msg3.Module_Block_Voltage8)                  #ģ��xģ��8��ѹ
    U[modID][1]=msg3_list

def callback6(msg6):
    powerID=msg6.Power_ID
    #msg_list6.append(msg6.stamp)
    I[powerID]=msg6.Energy_Storage_Current               #���ܵ�Դ������powerID��0����1��ʼ
    rospy.loginfo(I)

def calccr():
    pub = rospy.Publisher('calc_r_result', CalcResult, queue_size=10)
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
        rospy.loginfo(U)
        if -99 not in I:
            R=U/I[1][0]
	    R=R.tolist()
	    t=2#better write to be a gedited parameter
	    C=(I[1][0]*t)/U
	    C=C.tolist()
	    calcresult=CalcResult()
	    calcresult.Rresult=R
	    calcresult.Cresult=C
	    calcresult.stamp=rospy.get_rostime()

            pub.publish(calcresult)
	    rospy.loginfo("calc_cr_result success!!!!!!!!!!!!!!!!!!!!!!!!")
            #rospy.loginfo(R)
            #rospy.loginfo(C)
            rate.sleep()

if __name__ =='__main__' :
    #rospy.loginfo("calc_cr!!!!!!!!!!!!")
    msg2 = UnpackingCanData2()
    msg3 = UnpackingCanData3()
    msg6 = UnpackingCanData6()

    rospy.init_node("calc_r")
    U=np.array([[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]],[[-99,-99,-99,-99],[-99,-99,-99,-99]]])#(43,2,[4])
    I=np.array([[0],[-99],[0]])#(3,1,[1]),powerID start from index 1
    sub2 = rospy.Subscriber('simple_can_msg_block1', UnpackingCanData2, callback2)
    sub3 = rospy.Subscriber('simple_can_msg_block2', UnpackingCanData3, callback3) 
    sub6 = rospy.Subscriber('simple_can6_msg', UnpackingCanData6, callback6)
    try:
        calccr()
    except rospy.ROSInterruptException:
	pass
    rospy.spin()

    
