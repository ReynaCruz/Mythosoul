## STATE MACHINE SCRIPT FOR PRIN
extends Node
class_name PrinStateM


@export var initState : State      # Sets the first state Prin should be in when entering a scene

var currentState : State           # Stores the current state Prin is in
var stateList : Dictionary = {}    # Stores a list of all the possible states Prin can be in, which is automatically read in the ready function


func _ready():
	# For every child of the PrinStateMach node,
	for child in get_children():
		# If the child extends State,
		if child is State:
			# Add the child to the state list dictionary, lowercasing the names to avoid more errors
			stateList[child.name.to_lower()] = child
			# Connect the Transitioned signal to the child so the child can emit Transitioned
			child.Transitioned.connect(on_child_transition)

	# If the state machine has an initial state (which it should always, this is just to catch errors),
	if initState:
		# Perform the enter function in the initial state
		initState.Enter()
		# Set the current state to initial state
		currentState = initState

# This version is what we use when we want to tie something to frames
func _process(delta):
	# If the current state exists (which it always should),
	if currentState:
		# Perform the Update function of the current state every frame
		currentState.Update(delta)

# This version is what we use when we want something to tie to the physics frames, which makes stuff less
# dependent on hardware so is generally more useful.
func _physics_process(delta):
	# If the current state exists (which it always should),
	if currentState:
		# Perform the Physics Update function every physics tick
		currentState.PhysicsUpdate(delta)

# This is called when the child emits the transitioned signal, telling the state machine
# to run this code with the parameters of itself and the state it is to transition to.
## The code to transition states is `Transitioned.emit(self, "New State")`
func on_child_transition(state, newStateName):
	# If the state passed is not the current state
	if state != currentState:
		# Exit
		return
	
	# Declares a variable equal to the new state name retrieved from the state dictionary
	var newState = stateList.get(newStateName.to_lower())
	# If the newState variable is not in the state machine,
	if !newState:
		# Exit
		return
	
	# If currently in a state (which you always should be, this is just to catch errors),
	if currentState:
		# Perform the Exit function of that state
		currentState.Exit()
	
	# Perform the enter function of the state being transitioned to
	newState.Enter()
	# Set the new state to be what the current state is
	currentState = newState
