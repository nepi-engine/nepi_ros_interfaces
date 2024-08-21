# This message provides the Numurus LSX status, as defined in the LSX interface standard. It is generic to
# all LSX sensor nodes in the system.

# Device identifiers
string serial_num
string hw_version
string sw_version

bool on_state

# In standby or not
bool standby

# Luminance intensity (0.0-1.0 percent)
float32 intensity

# Strobe enable
bool strobe_enable

# Device reported temp in degrees C
uint8 temp_c	

