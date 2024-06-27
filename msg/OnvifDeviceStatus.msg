# This message type represents the status of an ONVIF device suitable for use by
# NEPI ONVIF Manager node

# Unique device identifier
string uuid

string device_name

# Device reported manufacturer info
string manufacturer
string model
string firmware_version
string hardware_id

# Network values
string host
uint32 port

# ONVIF connectability check status
bool connectable

# Node values
bool idx_node_running
bool ptx_node_running
