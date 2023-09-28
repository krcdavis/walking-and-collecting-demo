extends Area3D

@export var monname = ""
@export var index = -1
@onready var head = get_tree().current_scene
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	#print(head.name)
	if head.inv[index]:
		queue_free()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if body.name == "you":
		pass # Replace with function body.
		print(monname)
		head.inv[index] = true
		head.total += 1
		queue_free()
