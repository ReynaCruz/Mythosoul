## STATE CODE FOR PRIN'S UNARMED BLOCK STATE
extends State
class_name PrinUnBlock

# Export variable to reference Prin's main root node
@export var Prin: CharacterBody2D

# Enter function: Happens first
func Enter():
	print("Block")

# Update function: Happens every frame
func Update(_delta: float):
	pass

# Physics update function: Happens every physics tick
func PhysicsUpdate(_delta: float):
	pass

# Exit function: Happens last before exiting
func Exit():
	pass
