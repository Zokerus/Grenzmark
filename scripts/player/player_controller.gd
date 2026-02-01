extends CharacterBody3D
class_name PlayerController

const JUMP_VELOCITY = 4.5

#Stores the x/y direction the player is trying to look in
var mouseLookDelta := Vector2.ZERO

@export var mouseSensitivity := 0.002
@export var padLookSensitivity := 2.0
@export var min_vertical_boundary: float = -60
@export var max_vertical_boundary: float = 17
@export var moveSpeed := 4.0

@onready var rig_yaw_pivot: Node3D = $RigYawPivot
@onready var camera_yaw_pivot: Node3D = $CameraYawPivot
@onready var camera_pitch_pivot: Node3D = $CameraYawPivot/CameraPitchPivot

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
			mouseLookDelta += event.relative

func _physics_process(delta: float) -> void:
	handle_camera_rotation(delta)
	handle_movement(delta)
	
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	move_and_slide()

func handle_camera_rotation(delta: float) -> void:
	 # Gamepad look
	var padLook := Vector2(
		Input.get_action_strength("look_right") - Input.get_action_strength("look_left"),
		Input.get_action_strength("look_down") - Input.get_action_strength("look_up"))
	
	var look := Vector2.ZERO
	look -= mouseLookDelta * mouseSensitivity
	look -= padLook * padLookSensitivity * delta
	
	camera_yaw_pivot.rotate_y(look.x)
	camera_pitch_pivot.rotate_x(look.y)
	camera_pitch_pivot.rotation.x = clampf(camera_pitch_pivot.rotation.x, deg_to_rad(min_vertical_boundary), deg_to_rad(max_vertical_boundary))
	
	#$SpringArm.global_transform = vertical_pivot.global_transform
	mouseLookDelta = Vector2.ZERO

func handle_movement(delta: float) -> void:
	#var inputDir := Vector2(
		#Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		#Input.get_action_strength("move_forward") - Input.get_action_strength("move_backward")
		#)
	var inputDir : =Input.get_vector("move_left", "move_right", "move_forward", "move_backward")
	
	if inputDir.length() > 1.0:
		inputDir = inputDir.normalized()
		
	var direction := (transform.basis * Vector3(inputDir.x, 0, inputDir.y)).normalized()
	velocity.x = direction.x * moveSpeed
	velocity.z = direction.z * moveSpeed
	
	move_and_slide()
