#!/usr/bin/env python3
#coding=utf-8

import rospy
from std_msgs.msg import String
from qq_msgs.msg import Carry

if __name__== "__main__":
    rospy.init_node("chao_node")
    rospy.logwarn("节点启动成功")

    pub = rospy.Publisher("kaiheiqun",Carry,queue_size=10)
    
    rate = rospy.Rate(10)

    while not rospy.is_shutdown():
        rospy.loginfo("开始刷屏")
        msg = Carry()
        msg.grate = "王者"
        msg.star = 50
        msg.data = "国服带飞"
        pub.publish(msg)
        rate.sleep()