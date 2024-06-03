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

# The zoom field indicates the 0.0 - 1.0 zoom ratio for pointcloud image setting of the device
float32 zoom

# The roate field indicates the 0.0 - 1.0 rotate ratio for pointcloud image setting of the device
float32 rotate

# The transfer frame into which 3D data (pointclouds) are transformed for the pointcloud data topic
string frame_3d

# NEPI Settings Message
# Settings are provided as a string of a string list 
# Setting msg format = str(["setting_1_name_string", "type_string", "value_as_string", "setting_2_name_string", ...])
# supported type_strings => "Descrite", "String", "Bool", "Int", "Float"
# example python settings string:
# SETTINGS = ["TestDiscrete","Discrete","Option_1",
#  			"TestString","String","InitString",
#  			"TestBool","Bool","False",
#  			"TestInt","Int","5",
#  			"TestFloat","Float","3.5"]
# Use eval(settings_msg) to convert to list of settings strings
# NEPI's nepi_nex.py module provides a number of helper functions
string settings

# Save Data Config is a string of a list of node available data products and their current configured save rate.
# Save Data Config msg format = str(["data_product_name", "##", "data_product_name", "##", ...])
# Save rates = 0 will not save when saving is enabled
string save_data_config

# Save Data Prefix added to data save files.  use "/" to add folder
# exmples "test_data","test_folder/", "test_folder/test_data"
string save_data_prefix

# Save Data Enabled is enabled if sensor node Saving is enabled
bool save_data_enabled

# Save Data Nav Enabled is enabled if navpose node Saving is enabled
bool save_data_nav_enabled

