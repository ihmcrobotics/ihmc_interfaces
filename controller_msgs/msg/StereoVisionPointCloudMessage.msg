# Should disappear for the ROS equivalent.

# Unique ID used to identify this message, should preferably be consecutively increasing.
uint32 sequence_id

int64 timestamp
geometry_msgs/Point sensor_position
geometry_msgs/Quaternion sensor_orientation

# There are two types of confidence value noticing the quality of the data for sensor pose and point cloud.
# The range of confidence is from 0.0 with the worst quality to 1.0 with the best quality.
# The confidence of the sensor pose represents the quality of the pose estimation.
float64 sensor_pose_confidence 1.0
# There are two types of confidence value noticing the quality of the data for sensor pose and point cloud.
# The range of confidence is from 0.0 with the worst quality to 1.0 with the best quality.
# The confidence of the point cloud represents the quality of the collected point cloud data.
float64 point_cloud_confidence 1.0
float32[<=600000] point_cloud
int32[<=200000] colors