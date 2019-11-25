# This message contains the state of the navigation and positioning
# subsystem.

# Time for which this nav. solution is valid
time timestamp

# GPS-based positioning
sensor_msgs/NavSatFix fix

# Linear and angular accelerations from e.g. IMU (m/s^2 and rad/s^2)
geometry_msgs/Accel accel

# Linear velocity (m/s)
geometry_msgs/Vector3 linear_velocity

# Angular velocity (rad/s)
geometry_msgs/Vector3 angular_velocity

# Orientation (quaternion representation)
geometry_msgs/Quaternion orientation

# Heading (deg)
float32 heading
bool heading_true_north

## TODO - interpolation description

## TODO - nav sensor status
