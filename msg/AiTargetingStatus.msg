bool classifier_running

string classifier_name
string classifier_state

bool use_live_image
string image_topic
bool has_depth_map
string depth_map_topic
bool has_pointcloud
string pointcloud_topic

string[] available_classes_list
string[] selected_classes_list
float32[] selected_classes_depth_list

string[] output_image_options_list
string selected_output_image

float32 image_fov_vert_degs 
float32 image_fov_horz_degs 

int32 target_box_size_percent 

float32 default_target_depth_m 
float32 target_min_points 
float32 target_min_px_ratio
float32 target_min_dist_m
float32 target_age_filter 

# Input Transform for data from image source's native frame to the nepi_center_frame 
nepi_ros_interfaces/Frame3DTransform frame_3d_transform

