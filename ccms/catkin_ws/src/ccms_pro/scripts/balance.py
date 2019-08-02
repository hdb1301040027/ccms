#!/usr/bin/env python
# -*- coding: utf-8 -*-
from ccms_pro.msg import UnpackingCanData1
from ccms_pro.msg import BalanceResult
import rospy

#�жϵ���ģ��ľ���״̬

def callback1(msg1):
    rospy.loginfo('callback1,start!!!!')
    modID=msg1.id
    msg_list1=[[],[],[]]
    #msg_list1[0]=msg1.stamp
    #msg_list1.append(msg1.Module_Voltage)                            #ģ���ѹ
    msg_list1[0]=msg1.module_overvolt_abnormal                  #ģ���ѹ�쳣�ź�
    msg_list1[1]=msg1.module_capacity_abnormal                  #ģ�������쳣�ź�
    msg_list1[2]=msg1.id
    #msg_list1.append(msg1.module_overvolt_warming)                   #ģ���ѹԤ��
    list=msg_list1
    rospy.loginfo(msg_list1)

def balance():
    #rospy.loginfo("balance!!!!!!!!!!!!!!!!!!!!!!!!")
    pub = rospy.Publisher('balance_result', BalanceResult, queue_size=10) #list1���ݸ�ʽ��msg�ж���????????????
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
	    if(sum(list[0])<=2 and sum(list[1])<=2):#balance=1����,balance=0������
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

    
