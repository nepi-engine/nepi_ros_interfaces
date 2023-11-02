# This message contains the state and status of the system clock,
# including status about synchronization sources

# Current system clock time
time current_time

# System clock at time of last PPS receipt
time last_pps

# Servers
string[] ntp_sources

# Indicate whether NTP sources are currently sync'd (same indexing as ntp_sources)
bool[] currently_syncd

# Time since last sync message received from indexed server (seconds if no time-duration suffix)
string[] last_ntp_sync

# Estimated clock offset from indexed server (units indicated in string)
string[] current_offset

# Last set_time (hard set from external host)
time last_set_time

