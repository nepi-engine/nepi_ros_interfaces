# This message details a pointcloud frame transform message
# Transforms are from source's native frame to the nepi_center_frame 
# Transforms use the following conventions:
# 1)Transforms are positive FROM the Device Frame of Reference TO the External INS Frame of Reference
# 2) Transformation order is X, Y, then Z in meters
# 3) Rotation order is ∆X, then ∆Y, then ∆Z in degrees (right-handed rotations) 
#    where the rotation axes are fixed to the Device's Frame of Reference (DFoR) throughout the rotation sequence
# 4) Heading is optional offset to NEPI nav_pose configured solution output

# X,Y,Z translation transform vector in meters
geometry_msgs/Vector3 translate_vector

# roll,pitch,yaw rotation transform vector in degrees
geometry_msgs/Vector3 rotate_vector

# heading transform in degrees
float32 heading_offset

