# This message represents a pose for a single object

string object_name
vision_msgs/ObjectHypothesisWithPose object

# Bounding Box
vision_msgs/BoundingBox3D box
float64[36] box_pose_covariance
float64[9] box_size_covariance
