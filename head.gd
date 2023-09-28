extends Node3D

#current map and temp map
var cmap
var tmap

#"inventory" flags
var inv = [false,false,false,false,false,false]
var total = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	changemap(["testmap1","point2"])


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func changemap(mapdata):#[map tscn name, point name]- point can be ignored for now (:
	#everything is in one folder right now
	var temp = load("res://" + mapdata[0] + ".tscn")
	tmap = temp.instantiate()
	add_child(tmap)
	var snee = tmap.get_node(mapdata[1])
	$you.position = snee.position
	#queue free cmap
	if cmap:
		cmap.queue_free()
	cmap = tmap
