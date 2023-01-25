#!/bin/bash

lus2c tp3_robot.lus main_robot
scp main_robot.c robot@169.254.184.121:ev3dev-c/eg/robot_isae/.
scp main_robot.h robot@169.254.184.121:ev3dev-c/eg/robot_isae/.
scp main_robot_ext.h robot@169.254.184.121:ev3dev-c/eg/robot_isae/.