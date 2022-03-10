# This message provides the output of a target localization process
Header header

# Input Bounding Boxes Topic
string input_boxes_topic
Header input_boxes_header

# Input Depth Image Topic - topic and image header from which depth is extracted
string input_depth_topic
Header input_depth_header

# Input Image Topic - topic and image header from which targets were detected
string input_img_topic
Header input_img_header

# Array of individual localized targets
num_sdk_msgs/TargetLocalization[] targets
