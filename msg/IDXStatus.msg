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

# The contrast field indicates the 0.0 - 1.0 contrast setting of the device
float32 contrast

# The brightness field indicates the 0.0 - 1.0 brightness setting of the device
float32 brightness

# The thresholding field indicates the 0.0 - 1.0 thresholding setting of the device
float32 thresholding

# The range_window field provides the start and stop range as currently configured for the device
# Each range is expressed as a multiplier on the sensor's max range (0.0 - 1.0)
RangeWindow range_window

# The transfer frame into which 3D data (pointclouds) are transformed for the pointcloud data topic
string frame_3d

