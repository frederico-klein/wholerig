# wholerig
submodules to test multiple arms

git clone this repo with --recursive option, 

rename it to src

PAY ATTENTION: if you don't install the dependencies, the code won't work!

rosdep install -y --from-paths . --ignore-src --rosdistro $ROS_DISTRO

now catkin_make
