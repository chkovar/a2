#!/bin/sh

roslaunch charlie_code zed.launch

sleep 15

roslaunch rtabmap_ros rgbd_mapping.launch rtabmap_args:="--delete_db_on_start" depth_registered_topic:=/camera/depth/image_rect_color rviz:=true rtabmapviz:=false
