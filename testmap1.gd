extends Node3D

@onready var head = get_parent()
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	print(head.total)
	
	if head.total < 5:
		$thing1.visible = true
	else:
		$thing2.visible = true
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_3d_area_entered(area):
	pass # Replace with function body.


func _on_area_3d_body_entered(body):
	if body.name == "you":
		head.changemap(["testmap2","point"])
