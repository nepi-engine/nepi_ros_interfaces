# This message provides the current NEPI Edge state and status for a queried device,
# including fixed and configurable NEPI Edge instance identifiers.

# Top-level state & status
string nuid                             # Fixed/non-configurable identifier for queried device's NEPI instance
string alias                            # Configurable alias for queried device's NEPI instance
bool enabled                            # NEPI Edge device enabled/disabled
uint32 auto_attempts_per_hour           # Automatic connection attempts per hour. If 0, auto connection is disabled

# Low-bandwidth (LB) state & status
bool lb_enabled                         # LB channels enabled/disabled
string[] lb_comms_types                 # Priority-ordered list of enabled LB communications types
time lb_last_connection_time            # Last successful LB connection time
string[] lb_available_data_sources      # List of available data topics and services for LB data channel
string[] lb_selected_data_sources       # List of selected data topics and services for LB data channel
uint32 lb_do_msg_count                  # LB device-originated message count (status, data, etc.)
uint32 lb_dt_msg_count                  # LB device-terminated message count (configuration, etc.)
uint32 lb_max_data_queue_size_mb        # Max megabytes allowed in LB folders (queued for transmit or purge)

# High-bandwidth (HB) state & status
bool hb_enabled                         # HB channels enabled/disabled
bool hb_auto_data_offloading_enabled    # Data offloading enabled/disabled
time hb_last_connection_time            # Last successful HB connection time
uint32 hb_do_transfered_mb              # Total HB device-originated megabytes sent
uint32 hb_dt_transfered_mb              # Total HB device-terminated megabytes received
