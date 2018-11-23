# wholerig
Submodules version of gummi-moveit, rig, bases and end effectors to test multiple arms.

## Set-up

Create a catkin workspace (no need to create src, this is in the package)

    mkdir catkin_ws && cd catkin_ws

git clone this repo with --recursive option:

    git clone --recursive https://github.com/frederico-klein/wholerig.git

PAY ATTENTION: if you don't install the dependencies, the code won't work! (change $ROS_DISTRO for your ros distribution name if you haven't sourced ros setup.bash file, i. e. kinetic, lunar, melodic, etc.)

    rosdep install -y --from-paths src --ignore-src --rosdistro $ROS_DISTRO

now 

    catkin_make
