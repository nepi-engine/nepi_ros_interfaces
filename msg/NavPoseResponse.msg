# This msg provides a system's navigation/position state
# and status.

# The query_time represents the point (in the past) for which the nav/pos solution
# is requested. A query_time of 0 signifies that the most current solution is
# requested. The query_time is only valid if it specifies a time within the last
# TBD seconds.
time query_time

# Specify whether raw or transformed (via static offsets or live transfer frame updates) data is requested
bool transform

# Indicates whether nav_pose data is transformed into ahrs_out_frame_id
bool transformed

# The nav/pos state and status
NavPose nav_pose
