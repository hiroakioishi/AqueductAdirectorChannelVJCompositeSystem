# me - this DAT
# 
# frame - the current frame
# state - True if the timeline is paused
# 
# Make sure the corresponding toggle is enabled in the Execute DAT.

from enum import Enum

class Mode(Enum):
	DISABLE = 0
	CONTROL = 1
	TRIGGER = 2
	RANDOM  = 3
	LINEAR  = 4

p_inverse = op('params_inverse')

def onStart():
	return

def onCreate():
	return

def onExit():
	return

def onFrameStart(frame):
	return

def onFrameEnd(frame):

	print(p_inverse[0])


	return

def onPlayStateChange(state):
	return

def onDeviceChange():
	return

def onProjectPreSave():
	return

def onProjectPostSave():
	return

	