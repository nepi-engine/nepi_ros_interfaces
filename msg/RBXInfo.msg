# This message provides the Numurus RBX Device Status Information

# Connected to robot 
bool connected

# Device identifiers
string device_name
string serial_num
string hw_version
string sw_version

# In standby or not
bool standby

# Index to enumerated state options
uint8 state

# Index to enumerated mode options
uint8 mode

# Abs error bounds for command controls
RBXErrorBounds error_bounds

# Timeout time for goto commands
float32 cmd_timeout

# image topic to associate with driver. Blank string indicates black image background
string image_source

# Overlay status message over image
bool image_status_overlay

# Current Motor Controls string for Manual motor control mode. Returns a string "[['motor_index','motor_speed_ratio'],...]
string current_motor_control_settings


