# This message contains a definition for a single Image Mux Input array entry.

# Image topic relative to base NEPI namespace
string topic

# Min/Max number of frames before this input is 'satisfied'
int32 min_frame_count
int32 max_frame_count

# Min/Max duration in secs before this input is 'satisfied'
float32 min_duration_s
float32 max_duration_s