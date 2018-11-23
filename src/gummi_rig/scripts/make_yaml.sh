#!/bin/bash

## Creates YAML files
echo "** Creating combine YAML files from gummi_ee and gummi_base."

. ../../devel/setup.bash

#echo ${PWD}
#echo -e "\n"
#env | grep fre
#echo -e "\n"
# sleep 1m

#export SRCPATH=`echo -e "${ROS_PACKAGE_PATH//:/$'\n'}" | grep /src`
export GUMMI_RIGHTBASEPATH=${PWD}/../gummi_rightbase_${ROS_GUMMI_RIGHTBASE}
export GUMMI_RIGHTEEPATH=${PWD}/../gummi_rightee_${ROS_GUMMI_RIGHTEE}
export GUMMI_LEFTBASEPATH=${PWD}/../gummi_leftbase_${ROS_GUMMI_LEFTBASE}
export GUMMI_LEFTEEPATH=${PWD}/../gummi_leftee_${ROS_GUMMI_LEFTEE}

export GUMMI_RIG=${PWD}/../gummi_rig

# LIST OF GENERATED YAML FILES AS:
#
# ./scripts/yaml_gen_.py <base.yaml> <ee.yaml> <combined.yaml>

./scripts/yaml_gen_.py ${GUMMI_RIGHTBASEPATH}/config/joint_limits.yaml ${GUMMI_LEFTBASEPATH}/config/joint_limits.yaml ${GUMMI_RIG}/config/joint_limits.yaml
./scripts/yaml_gen_.py ${GUMMI_RIGHTBASEPATH}/config/kinematics.yaml ${GUMMI_LEFTBASEPATH}/config/kinematics.yaml ${GUMMI_RIG}/config/kinematics.yaml
./scripts/yaml_gen_.py ${GUMMI_RIGHTBASEPATH}/config/ompl_planning.yaml ${GUMMI_LEFTBASEPATH}/config/ompl_planning.yaml ${GUMMI_RIG}/config/ompl_planning.yaml
#./scripts/yaml_gen_.py ${GUMMI_RIGHTBASEPATH}/config/fake_controllers.yaml ${GUMMI_LEFTBASEPATH}/config/fake_controllers.yaml ${GUMMI_RIG}/config/fake_controllers.yaml
#./scripts/yaml_gen_.py ${GUMMI_RIGHTBASEPATH}/config/controllers.yaml ${GUMMI_LEFTBASEPATH}/config/controllers.yaml ${GUMMI_RIG}/config/controllers.yaml
