# This message details pointcloud processing status

# Range clipping on pointcloud enabled
bool clip_enabled
string[] clip_options
string clip_selection

# Range limits in meters for the clipping
RangeWindow clip_meters

# Clip bounding box topic
string clip_target_topic

# Voxel Downsample Size, val 0 skips process
float32 voxel_downsample_size_m

# Uniform Downsample Size, val 0 skips process
int32 uniform_downsample_points

# Outlier Removal K Points, val 0 skips process
int32 outlier_k_points



