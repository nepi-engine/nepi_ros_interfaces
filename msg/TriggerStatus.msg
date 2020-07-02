# This message provides the state and status of a specific trigger value

# Value for the input s/w trigger (bit mask) in question
uint32 trig_val

# Automatic rate (Hz) requested for this trigger. 0 indicates auto trigger not enabled
float32 auto_rate

# Actual rate of this trigger value
float32 achieved_rate

# Assigned H/W Input Trigger Value
uint32 hw_in_trig_val

# Rate of H/W Input Triggers
float32 hw_in_trig_rate

# Most recent execution time for this trigger. 0 indicates the trigger has never fired.
time last_execution_time