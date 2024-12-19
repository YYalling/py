#!/usr/bin/env python3
# coding=utf-8

import rospy
from sensor_msgs.msg import LaserScan#设置激光雷达数据
from geometry_msgs.msg import Twist

count = 0

def LidarCallback(msg):
    global vel_pub#将vel_pub设置成全局变量
    global count 
    dist = msg.ranges[180]
    rospy.loginfo("前方测距 ranges[180] = %f 米", dist)

    if count > 0:
        count = count - 1
        return
     
    vel_cmd = Twist()
    if dist < 1.5:
        vel_cmd.angular.z = 0.3
        count = 50
    else:
        vel_cmd.linear.x = 0.1
    vel_pub.publish(vel_cmd)    

if __name__=="__main__":
    rospy.init_node("lidar_node")#初始化节点
    lidar_sub = rospy.Subscriber("/scan",LaserScan,LidarCallback)
    vel_pub = rospy.Publisher("/cmd_vel", Twist,queue_size=10)
    rospy.spin()#保持节点不关闭