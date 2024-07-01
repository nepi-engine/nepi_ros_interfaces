# This message details point cloud rendering status

# Subscribed pointcloud topics
string pointcloud_topics

# Following provide the set range limits in meters for the clipping ratio 
RangeWindow min_max_range_m

# The range_window field provides the start and stop range as currently configured for the device
# Each range is expressed as a multiplier on the sensor's max range (0.0 - 1.0)
RangeWindow clip_range_ratio

# Zoom Ratio 0.0 - 1.0
float32 zoom_ratio

# Rotate Ratio 0.0 - 1.0
float32 rotate_ratio

# Tilt Ratio 0.0 - 1.0
float32 tilt_ratio

# Camera View in meters (x,y,z)
geometry_msgs/Vector3 camera_view

# Camera Position in meters (x,y,z)
geometry_msgs/Vector3 camera_position

# Camera Rotation -1,0,1 options for (x,y,z)
geometry_msgs/Vector3 camera_rotation

# The transfer frame into which 3D data (pointclouds) are transformed for the pointcloud data topic
string frame_3d
