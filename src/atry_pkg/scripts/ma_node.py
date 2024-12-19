#!/usr/bin/env python3
#coding=utf-8

import rospy
from std_msgs.msg import String
from qq_msgs.msg import Carry

def chao_callback(msg):
    rospy.logwarn(msg.grate)
    rospy.logwarn(str(msg.star)+"星")
    rospy.loginfo(msg.data)

def yao_callback(msg):
    rospy.logwarn(msg.data)


if __name__== "__main__":
    rospy.init_node("ma_node")

    sub = rospy.Subscriber("kaiheiqun",Carry,chao_callback,queue_size=10)
    sub_2 = rospy.Subscriber("qiudaiqun",String,yao_callback,queue_size=10)

    rospy.spin()
