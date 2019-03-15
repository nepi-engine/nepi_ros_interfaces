# This message is used to create sys_status.json files for the NEPI-Bot.
# It may be possible later to integrate the contents of this message with
# SystemStatus.msg.

# These fields are taken directly from the NEPI-Bot ICD.
time timestamp
string serial_num
string sw_rev
time navsat_fix_time
float32 latitude
float32 longitude
float32 heading
float32 batt_charge
float32 bus_voltage
float32 temperature
uint32 trig_wake_count
uint8 wake_event_type
int8 wake_event_id
uint32 task_index
uint32 trig_cfg_index
uint32 rule_cfg_index
uint32 sensor_cfg_index
uint32 node_cfg_index
uint32 geofence_cfg_index
uint32 state_flags
