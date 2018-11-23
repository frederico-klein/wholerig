#!/bin/bash

## Creates URDF file from gummi_description_base.urdf.xacro and gummi_description_ee.urdf.xacro
# the paths are going to look bad, but that is how I got this working. If you
# want to fiddle with cmake variables and pass the right working directories,
# please do and update all these paths.
# UPDATE: Added part to generate SRDF file as well. Probably should rename separate these files

echo "** Creating URDF file from gummi_description_base.urdf.xacro and gummi_description_ee.urdf.xacro."

. ../../devel/setup.bash

export GUMMI_RIGHTBASEPATH=${PWD}/../gummi_rightbase_${ROS_GUMMI_RIGHTBASE}
export GUMMI_RIGHTEEPATH=${PWD}/../gummi_rightee_${ROS_GUMMI_RIGHTEE}
rosrun xacro xacro --inorder ${GUMMI_RIGHTBASEPATH}/xacro/gummi_description.urdf.xacro > ${GUMMI_RIGHTBASEPATH}/urdf/gummi_description.urdf

echo "** Creating SRDF file from gummi_base.srdf.xacro and gummi_ee.srdf.xacro."

rosrun xacro xacro --inorder ${GUMMI_RIGHTBASEPATH}/xacro/gummi.srdf.xacro > ${GUMMI_RIGHTBASEPATH}/config/gummi.srdf
