# This message contains the state of the navigation and positioning
# subsystem.

# Time for which this nav. solution is valid
builtin_interfaces/Time timestamp

# GPS-based positioning
sensor_msgs/NavSatFix fix

# Pose and Twist (velocity)
nav_msgs/Odometry odom

# Heading
nepi_ros_interfaces/Heading heading
