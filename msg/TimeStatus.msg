# This message contains the state and status of the system clock,
# including status about synchronization sources

# Current system clock time
time current_time

# System clock at time of last PPS receipt
time last_pps

# IPv4 addresses of all configured NTP servers
string[] ntp_servers

# Seconds since last sync message received from indexed server
uint32[] last_ntp_sync

