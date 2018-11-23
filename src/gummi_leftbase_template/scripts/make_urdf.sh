#!/bin/bash

## Creates URDF file from gummi_description_base.urdf.xacro and gummi_description_ee.urdf.xacro
# the paths are going to look bad, but that is how I got this working. If you
# want to fiddle with cmake variables and pass the left working directories,
# please do and update all these paths.
# UPDATE: Added part to generate SRDF file as well. Probably should rename separate these files

echo "** Creating URDF file from gummi_description_base.urdf.xacro and gummi_description_ee.urdf.xacro."

. ../../devel/setup.bash

export GUMMI_LEFTBASEPATH=${PWD}/../gummi_leftbase_${ROS_GUMMI_LEFTBASE}
export GUMMI_LEFTEEPATH=${PWD}/../gummi_leftee_${ROS_GUMMI_LEFTEE}
rosrun xacro xacro --inorder ${GUMMI_LEFTBASEPATH}/xacro/gummi_description.urdf.xacro > ${GUMMI_LEFTBASEPATH}/urdf/gummi_description.urdf

echo "** Creating SRDF file from gummi_base.srdf.xacro and gummi_ee.srdf.xacro."

rosrun xacro xacro --inorder ${GUMMI_LEFTBASEPATH}/xacro/gummi.srdf.xacro > ${GUMMI_LEFTBASEPATH}/config/gummi.srdf
