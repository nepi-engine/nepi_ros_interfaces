# This message provides static info about the running system.
# It includes identifier strings userful to U/Is and factory-fixed settings.
# It can be queried once at the start of a new U/I run and used in conjunction
# with the periodic SystemStatus message to provide human-readable attributes
# for the dynamic status elements

# Firmware version string
string firmware_version

# Device serial number
string device_sn

# Array of names that correspond to values in SystemStatus.temperatures
string[] temperature_sensor_names

# Temperature limits at which thermal throttling begins (C)
float32[] warning_temps

# Temperature limits at which system ceases data collection (C)
float32[] critical_temps

# Total data storage capacity (MB)
float32 disk_capacity
