#!/usr/bin/env python
# -*- coding: utf-8 -*-
from ccms_pro.msg import ModuleResult
#import ProcessData2
import rospy
import json
import pandas as pd

def module_detect():
    pub1 = rospy.Publisher('module_detect',ModuleResult, queue_size=1)
    rospy.init_node('module_detect_publisher')
    rate = rospy.Rate(2)
    filename = './battery.json'#将数据保存到该文件中li
    flags = 0#每三十次进行一次检测历史模组电压操作li
    while not rospy.is_shutdown():

        mod_inf=rospy.get_param("/mod_inf")
        #rospy.loginfo(mod_inf)   
        a = {}  # 每次来一组数据创建一个新的字典
        #substate
        for modID in range(1,len(mod_inf)):
            #if (len(mod_inf[modID][0]==8) and (len(mod_inf[modID][2])+len(mod_inf[modID][3])==8))):
            if (len(mod_inf[modID][0])==8):
                subgreatstate=0
                submidstate=0
                subbadstate=0
                for x in range(0,len(mod_inf[modID][0])):
                    if mod_inf[modID][x]==1:
                        subgreatstate+=1
                    elif mod_inf[modID][x]==0:
                        submidstate+=1
                    elif mod_inf[modID][x]==-1:
                        subbadstate+=1
                if subgreatstate==8:
                    totalstate=1
                if subbadstate>=1:
                    totalstate=-1
                else:
                    totalstate=0

            #Judge
                MinmoduleV=mod_inf[modID][5][4]
                singlehealth=-99
                blen=len(mod_inf)
                for x in range(0,blen):
                    if totalstate==1 and mod_inf[modID][1][0]>MinmoduleV:
                        singlehealth=1#健康
                    elif totalstate==-1 or mod_inf[modID][1][0]<=MinmoduleV:
                        singlehealth=-1#不健康
                    elif totalstate==0 and mod_inf[modID][1][0]>MinmoduleV:
                        singlehealth=0#亚健康

                a[modID] = totalstate#将该模组id对应的状态加入到该组中


            
             #Output ModuleReault
                moduleresult=ModuleResult()
                moduleresult.modID=modID
                moduleresult.modulehealth=singlehealth
                moduleresult.stamp=rospy.get_rostime()
             #store healthparam
                battery_inf=rospy.get_param("/battery_inf")
                battery_inf[0][0][modID-1]=singlehealth
                rospy.set_param("/battery_inf", battery_inf)

        with open(filename, 'a') as file_object:#测量完全一组模组对应的状态后进行保存li
            json.dump(a, file_object)
            file_object.write('\n')
            flags += 1

        if(flags==30):#当有三十组数据时进行历史比较li
            flag = 0
            with open(filename, 'r') as file_object:
                for line in file_object:
                    battery = json.loads(line)
                    # print(battery)
                    if flag == 0:
                        df2 = pd.DataFrame([battery])
                        flag += 1
                    else:
                        df2 = df2.append(pd.DataFrame([battery]))
            flags =0
            df_new = df2.reset_index(drop=True)
            num = df2.shape[0]#一共有多少行
             #各个模块的平均健康程度

            # average = []
            for modid in range(df_new.shape[1]):#进行检测模块是不是出故障,df_new.shape[1]表示列,i,表示第列label为i的一列
                modid = str(modid)
                average = df_new[modid].sum()  # 求每一个模块的平均值健康程度
                average = average / num
                if average >= 0.95:
                    #modid健康
                elif average > 0.85:
                    #modid亚健康
                else：
                #modid不健康







        rate.sleep()
                
if __name__ =='__main__' :
    try:
        module_detect()
    except rospy.ROSInterruptException:
        pass
