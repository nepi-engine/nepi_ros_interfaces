# This message provides the Numurus IDX status, as defined in the IDX interface standard. It is generic to
# all IDX sensor nodes in the system. The various control values reported in this message are deliberately
# generic - each IDX sensor defines what they mean with regards to its specific data formats. They provide
# a minimal set of tweaks to reduce complexity for operators.

# Device Identifiers
string serial_num
string hw_version
string sw_version

# In standby or not
bool standby

# The resolution_mode field indicates the generic resolution setting for the device
uint8 resolution_mode

# The frame_rate_mode field indicates the generic frame rate setting for the device
uint8 framerate_mode


# Enable or Disable IDX controls
bool controls_enable

# Enable or Disable IDX auto adjusting brightness, contrast, and threshold control
bool auto_adjust

# The contrast field indicates the 0.0 - 1.0 contrast setting of the device
float32 contrast

# The brightness field indicates the 0.0 - 1.0 brightness setting of the device
float32 brightness

# The thresholding field indicates the 0.0 - 1.0 thresholding setting of the device
float32 thresholding

# The range_window field provides the start and stop range as currently configured for the device
# Each range is expressed as a multiplier on the sensor's max range (0.0 - 1.0)
RangeWindow range_window

# Following provide the range limits in meters for the device (if available)
float32 min_range_m
float32 max_range_m

# The transfer frame into which 3D data (pointclouds) are transformed for the pointcloud data topic
string frame_3d

# NEPI Settings State Message
# Settings are provided as a string of a string list 
# String list format ["setting_1_name_string", "type_string", "value_as_string", "setting_2_name_string", ...)
# supported type_strings => "Descrite", "String", "Bool", "Int", "Float"
# boolean and number value strings can be converted to usable values using python's eval function => eval(value_string)
# example python settings string:
# cap_settings_list = ["TestDiscrete","Discrete","Option_1",
#  			"TestString","String","InitString",
#  			"TestBool","Bool","False",
#  			"TestInt","Int","5",
#  			"TestFloat","Float","3.5"]
#
# Convert string list to python rospy String msg => cap_settings_msg = str(cap_settings_list)
# Convert String msg to string list => cap_settings_list = eval(cap_settings_msg.data)
#
# NOTE: Settings state update topics accept a similiar string of string lists allowing updating one or all settings with a a single update message
#
# NEPI's nepi_ros.py module provides a number of helper functions for working with NEPI Settings' msg and lists
#
#
string settings_states

