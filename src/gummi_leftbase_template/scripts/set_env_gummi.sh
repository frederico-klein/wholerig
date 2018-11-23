#!/bin/bash

# ATTENTION:This is a workaround to add enviroment variables to devel/setup.bash
# while catkin_make is run so as to parametrize launch files from gummi_leftbase_XXX
# gummi_leftee_YYY and gummi_interface. If anything changes in package structure or
# the order in which catkin_make executes, this might break.

export ROS_GUMMI_LEFTBASE=template
