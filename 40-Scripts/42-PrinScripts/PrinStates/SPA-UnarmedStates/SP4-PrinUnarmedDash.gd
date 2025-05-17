## STATE CODE FOR PRIN'S UNARMED DASH STATE
extends State
class_name PrinUnDash

# Export variable to reference Prin's main root node
@export var Prin: CharacterBody2D

# Enter function: Happens first
func Enter():
	print("Dash")
	Prin.PrinAnims.play("003-PrinUnDash")
	if Prin.Dir:
		Prin.velocity = Prin.Dir * Prin.Walkspeed * Prin.Dashmult
	else:
		Prin.velocity = Prin.Dir * Prin.Walkspeed * Prin.Dashmult

# Update function: Happens every frame
func Update(_delta: float):
	pass

# Physics update function: Happens every physics tick
func PhysicsUpdate(_delta: float):
	
	if !Prin.PrinAnims.is_playing():
		if Input.is_action_pressed("AcDash"):
			Transitioned.emit(self, "PrinUnRun")
		else:
			Transitioned.emit(self, "PrinUnIdle")

# Exit function: Happens last before exiting
func Exit():
	pass
