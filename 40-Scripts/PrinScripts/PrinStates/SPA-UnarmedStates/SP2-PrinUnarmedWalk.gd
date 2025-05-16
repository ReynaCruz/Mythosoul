## STATE CODE FOR PRIN'S UNARMED WALK STATE
extends State
class_name PrinUnWalk

# Export variable to reference Prin's main root node
@export var Prin: CharacterBody2D

# Enter function: Happens first
func Enter():
	print("Walk")

# Update function: Happens every frame
func Update(_delta: float):
	pass

# Physics update function: Happens every physics tick
func PhysicsUpdate(_delta: float):
	Prin.velocity = Prin.Dir * Prin.Walkspeed
	
	if Input.is_action_just_pressed("AcDash"):
		Transitioned.emit(self, "PrinUnDash")
	
	if !Prin.Dir:
		Transitioned.emit(self, "PrinUnIdle")

# Exit function: Happens last before exiting
func Exit():
	pass
