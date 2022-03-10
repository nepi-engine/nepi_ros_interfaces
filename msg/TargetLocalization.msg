# This message provides geometric information for a single localized target

# Target Identification
int32 id
string name
float64 confidence

# 3D position
float64 range_m
float64 azimuth_deg
float64 elevation_deg
float64[9] position_covariance

# Bounding box (size and rotation)
float64 box_height_m
float64 box_width_m
float64 box_rotation_deg
float64[9] box_covariance
