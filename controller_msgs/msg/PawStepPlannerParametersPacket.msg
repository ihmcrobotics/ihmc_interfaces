# This message is part of the IHMC quadruped footstep planning module.

float64 NO_VALUE_DOUBLE = -11.1

# Unique ID used to identify this message, should preferably be consecutively increasing.
uint32 sequence_id

float64 maximum_front_step_reach -11.1
float64 maximum_front_step_length -11.1
float64 minimum_front_step_length -11.1
float64 maximum_hind_step_reach -11.1
float64 maximum_hind_step_length -11.1
float64 minimum_hind_step_length -11.1
float64 maximum_front_step_length_when_stepping_up -11.1
float64 minimum_front_step_length_when_stepping_up -11.1
float64 maximum_hind_step_length_when_stepping_up -11.1
float64 minimum_hind_step_length_when_stepping_up -11.1
float64 step_z_for_stepping_up -11.1
float64 maximum_front_step_length_when_stepping_down -11.1
float64 minimum_front_step_length_when_stepping_down -11.1
float64 maximum_hind_step_length_when_stepping_down -11.1
float64 minimum_hind_step_length_when_stepping_down -11.1
float64 step_z_for_stepping_down -11.1
float64 maximum_step_outward -11.1
float64 maximum_step_inward -11.1
float64 maximum_step_yaw_outward -11.1
float64 maximum_step_yaw_inward -11.1
float64 maximum_step_change_z -11.1
float64 body_ground_clearance -11.1
float64 distance_weight -11.1
float64 yaw_weight -11.1
float64 x_gait_weight -11.1
float64 desired_velocity_weight -11.1
float64 cost_per_step -11.1
float64 step_up_weight -11.1
float64 step_down_weight -11.1
float64 heuristics_weight -11.1
float64 min_x_clearance_from_paw -11.1
float64 min_y_clearance_from_paw -11.1
float64 max_walking_speed_multiplier -11.1
bool project_inside_using_convex_hull
float64 projection_inside_distance -11.1
float64 minimum_projection_inside_distance -11.1
float64 maximum_xy_wiggle_distance -11.1
float64 minimum_surface_incline_radians -11.1
float64 cliff_height_to_avoid -11.1
float64 minimum_front_end_forward_distance_from_cliff_bottoms -11.1
float64 minimum_front_end_backward_distance_from_cliff_bottoms -11.1
float64 minimum_hind_end_forward_distance_from_cliff_bottoms -11.1
float64 minimum_hind_end_backward_distance_from_cliff_bottoms -11.1
float64 minimum_lateral_distance_from_cliff_bottoms -11.1
float64 final_turn_proximity -11.1
float64 final_slow_down_proximity -11.1
float64 maximum_deviation_from_x_gait_during_expansion -11.1
bool return_best_effort_plan false
uint32 minimum_steps_for_best_effort_plan 4
bool perform_graph_repairing_step false
float64 repairing_heuristic_weight_scaling -11.1
float64 minimum_heuristic_weight_reduction -11.1