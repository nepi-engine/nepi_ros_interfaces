# Simple container for a warning array. 
# Definitions and human readable strings are included in the definition

# Array of flags - length must stay coordinated with definitions below
bool[3] flags

### Bit Definitions ###
uint32 DISK_FULL				=	0
string DISK_FULL_STRING="Data storage space low"

uint32 HIGH_TEMPERATURE			=	1
string HIGH_TEMPERATURE_STRING="High temperature warning"

uint32 CRITICAL_TEMPERATURE		=	2
string CRITICAL_TEMPERATURE_STRING="Critical temperature error"
