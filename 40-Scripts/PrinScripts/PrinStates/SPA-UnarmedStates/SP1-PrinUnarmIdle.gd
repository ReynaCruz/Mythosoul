## STATE CODE FOR PRIN'S UNARMED IDLE STATE
extends State
class_name PrinUnIdle

# Export variable to reference Prin's main root node
@export var Prin: CharacterBody2D

# Enter function: Happens first
func Enter():
	print("Idle")

# Update function: Happens every frame
func Update(_delta: float):
	pass

# Physics update function: Happens every physics tick
func PhysicsUpdate(_delta: float):
	
	if Prin.Dir:
		Transitioned.emit(self, "PrinUnWalk")
	
	if Input.is_action_just_pressed("AcDash"):
		Transitioned.emit(self, "PrinUnDash")

# Exit function: Happens last before exiting
func Exit():
	pass
