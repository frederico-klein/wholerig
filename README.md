# wholerig
submodules to test multiple arms

git clone this repo with --recursive option, 

PAY ATTENTION: if you don't install the dependencies, the code won't work!

rosdep install -y --from-paths src --ignore-src --rosdistro $ROS_DISTRO

P.S.: alright, there was a problem here installing mongodb since rosdep was outdated. I suppose the easiest fix was defining python-pymongo for all versions of ubuntu, but they didn't go with this here. until the merge request is accepted, please use https://github.com/frederico-klein/rosdistro and follow the instructions here: http://docs.ros.org/independent/api/rosdep/html/contributing_rules.html to change from where you get your upstream packages from rosdep update. 

Or much more easily, install dependencies yourself with apt install mongodb-dev. 

now catkin_make

# connecting to mongodb

run the default warehouse with 

    roslaunch gummi_moveit default_warehouse_db.launch

You should be able to connect by running the steps above. If things fail, you might not have the db path directory set (either /data/db or /tmp/db, those should be created if needed) or another instance of mongo might be running with the incorrect port (either set up the right port - the default one is 27017) or kill mongod and restart it with the default_warehouse_db.launch file. 
