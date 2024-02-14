# This message provides the Numurus LSX status, as defined in the LSX interface standard. It is generic to
# all LSX sensor nodes in the system.

# Device identifiers
string serial_num
string hw_version
string sw_version

# In standby or not
bool standby

# Luminance intensity (0.0-1.0 percent)
float32 intensity

# Strobe rate
float32 strobe_rate_hz

# Avg strobe rate over last 60 seconds
float32 avg_strobe_rate_hz

# Average temp in degrees C over last 60 seconds
uint8 avg_temp_c

# Average power usage in watts over last 60 seconds
float32 avg_power_w	

