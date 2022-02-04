tool
extends MeshInstance



func _process(_delta):
	# get the two extreme corners of the container
	shader_param("BOUND_MIN", get_aabb().position)
	shader_param("BOUND_MAX", get_aabb().end)

func shader_param(a, b):
	# set uniform through gdscript
	get_surface_material(0).set_shader_param(a, b)
