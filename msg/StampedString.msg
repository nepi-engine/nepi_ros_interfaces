# Simple message to provide timestamped log strings with simple priority/criticality indication

# Timestamp associated with the string
time timestamp

# Priority/Criticality - downstream subscribers may use this as a filter, color indicator, etc.
uint8 priority

# Message contents
string payload

# Priority/Criticality levels
uint8 NORMAL=0
uint8 ELEVATED=1
uint8 HIGH=2