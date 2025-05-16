## SCRIPT FOR THE MAIN PROTAGONIST OF MYTHOSOUL, PRIN (tentative name)
# This script is the main script, most actions take place in the states, but the
# vast majority of variables are stored here so all states can access them.
extends CharacterBody2D
class_name PrinMain

# Variables
var Walkspeed: float = 100.0     # Standard speed for Prin when the dash button isn't being held down
var Runmult: float = 1.3         # A multiplier on Prin's runspeed for when they're running (run is 30% faster atm)
var Dashspeed: float = 2.0       # A multiplier determining how fast Prin's dash is

var PointMouse: bool = true      # A boolean determining if Prin should be looking at the mouse currently, could be turned off for cutscenes


func _ready():
	pass

func _physics_process(delta: float) -> void:
	pass
