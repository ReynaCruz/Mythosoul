## STATE CLASS FOR VIRTUALLY EVERY SINGLE THING THAT USES A STATE IN THIS GAME
extends Node
# Whenever making a state script, make SURE the script extends State and not just Node.
class_name State

signal Transitioned   # Signal emitted by a state for whenever a state machine should transition from one state to another.

## STATE FUNCTIONS
# All of these states will be overwritten by the states in each respective state machine,
# so they are all empty here since states generally don't share too much outside of them.

## ENTER FUNCTION:
#  Performed when the state is first entered, only performed once,
#  and after the exit function of the previous state
func Enter():
	pass

## UPDATE FUNCTION
#  Performed every game frame, meaning actions in here will vary based on hardware,
#  Generally more useful for animation timings, but less so for movement based things
#  NOTE: CALLED BEFORE PHYSICS UPDATE, THINGS HERE WILL HAPPEN FIRST
func Update(_delta: float):
	pass

## PHYSICS UPDATE FUNCTION
#  Performed every physics tick, leading to a consistent experience regardless of hardware,
#  Honestly I could put everything in here, but I like having Update just so not everything
#  is so cluttered and generally reserve this for movement and important movement stuff.
func PhysicsUpdate(_delta: float):
	pass

## EXIT FUNCTION
#  Performed once only when the state is being exited,
#  before the enter function of the next state.
func Exit():
	pass
