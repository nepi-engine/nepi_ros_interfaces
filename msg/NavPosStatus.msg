# This message contains status information for the navigation/positioning
# subsystem

# Sys. clock time when most recent nav sat fix received
time last_nav_sat_fix

# Rate (Hz) of nav-sat (e.g., GPS) updates
float32 nav_sat_fix_rate

# Sys. clock time when most recent IMU update received
time last_imu

# Rate (Hz) of IMU updates
float32 imu_rate

# Transform from src to output (includes names of source and target frame ID)
geometry_msgs/TransformStamped transform
