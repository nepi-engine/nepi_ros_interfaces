# This message type represents the configuration of an ONVIF device suitable for use by
# NEPI ONVIF Manager node

# Unique device identifier
string uuid

# Login Credentials
string username
string password

# Node Basename (_camera and _pan_tilt will be appended as necessary)
string node_base_name

# Enable flags
bool idx_enabled
bool ptx_enabled

