# This message details pointcloud processing status

# Range clipping on pointcloud enabled
bool range_clip_enabled

# Range limits in meters for the clipping
RangeWindow range_clip_meters

# Clip bounding box topic
string clip_target_topic

# Voxel Downsample Size, val 0 skips process
float32 voxel_downsample_size_m

# Uniform Downsample Size, val 0 skips process
int32 uniform_downsample_points

# Outlier Removal K Points, val 0 skips process
int32 outlier_k_points

# String list of available 3d frames that the processed pointcloud is transformed into
string available_3d_frames

# The transfer frame into which the processed pointcloud is published and saved in
string frame_3d


