# This message is part of the IHMC footstep planning module.

float64 DEFAULT_NO_VALUE = -11.1

# Unique ID used to identify this message, should preferably be consecutively increasing.
uint32 sequence_id

# Sets whether or not the search should check if the body is colliding with the world. This may cause the planner
# to run slower.
bool check_for_body_box_collisions false

# Enables a collision check that is lighter-weight than a bounding box. Draws a planar region by vertically extruding the line
# between consecutive steps and invalidates steps with collisions, see: ObstacleBetweenNodesChecker
bool check_for_path_collisions false

# Sets whether or not to perform the defined heuristic search policies.
bool perform_heuristic_search_policies false

# Returns the ideal step width for walking on flat ground.
float64 ideal_footstep_width -11.1

# Returns the ideal step length for walking on flat ground.
float64 ideal_footstep_length -11.1

# If the planner in use utilized footstep wiggling (see {@link PolygonWiggler}) to move footholds onto planer
# regions this parameter will be used. It specifies the minimum distance between the foot polygon and the
# edge of the planar region polygon that the footstep is moved into. This value can be negative. That corresponds
# to allowing footsteps that partially intersect planar regions.
#
# If this value is too high, the planner will not put footsteps on small planar regions. At zero, the planner might
# choose a footstep with an edge along a planar region. This value should roughly be set to the sum of two values:
#    The smallest acceptable distance to the edge of a cliff
#    The maximum error between desired and actual foot placement
float64 wiggle_inside_delta 0.0
# Maximum xy-distance the planner will consider for candidate steps.
# Step reach refers to the magnitude of the xy-position of a footstep expressed in its parent's z-up sole frame,
# where the parent is the last footstep taken on the other foot.
#
# This parameter is intended to prevent accepting candidate footsteps that are near both the maximum step length and step width.
float64 maximum_step_reach -11.1

# Maximum yaw between consecutive footsteps
#
# A candidate footstep will be rejected if the yaw between it and its parent is greater than this value.
#
# This restricts the planner from planning kinematically infeasible footsteps. It is constant through the
# space of potential steps, so the robot should be able to achieve this yaw, for example, when stepping at
# its maximum reach.
float64 maximum_step_yaw -11.1

# Minimum step width the planner will consider for candidate steps.
#
# Step width refers to the magnitude of the y-position of a footstep expressed in its parent's sole frame,
# where the parent is the last footstep taken on the other foot.
#
# If this value is too low, for example below the foot's width, the planner could place consecutive footsteps
# on top of each other. If too high, footsteps might not be kinematically feasible.
float64 minimum_step_width -11.1

# Minimum step length the planner will consider for candidate steps.
#
# Step length refers to the x-position of a footstep expressed in its parent's sole frame,
# where the parent is the last footstep taken on the other foot.
#
# If this value is too low, for example below the foot's length, the planner could place consecutive footsteps
# on top of each other. If too high, footsteps might not be kinematically feasible.
float64 minimum_step_length -11.1

# Minimum step yaw.
float64 minimum_step_yaw -11.1

# Maximum step reach when stepping up.
#
# Long steps forward are rejected by the planner if one of two criteria are met:
#    The total length of the footstep exceeds {@link #getMaximumStepReachWhenSteppingUp()}, when expressed in its parent's z-up sole frame.
#    - OR -
#    The y-position of the value of the footstep exceeds {@link #getMaximumStepWidthWhenSteppingUp()}, when expressed in its parent's z-up sole frame.
#    - AND -
#    The z-position of the value of the footstep is greater than {@link #getMaximumStepZWhenSteppingUp()}, when expressed in its parent's z-up sole frame.

# Large steps forward and up can cause the robot to surpass its torque limits.
# These parameters should be tuned so that when the robot takes a step of length {@link #getMaximumStepReachWhenSteppingUp()} and {@link #getMaximumStepZWhenSteppingUp()},
# it's very close to saturating its torque limits.
float64 maximum_step_reach_when_stepping_up -11.1

# Maximum step width when stepping up.
#
# Long steps forward are rejected by the planner if one of two criteria are met:
#    The total length of the footstep exceeds {@link #getMaximumStepReachWhenSteppingUp()}, when expressed in its parent's z-up sole frame.
#    - OR -
#    The y-position of the value of the footstep exceeds {@link #getMaximumStepWidthWhenSteppingUp()}, when expressed in its parent's z-up sole frame.
#    - AND -
#    The z-position of the value of the footstep is greater than {@link #getMaximumStepZWhenSteppingUp()}, when expressed in its parent's z-up sole frame.

# Large steps forward and up can cause the robot to surpass its torque limits.
# These parameters should be tuned so that when the robot takes a step of length {@link #getMaximumStepReachWhenSteppingUp()} and {@link #getMaximumStepZWhenSteppingUp()},
# it's very close to saturating its torque limits.
float64 maximum_step_width_when_stepping_up -11.1

# Step height for considering stepping up.
#
# Long steps forward are rejected by the planner if one of two criteria are met:
#    The total length of the footstep exceeds {@link #getMaximumStepReachWhenSteppingUp()}, when expressed in its parent's z-up sole frame.
#    - OR -
#    The y-position of the value of the footstep exceeds {@link #getMaximumStepWidthWhenSteppingUp()}, when expressed in its parent's z-up sole frame.
#    - AND -
#    The z-position of the value of the footstep is greater than {@link #getMaximumStepZWhenSteppingUp()}, when expressed in its parent's z-up sole frame.

# Large steps forward and up can cause the robot to surpass its torque limits.
# These parameters should be tuned so that when the robot takes a step of length {@link #getMaximumStepReachWhenSteppingUp()} and {@link #getMaximumStepZWhenSteppingUp()},
# it's very close to saturating its torque limits.
float64 maximum_step_z_when_stepping_up -11.1

# Maximum step length when stepping forward and down.
#
# Large steps forward and down are rejected by the planner if one of two criteria are met:
#    The x-position of the value of the footstep exceeds maximumStepXWhenForwardAndDown, when expressed in its parent's z-up sole frame
#    - OR -
#    The y-position of the value of the footstep exceeds maximumStepYWhenForwardAndDown, when expressed in its parent's z-up sole frame
#    - AND -
#    The z-position of the value of the footstep is less than maximumStepZWhenForwardAndDown, when expressed in its parent's z-up sole frame
#
# Large steps forward and down usually cause the robot to hit it's ankle pitch joint limit.
# These parameters should be tuned so that when the robot takes a step of length maximumStepXWhenForwardAndDown and height maximumStepZWhenForwardAndDown,
# it's very close to hitting it's ankle pitch joint limit.
float64 maximum_step_x_when_forward_and_down -11.1

# Maximum step width when stepping forward and down.
#
# Large steps forward and down are rejected by the planner if one of two criteria are met:
#    The x-position of the value of the footstep exceeds maximumStepXWhenForwardAndDown, when expressed in its parent's z-up sole frame
#    - OR -
#    The y-position of the value of the footstep exceeds maximumStepYWhenForwardAndDown, when expressed in its parent's z-up sole frame
#    - AND -
#    The z-position of the value of the footstep is less than maximumStepZWhenForwardAndDown, when expressed in its parent's z-up sole frame
#
# Large steps forward and down usually cause the robot to hit it's ankle pitch joint limit.
# These parameters should be tuned so that when the robot takes a step of length maximumStepXWhenForwardAndDown and height maximumStepZWhenForwardAndDown,
# it's very close to hitting it's ankle pitch joint limit.
float64 maximum_step_y_when_forward_and_down -11.1

# Maximum step height when stepping forward and down.
#
# Large steps forward and down are rejected by the planner if one of two criteria are met:
#    The x-position of the value of the footstep exceeds maximumStepXWhenForwardAndDown, when expressed in its parent's z-up sole frame
#    - OR -
#    The y-position of the value of the footstep exceeds maximumStepYWhenForwardAndDown, when expressed in its parent's z-up sole frame
#    - AND -
#    The z-position of the value of the footstep is less than maximumStepZWhenForwardAndDown, when expressed in its parent's z-up sole frame
#
# Large steps forward and down usually cause the robot to hit it's ankle pitch joint limit.
# These parameters should be tuned so that when the robot takes a step of length maximumStepXWhenForwardAndDown and height maximumStepZWhenForwardAndDown,
# it's very close to hitting it's ankle pitch joint limit.
float64 maximum_step_z_when_forward_and_down -11.1

# Scale factor for checking 2D step limitations when changing height from the grandparent node.
# This is used if the height change from the grandparent node is more than {@link #getMaximumStepZWhenSteppingUp()} or less than
# {@link #getMaximumStepZWhenForwardAndDown()}.
#
# If that is the case, it checks to see if the reach is greater than the values returned by {@link #getMaximumStepReachWhenSteppingUp()} for going
# up or {@link #getMaximumStepXWhenForwardAndDown()} for going down scaled up by the value returned by {@link #getTranslationScaleFromGrandparentNode()}.
float64 translation_scale_from_grandparent_node -11.1

# Maximum vertical distance between consecutive footsteps
#
# A candidate footstep will be rejected if its z-value is greater than this value, when expressed its parent's
# z-up sole frame.
float64 maximum_step_z -11.1

# Maximum vertical distance between consecutive footsteps when the trailing foot is pitched at {@link #getMinimumSurfaceInclineRadians()} .
#
# The maximum depth is determined by linearly interpolating between {@link #getMaximumStepZ()} and this value, based on the fraction the foot is pitched by.
# A candidate footstep will be rejected if its z-value is less than this value, when expressed its parent's z-up sole frame.
float64 minimum_step_z_when_fully_pitched -11.1

# Maximum forward distance between consecutive footsteps when the trailing foot is pitched at {@link #getMinimumSurfaceInclineRadians()} .
#
# The maximum distance is determined by linearly interpolating between {@link #getMaximumStepZ()} and this value, based on the fraction the foot is pitched by.
# A candidate footstep will be rejected if its z-value is less than this value, when expressed its parent's z-up sole frame.
float64 maximum_step_x_when_fully_pitched -11.1

# This is the reduction factor for the max yaw when the step is at max reach.
# This means that, when the footstep is at its maximum distance, this is the fraction reduction of the max yaw.
# If this returns 0.0, the max yaw is not modified, even at full reach.
# If this returns 1.0, the max yaw is 0 at full reach.
#
# That is,
# modifiedMaxYaw = (1.0 - reach / maxReach) * maxYaw + reach / maxReach * (1.0 - alpha) * maxYaw
float64 step_yaw_reduction_factor_at_max_reach -11.1

# Minimum percentage that a candidate footstep needs to overlap with its associated planar region in order to be accepted.
#
# If this parameter is set to 1.0 only full footsteps are allowed. A value less then 1.0 will allow partial footholds.
float64 minimum_foothold_percent 0.9

# The planner will ignore candidate footsteps if they are on a planar region with an incline that is higher
# then the value specified here.
#
# More specifically, if a footstep has an associated planar region and that regions surface normal has a
# z-value less than cos(minimumSurfaceInclineRadians), it will be rejected.
float64 minimum_surface_incline_radians -11.1

# There are two methods of wiggling a polygon into a planar region:
#    Wiggle the polygon into the planar region itself, which isn't necessarily convex
#    Wiggle the polygon into the convex hull of the planar region
# The first method is not implemented completely. Instead it will wiggle into the sub polygon of the planar region that
# has the biggest overlap with the foothold.
#
# If this parameter is set to true (recommended), the second wiggle method will be used.
bool wiggle_into_convex_hull_of_planar_regions true

# If the planner uses footstep wiggling it attempts to move a candidate footstep inside its associated planar region.
# This attempt is parametrized by {@link #getWiggleIntoConvexHullOfPlanarRegions()}, {@link #getWiggleInsideDelta},
# {@link #getMaximumXYWiggleDistance}, and {@link #getMaximumYawWiggle}. If this transform cannot be found, the
# candidate footstep will be rejected if this method returns {@code true}.
bool reject_if_cannot_fully_wiggle_inside false

# When wiggling a candidate footstep into a planar region, this is the maximum distance xy-distance
# distance the planner will use
float64 maximum_xy_wiggle_distance -11.1

# When wiggling a candidate footstep into a planar region, this is the maximum yaw
# distance the planner will use
float64 maximum_yaw_wiggle -11.1

# When snapping a candidate footstep to a planar region, its possible that another planar region
# intersects the footstep at a steep angle, i.e. a valley. If this intersecting planar region
# is never more than maximumZPenetrationOnValleyRegions above the footstep, it won't be rejected,
# otherwise it will.
float64 maximum_z_penetration_on_valley_regions -11.1

# Maximum step width the planner will consider for candidate steps.
#
# Step width refers to the magnitude of the y-position of a footstep expressed in its parent's sole frame,
# where the parent is the last footstep taken on the other foot.
#
# If this value is too low, the planner will unnecessarily reject footsteps. If too high, footsteps might not be kinematically feasible.
float64 maximum_step_width -11.1

# The planner can be setup to avoid footsteps near the bottom of "cliffs". When the footstep has a planar region
# nearby that is cliffHeightToShiftAwayFrom higher than the candidate footstep, it will move away from it
# until it is minimumDistanceFromCliffBottoms away from it.
#
# If these values are set to zero, cliff avoidance will be turned off. This creates a risk that the robot will
# hit the cliff with its swing foot. Therefore, these parameters should be set according to what the swing trajectory
# generator is capable of swinging over.
float64 cliff_height_to_avoid -11.1

# The planner can be setup to avoid footsteps near the bottom of "cliffs". When the footstep has a planar region
# nearby that is {@link #getCliffHeightToAvoid} higher than the candidate footstep, it will move away from it
# until it is minimumDistanceFromCliffBottoms away from it.
#
# If these values are set to zero, cliff avoidance will be turned off. This creates a risk that the robot will
# hit the cliff with its swing foot. Therefore, these parameters should be set according to what the swing trajectory
# generator is capable of swinging over.
float64 minimum_distance_from_cliff_bottoms -11.1

# When the planner is done planning and cannot find a path to the goal, this flag indicates whether the
# planner should return the best plan that it found. If this value is false, the planner will return
# a {@link FootstepPlan} of type {@link FootstepPlanningResult#NO_PATH_EXISTS}. Otherwise it will return
# "best" is determined by the planner.
bool return_best_effort_plan false

# When {@link #getReturnBestEffortPlan()} is true, the planner will return the best effort plan if the plan
# contains at least this many footsteps.
uint32 minimum_steps_for_best_effort_plan

# Some node checkers will check if a bounding box that describes the body of the robot will move
# through a planar region (e.g. a wall) when going from one footstep to the next one. To avoid these
# collisions, this defines the box height.
float64 body_box_height -11.1

# Some node checkers will check if a bounding box that describes the body of the robot will move
# through a planar region (e.g. a wall) when going from one footstep to the next one. To avoid these
# collisions, this defines the box depth.
float64 body_box_depth -11.1

# Some node checkers will check if a bounding box that describes the body of the robot will move
# through a planar region (e.g. a wall) when going from one footstep to the next one. To avoid these
# collisions, this defines the box width.
float64 body_box_width -11.1

# Some node checkers will check if a bounding box that describes the body of the robot will move
# through a planar region (e.g. a wall) when going from one footstep to the next one. To avoid these
# collisions, this defines the x-offset of a bounding box relative to the average frame between sequential footsteps.
float64 body_box_base_x -11.1

# Some node checkers will check if a bounding box that describes the body of the robot will move
# through a planar region (e.g. a wall) when going from one footstep to the next one. To avoid these
# collisions, this defines the y-offset of a bounding box relative to the average frame between sequential footsteps.
float64 body_box_base_y -11.1

# Some node checkers will check if a bounding box that describes the body of the robot will move
# through a planar region (e.g. a wall) when going from one footstep to the next one. To avoid these
# collisions, this defines the z-offset of a bounding box relative to the average frame between sequential footsteps.
float64 body_box_base_z -11.1

# Parameter used inside the node expansion to avoid footsteps that would be on top of the stance foot.
# Nodes are only added to the expanded list if they are outside the box around the stance foot defined by
# this parameter.
float64 min_x_clearance_from_stance -11.1

# Parameter used inside the node expansion to avoid footsteps that would be on top of the stance foot.
# Nodes are only added to the expanded list if they are outside the box around the stance foot defined by
# this parameter.
float64 min_y_clearance_from_stance -11.1

# Radius around the goal inside which the planner should start to turn to match the goal's orientation
float64 final_turn_proximity -11.1

# Radius around the goal inside which the body path heuristic planner should start to turn to match the goal's orientation
float64 final_turn_body_path_proximity -11.1

# Defines a percentage of the radius around the final turn proximity in which the blending from the desired heading to the
# final orientation should occur. That is, at 1 + {@link #getFinalTurnProximityBlendFactor()}} * {@link #getFinalTurnProximity()},
# the desired orientation is the desired heading, and at 1 - {@link #getFinalTurnProximityBlendFactor()}} * {@link #getFinalTurnProximity()},
# the desired orientation is the final orientation.
float64 final_turn_proximity_blend_factor -11.1

# When using a cost based planning approach this value defined how the yaw of a footstep will be
# weighted in comparison to its position.
float64 yaw_weight -11.1

# When using a cost based planning approach this value defines how the pitch will be weighted.
float64 pitch_weight -11.1

# When using a cost based planning approach this value defines how the roll will be weighted.
float64 roll_weight -11.1

# When using a cost based planning approach, this value defines how the forward (or backward) displacement
# of a footstep will be weighted in comparison to its position. Note that when using a Euclidean distance, this
# weight is averaged with the value returned by {@link #getLateralWeight()}
float64 forward_weight -11.1

# When using a cost based planning approach, this value defines how the lateral displacement
# of a footstep will be weighted in comparison to its position. Note that when using a Euclidean distance, this
# weight is averaged with the value returned by {@link #getForwardWeight()}
float64 lateral_weight -11.1

# When using a cost based planning approach this value defines how the height change when stepping up will be
# weighted.
float64 step_up_weight -11.1

# When using a cost based planning approach this value defines how the height change when stepping down will be
# weighted.
float64 step_down_weight -11.1

# When using a cost based planning approach this value defines how the a missing foothold area will be weighted.
float64 long_step_weight -11.1

# When using a cost based planning approach this value defines how the a missing foothold area will be weighted.
float64 foothold_area_weight -11.1

# When using a cost based planning approach this value defines the cost that is added for each step
# taken. Setting this value to a high number will favor plans with less steps.
float64 cost_per_step -11.1

# Determines which cost function for distance and yaw to use, between {@link QuadraticDistanceAndYawCost} and {@link EuclideanDistanceAndYawBasedCost}
bool use_quadratic_distance_cost false

# Determines which cost function for distance and yaw to use, between {@link QuadraticDistanceAndYawCost} and {@link LinearHeightCost}
bool use_quadratic_height_cost false

# Gets the weight for the heuristics in the A Star planner.
float64 a_star_heuristics_weight -11.1

# Gets the weight for the heuristics in the Visibility graph with A star planner.
float64 vis_graph_with_a_star_heuristics_weight -11.1

# Gets the weight for the heuristics in the Depth First planner.
float64 depth_first_heuristics_weight -11.1

# Gets the weight for the heuristics in the Body path based planner.
float64 body_path_based_heuristics_weight -11.1

# This sets how many bounding box checks to perform. If this value is 1, only the final footstep is checked.
# Additional checks are done by interpolating between the start and end steps
uint32 number_of_bounding_box_checks 1

# If this value is non-zero, nodes will be given cost if the bounding box is within this xy distance of a planar region
# @see FootstepPlannerCostParameters#getBoundingBoxCost
float64 maximum_2d_distance_from_bounding_box_to_penalize -11.1

# If a node doesn't have bounding box collisions at the default dimensions, but does when increasing the xy dimensions by d,
# where d < getMaximum2DDistanceFromBoundingBoxToPenalize, there will be a cost given to the node of:
# {@code c * (1 - d / d_max)}, where d_max is this value.
float64 bounding_box_cost -11.1

float64 body_path_violation_weight -11.1

float64 distance_from_path_tolerance -11.1

float64 delta_yaw_from_reference_tolerance -11.1

