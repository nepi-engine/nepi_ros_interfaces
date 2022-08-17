# This message provides the Numurus 3DX status, as defined in the 3DX interface standard. It is generic to
# all node_3dxtypes in the system. The various control values reported in this message are deliberately
# generic - each node_3dxdefines what they mean with regards to its specific data formats. They provide
# a minimal set of tweaks to reduce complexity for operators.

# The display_name field provides a user-configurable name for GUI display, file names, etc.
string display_name

# The pause_enable field provides the current run/pause state of the node_3dx
bool pause_enable

# The simulate_data field indicates whether data is currently being simulated in software, or generated
# by an actual sensor
bool simulate_data

# The range field provides the min and max range in that order, as currently configured for the node_3dx
# Each range is expressed as a decimal multiplier on the sensor's max range (0.0 - 1.0)
Range3DX range

# The angle field provides the angular offset and total angle (in) that order, as currently configured for
# the node_3dx. These are each expressed as a decimal multiplier on the sensor's native angular range
Angle3DX angle

# The resolution_settings field indicates whether the generic resolution adjustment is in auto or
# manual mode, and the (0.0 - 1.0) value to apply
AutoManualSelection3DX resolution_settings

# The gain_settings field indicates whether the generic gain is adjustable, and the (0.0 - 1.0) value
# to apply.
AutoManualSelection3DX gain_settings

# The filter_settings field indicates whether the generic filter is adjustable, and the (0.0 - 1.0) value
# to apply.
AutoManualSelection3DX filter_settings

# The enhancement_settings field indicates whether the generic enhancement is adjustable, and the (0.0 - 1.0) value
# to apply.
AutoManualSelection3DX enhancement_settings

# The intensity_settings field indicates whether the generic intensity is adjustable, and the (0.0 - 1.0) value
# to apply.
AutoManualSelection3DX intensity_settings

# The transfer frame into which 3D data (pointclouds) are transformed for the pointcloud_3dx topic
string frame_3d

# Whether or not stitched clouds are enabled on this sensor
bool stitched_cloud_enabled

# Array of flags - length must stay coordinated with definitions below
bool[3] flags

### Flags Index Definitions ###
uint32 DEVICE_STARTING          =0
uint32 STARTUP_ERROR				    =1
uint32 DATA_ACQUISITION_ERROR   =2
uint32 DATA_PROCESSING_ERROR    =3
