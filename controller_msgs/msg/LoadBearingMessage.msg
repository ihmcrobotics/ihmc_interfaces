# This message is part of the IHMC whole-body controller API.
# Message carrying the information needed to enable load bearing for a end-effector.
# A contact point will be used to enable this feature. This point is attached to the end-effector.

# Unique ID used to identify this message, should preferably be consecutively increasing.
uint32 sequence_id

# If set to true this will load the contact point. Otherwise the rigid body will stop bearing load.
bool load false
# Sets the coefficient of friction that the controller will use for the contact point.
float64 coefficient_of_friction 0
# Sets the pose of the contact frame in the frame of the end effector body.
geometry_msgs/Pose body_frame_to_contact_frame
# Sets the contact normal used by the controller to load the contact point.
geometry_msgs/Vector3 contact_normal_in_world_frame