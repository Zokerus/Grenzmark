extends Node3D
class_name CameraSpringArm

@export var max_length: float = 5.0
@export var min_length: float = 0.25
@export var camera_margin: float = 0.15
@export var smooth_speed: float = 18.0
@export var target: Node3D
@export var decay: float = 20.0

@onready var ray_cast_3d: RayCast3D = $RayCast3D
@onready var camera_3d: Camera3D = $Camera3D

var current_len: float

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	current_len = max_length
	# Ray soll in lokaler -Z Richtung "nach hinten" zeigen
	ray_cast_3d.target_position = Vector3(0, 0, max_length)
	ray_cast_3d.enabled = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	# sicherstellen, dass RayCast up-to-date ist
	ray_cast_3d.force_raycast_update()

	var desired_len := max_length

	if ray_cast_3d.is_colliding():
		# collision point in lokalen Raum umrechnen
		var local_hit: Vector3 = to_local(ray_cast_3d.get_collision_point())
		# Abstand entlang -Z (positive Länge)
		desired_len = clampf(local_hit.z - camera_margin, min_length, max_length)

	# smooth
	current_len = desired_len#lerpf(current_len, desired_len, 1.0 - exp(-smooth_speed * delta))

	# Kamera entlang -Z setzen
	camera_3d.position = Vector3(0, 0, current_len)
	
	global_transform = global_transform.interpolate_with(target.global_transform, 1.0 - exp(-decay * delta))
