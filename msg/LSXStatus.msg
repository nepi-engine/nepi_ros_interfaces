# This message provides the Numurus LSX status, as defined in the LSX interface standard. It is generic to
# all LSX sensor nodes in the system.

# Device Identifiers
string device_name
string identifier
string serial_num
string hw_version
string sw_version

# user updatable device name
string user_name

bool standby_state
bool on_off_state
bool blink_state
bool strobe_state


# Blink Interval Secs
float32 blink_interval

# Luminance intensity (0.0-1.0 percent)
float32 intensity_ratio

# Color Setting
string color_setting

# Kelvin Setting
int32 kelvin_setting

# Device reported temp in degrees C
uint8 temp_c	

# Device reported power draw in Watts
float32 power_w

