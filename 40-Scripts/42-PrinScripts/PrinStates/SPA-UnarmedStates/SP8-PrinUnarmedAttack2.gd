## STATE CODE FOR PRIN'S UNARMED ATTACK 2 STATE
extends State
class_name PrinUnAtk2

# Export variable to reference Prin's main root node
@export var Prin: CharacterBody2D

# Enter function: Happens first
func Enter():
	print("Attack2")

# Update function: Happens every frame
func Update(_delta: float):
	pass

# Physics update function: Happens every physics tick
func PhysicsUpdate(_delta: float):
	pass

# Exit function: Happens last before exiting
func Exit():
	pass
