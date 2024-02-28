# This message provides the Numurus RBX status, as defined in the RBX interface standard. It is generic to
# all RBX sensor nodes in the system.

# Device identifiers
string serial_num
string hw_version
string sw_version

# In standby or not
bool standby

# Commanded controls for AxisEnable fields set to False will be ignored
AxisControls control_support

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

# Move spee (0.0-1.0 percent of max translational speed for translational command control movements)
float32 move_speed

# Rotation speed (0.0-1.0 percent of max translational speed for rotational command control movements)
float32 rotate_speed

# Abs error bounds for command controls
RBXErrorBounds error_bounds

# Signed error values for current control process 
# Updated during active command control action, reset after completion or timeout
RBXGotoErrors errors_current

# Signed error values for previous control process 
# Updated after completion or timeout of last command control action
RBXGotoErrors errors_prev

# Timeout condition of last command control (did not meet movement error bounds before cmd_timeout time)
# Updated after ready status goes from busy to ready value
bool cmd_timeout

# Success or failure of last command control (met movement error bounds before cmd_timeout time)
# Updated after ready status goes from busy to ready value
bool cmd_success

# Base image topic for status overlay image. Blank string indicates black image background
string status_image_source
