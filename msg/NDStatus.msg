# This message provides the Numurus ND status, as defined in the ND interface standard. It is generic to
# all nd_node types in the system. The various control values reported in this message are deliberately
# generic - each nd_node defines what they mean with regards to its specific data formats. They provide
# a minimal set of tweaks to reduce complexity for operators.

# The display_name field provides a user-configurable name for GUI display, file names, etc.
string display_name

# The save_data_dir field provides the current directory to which ND data products are saved
string save_data_dir

# The save_data field indicates whether captured data is currently being saved in continuous fashion. The
# save-data-next control does not affect this field
NDSaveData save_data

# The pause_enable field provides the current run/pause state of the nd_node
bool pause_enable

# The simulate_data field indicates whether data is currently being simulated in software, or generated 
# by an actual sensor
bool simulate_data

# The range field provides the min and max range in that order, as currently configured for the nd_node
# Each range is expressed as a decimal multiplier on the sensor's max range (0.0 - 1.0)
NDRange range

# The angle field provides the angular offset and total angle (in) that order, as currently configured for 
# the nd_node. These are each expressed as a decimal multiplier on the sensor's native angular range
NDAngle angle

# The resolution_settings field indicates whether the generic resolution adjustment is in auto or 
# manual mode, and the (0.0 - 1.0) value to apply
NDAutoManualSelection resolution_settings

# The gain_settings field indicates whether the generic gain is adjustable, and the (0.0 - 1.0) value 
# to apply.
NDAutoManualSelection gain_settings

# The filter_settings field indicates whether the generic filter is adjustable, and the (0.0 - 1.0) value 
# to apply.
NDAutoManualSelection filter_settings


