# This message provides the Numurus RBX Device Status Information

# Connected to robot 
bool connected

# Device identifiers
string device_name
string serial_num
string hw_version
string sw_version

# Current nav_pose info
float32 current_lat
float32 current_long
float32 current_altitude
float32 current_heading
float32 current_roll
float32 current_pitch
float32 current_yaw

# In standby or not
bool standby

# Index to enumerated state options
uint8 state

# Index to enumerated mode options
uint8 mode

# Human readable description of any current control process, set to string “None” if no active process
string process_current

# Human readable description of last control process, set to string “None” if no previous process has happened
string process_last

# Ready/Busy, used to check on ready state, then check for busy on command control action, 
# then check for ready for completion of action
bool ready

# Battery charge state (0.0-1.0 percent)
float32 battery	

# Abs error bounds for command controls
RBXErrorBounds error_bounds

# Signed error values for current control process 
# Updated during active command control action, reset after completion or timeout
RBXGotoErrors errors_current

# Signed error values for previous control process 
# Updated after completion or timeout of last command control action
RBXGotoErrors errors_prev

# Timeout time for goto commands
float32 cmd_timeout

# Success or failure of last command control (met movement error bounds before cmd_timeout time)
# Updated after ready status goes from busy to ready value
bool cmd_success

# image topic to associate with driver. Blank string indicates black image background
string image_source

# Overlay status message over image
bool image_status_overlay

# Manual and Autonomous Control Ready States
bool in_manual_control_mode
bool in_autononous_control_mode

# Current Motor Controls string for Manual motor control mode. Returns a string "[['motor_index','motor_speed_ratio'],...]
string current_motor_control_settings


# Last error message
string last_error_message
