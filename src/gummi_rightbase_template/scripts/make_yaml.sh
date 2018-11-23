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
export SRCPATH=${PWD}/..
export GUMMIBASEPATH=${SRCPATH}/gummi_rightbase_${ROS_GUMMI_RIGHTBASE}
export GUMMIEEPATH=${SRCPATH}/gummi_rightee_${ROS_GUMMI_RIGHTEE}

# LIST OF GENERATED YAML FILES AS:
#
# ./scripts/yaml_gen_.py <base.yaml> <ee.yaml> <combined.yaml>

./scripts/yaml_gen_.py ${GUMMIBASEPATH}/config/gummi_base.yaml ${GUMMIEEPATH}/config/gummi_ee.yaml ${GUMMIBASEPATH}/config/gummi.yaml
