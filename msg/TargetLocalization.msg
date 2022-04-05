# This message provides geometric information for a single localized target

# Constants to indicate unset fields
int32 INT_FIELD_UNSET=-1
float64 FLOAT_FIELD_UNSET=-999.0

# Target Classification
int32 type
string name
float64 type_confidence

# Target Tracking
int32 tracking_id
float64 tracking_confidence

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
