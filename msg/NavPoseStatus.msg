# This message contains status information for the navigation/positioning
# subsystem

# Current topic for the nav_sat fix inputs
string nav_sat_fix_topic

# Sys. clock time when most recent nav sat fix received
time last_nav_sat_fix

# Rate (Hz) of nav-sat (e.g., GPS) updates
float32 nav_sat_fix_rate

# Current topic for the orientation (pose, twist) inputs
string orientation_topic

# Sys. clock time when most recent orientation update received
time last_orientation

# Rate (Hz) of odometry updates
float32 orientation_rate

# Current topic for the heading input
string heading_topic

# Sys. clock time when most recent odometry update received
time last_heading

# Rate (Hz) of heading updates
float32 heading_rate

# Transform from src to output (includes names of source and target frame ID)
geometry_msgs/TransformStamped transform

# Rotational adjsutment applied just to heading
float32 heading_offset

# GPS clock sync. is enabled
bool gps_clock_sync_enabled
