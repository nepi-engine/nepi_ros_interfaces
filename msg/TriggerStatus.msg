# This message provides the state and status of a specific trigger value

# Value for the input s/w trigger (bit mask) in question
uint32 trig_val

# Automatic rate (Hz) requested for this trigger. 0 indicates auto trigger not enabled
float32 auto_rate

# Actual rate of this trigger value
float32 achieved_rate

# Indicates whether a received input h/w trigger will execute this trigger value
# (in it's entirety)
bool hw_trig_in_enabled

# Indicates whether this trigger value will generate a hardware trigger out
bool hw_trig_out_enabled

# Most recent execution time for this trigger. 0 indicates the trigger has never fired.
time last_execution_time