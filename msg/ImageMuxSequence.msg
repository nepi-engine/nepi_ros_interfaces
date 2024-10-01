# This message contains a definition for a single Image Mux Sequence, e.g., for sequential_image_mux

# Unique identifier for this sequence
string sequence_id

# Indicates whether sequence is currently running
bool enabled

# Output image topic (w.r.t. NEPI base namespace)
string output_topic

# Output image size in pixels (set to 0 to preserve the input size)
int32 output_img_width_pixels
int32 output_img_height_pixels

# Sequence of inputs and step-control parameters for this sequence. See ImageMuxInput for details
ImageMuxInput[] inputs

