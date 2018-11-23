#!/bin/bash

## Creates URDF file from gummi_description_base.urdf.xacro and gummi_description_ee.urdf.xacro
# the paths are going to look bad, but that is how I got this working. If you
# want to fiddle with cmake variables and pass the right working directories,
# please do and update all these paths.
# UPDATE: Added part to generate SRDF file as well. Probably should rename separate these files



. ../../devel/setup.bash

export GUMMI_RIGHTBASEPATH=${PWD}/../gummi_rightbase_${ROS_GUMMI_RIGHTBASE}
export GUMMI_RIGHTEEPATH=${PWD}/../gummi_rightee_${ROS_GUMMI_RIGHTEE}
export GUMMI_LEFTBASEPATH=${PWD}/../gummi_leftbase_${ROS_GUMMI_LEFTBASE}
export GUMMI_LEFTEEPATH=${PWD}/../gummi_leftee_${ROS_GUMMI_LEFTEE}

export GUMMI_RIG=${PWD}/../gummi_rig


echo "** Creating rig URDF file from all arms."

rosrun xacro xacro --inorder ${GUMMI_RIG}/xacro/gummi_rig.urdf.xacro > ${GUMMI_RIG}/config/gummi.urdf

echo "** Creating rig SRDF file from all arms."

rosrun xacro xacro --inorder ${GUMMI_RIG}/xacro/gummi_rig.srdf.xacro > ${GUMMI_RIG}/config/gummi.srdf
