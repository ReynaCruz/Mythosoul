## SCRIPT FOR THE MAIN PROTAGONIST OF MYTHOSOUL, PRIN (tentative name)
# This script is the main script, most actions take place in the states, but the
# vast majority of variables are stored here so all states can access them.
extends CharacterBody2D
class_name PrinMain

# Variables
var Walkspeed: float = 100.0     # Standard speed for Prin when the dash button isn't being held down
var Runmult: float = 1.6         # A multiplier on Prin's runspeed for when they're running (run is 30% faster atm)
var Dashmult: float = 4.0        # A multiplier determining how fast Prin's dash is

var PointMouse: bool = true      # A boolean determining if Prin should be looking at the mouse currently, could be turned off for cutscenes

var Dir: Vector2                 # A Vector2 variable used for determining what direction Prin is moving in

# Onready Vars
@onready var PrinAnims: AnimationPlayer = $PrinAnims

# Ready function: Happens as soon as the character is loaded into the scene
func _ready():
	Dir = Input.get_vector("AcLeft", "AcRight", "AcUp", "AcDown")

# Physics process function: Happens every physics tick
func _physics_process(delta: float) -> void:
	Dir = Input.get_vector("AcLeft", "AcRight", "AcUp", "AcDown")
	
	if PointMouse:
		Aim()
	
	move_and_slide()

func Aim():
	look_at(get_global_mouse_position())
