# This message contains status information for the navpose publisher 

std_msgs/Header header
float32 set_pub_rate
string set_3d_frame
string set_alt_frame

float32 geoid_height_meters
float32 heading_deg

# Orientation Degrees in selected 3d frame (roll,pitch,yaw)
geometry_msgs/Vector3 orientation_rpy_degs

# Relative Position Meters in selected 3d frame (x,y,z) with x forward, y right/left, and z up/down
geometry_msgs/Vector3 position_xyz_meters

# Global Location in set altitude frame (lat,long,alt) with alt in meters
geometry_msgs/Vector3 location_geo


