# This message provides the general system status independent of specific sensors and data
# It includes administrative status, warnings, internal temperatures, etc.

# Interpretation of many of the fields is provided by the SystemDefs message type that can
# be optained through the system_defs service.

# Current system time (ROS time)
builtin_interfaces/Time sys_time

# Current temperature(s) (C)
float32[] temperatures

# Current disk usage (MB)
float32 disk_usage

# Current storage rate (MB/s)
float32 storage_rate

# Indicates that the system is saving ALL data
bool save_all_enabled

# Generic info strings for U/I display, logging, etc.
StampedString[] info_strings

# Warning flags
WarningFlags warnings
