# wholerig
submodules to test multiple arms

git clone this repo with --recursive option, 

PAY ATTENTION: if you don't install the dependencies, the code won't work!

rosdep install -y --from-paths src --ignore-src --rosdistro $ROS_DISTRO

P.S.: alright, there was a problem here installing mongodb since rosdep was outdated. I suppose the easiest fix was defining python-pymongo for all versions of ubuntu, but they didn't go with this here. until the merge request is accepted, please use https://github.com/frederico-klein/rosdistro and follow the instructions here: http://docs.ros.org/independent/api/rosdep/html/contributing_rules.html to change from where you get your upstream packages from rosdep update. 

now catkin_make
