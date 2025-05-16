## STATE CODE FOR PRIN'S UNARMED RUN STATE
extends State
class_name PrinUnRun

# Export variable to reference Prin's main root node
@export var Prin: CharacterBody2D

# Enter function: Happens first
func Enter():
	pass

# Update function: Happens every frame
func Update(_delta: float):
	pass

# Physics update function: Happens every physics tick
func PhysicsUpdate(_delta: float):
	Prin.velocity = Prin.Dir * Prin.Walkspeed * Prin.Runmult
	
	if !Input.is_action_pressed("AcDash") and Prin.Dir:
		Transitioned.emit(self, "PrinUnWalk")
	if !Prin.Dir:
		Transitioned.emit(self, "PrinUnIdle")

# Exit function: Happens last before exiting
func Exit():
	pass
