#!/usr/bin/env python3
#coding=utf-8

import rospy
from std_msgs.msg import String

if __name__== "__main__":
    rospy.init_node("yao_node")
    rospy.logwarn("节点启动成功")

    pub = rospy.Publisher("qiudaiqun",String,queue_size=10)
    
    rate = rospy.Rate(10)

    while not rospy.is_shutdown():
        rospy.loginfo("开始刷屏")
        msg = String()
        msg.data = "求求带我"
        pub.publish(msg)
        rate.sleep()