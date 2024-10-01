# This message details pointcloud rendering status

# Standard Image Size Opions string list
string standard_image_sizes

# Render Image Size
int32 image_width
int32 image_height

# Range limits in meters for the clipping
RangeWindow range_min_max_m

# The range_window field provides the start and stop range as currently configured for the device
# Each range is expressed as a multiplier on the sensor's max range (0.0 - 1.0)
RangeWindow range_clip_ratios

# Zoom Ratio 0.0 - 1.0
float32 zoom_ratio

# Rotate Ratio 0.0 - 1.0
float32 rotate_ratio

# Tilt Ratio 0.0 - 1.0
float32 tilt_ratio

# Camera Field of View
int32 camera_fov

# Camera View in meters (x,y,z)
geometry_msgs/Vector3 camera_view

# Camera Position in meters (x,y,z)
geometry_msgs/Vector3 camera_position

# Camera Rotation -1,0,1 options for (x,y,z)
geometry_msgs/Vector3 camera_rotation

# Render Enable
bool render_enable
