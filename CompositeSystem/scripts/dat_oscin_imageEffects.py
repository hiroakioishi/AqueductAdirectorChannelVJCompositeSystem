# me - this DAT
# 
# dat - the DAT that received a message
# rowIndex - the row number the message was placed into
# message - an ascii representation of the data
#           Unprintable characters and unicode characters will
#           not be preserved. Use the 'bytes' parameter to get
#           the raw bytes that were sent.
# bytes - a byte array of the message.
# timeStamp - the arrival time component the OSC message
# address - the address component of the OSC message
# args - a list of values contained within the OSC message
# peer - a Peer object describing the originating message
#   peer.close()    #close the connection
#   peer.owner  #the operator to whom the peer belongs
#   peer.address    #network address associated with the peer
#   peer.port       #network port associated with the peer
#

imageEffects = op('container_imageEffects')

params_inverse              = imageEffects.op('params_inverse')
params_crappyEdgeDetection  = imageEffects.op('params_crappyEdgeDetection')
params_bokehDisc            = imageEffects.op('params_bokehDisc')
params_anaglyph             = imageEffects.op('params_anaglyph')
params_emInterference       = imageEffects.op('params_EMInterference')
params_horizontalBlur       = imageEffects.op('params_horizontalBlur')
params_radialBlur           = imageEffects.op('params_radialBlur')
params_radialBlur           = imageEffects.op('params_radialBlur')
params_edgeFilter           = imageEffects.op('params_edgeFilter')
params_noiseDistortion      = imageEffects.op('params_noiseDistortion')
params_pixelate             = imageEffects.op('params_pixelate')
params_frameSlide           = imageEffects.op('params_frameSlide')
params_frameOffset          = imageEffects.op('params_frameOffset')
params_noiseSliceDistortion = imageEffects.op('params_noiseSliceDistortion')
params_HSVColorModifier     = imageEffects.op('params_HSVColorModifier')

def reset():
	params_inverse.par.value0              = 0
	params_bokehDisc.par.value0            = 0
	params_anaglyph.par.value0             = 0
	params_emInterference.par.value0       = 0 
	params_horizontalBlur.par.value0       = 0
	params_radialBlur.par.value0           = 0
	params_HSVColorModifier.par.value0     = 0
	params_edgeFilter.par.value0           = 0
	params_noiseDistortion.par.value0      = 0
	params_pixelate.par.value0             = 0
	params_frameSlide.par.value0           = 0
	params_noiseSliceDistortion.par.value0 = 0
	params_crappyEdgeDetection.par.value0  = 0

def onReceiveOSC(dat, rowIndex, message, bytes, timeStamp, address, args, peer):
	
	# common
	if address == '/reset':
		reset()

	# inverse
	if address == '/inverseColor/mode':
		params_inverse.par.value0 = int  (args[0])
	if address == '/inverseColor/value':
		params_inverse.par.value1 = float(args[0])
	if address == '/inverseColor/random':
		params_inverse.par.value2 = float(args[0])
	if address == '/inverseColor/trigger':
		params_inverse.par.value3 = float(args[0])

	# crappyEdgeDetection
	if address == '/crappyEdgeDetection/mode':
		params_crappyEdgeDetection.par.value0 = int  (args[0])
	if address == '/crappyEdgeDetection/value':
		params_crappyEdgeDetection.par.value1 = float(args[0])
	if address == '/crappyEdgeDetection/random':
		params_crappyEdgeDetection.par.value2 = float(args[0])
	if address == '/crappyEdgeDetection/trigger':
		params_crappyEdgeDetection.par.value3 = float(args[0])
	if address == '/crappyEdgeDetection/inverse':
		params_crappyEdgeDetection.par.value5 = float(args[0])
	if address == '/crappyEdgeDetection/step':
		params_crappyEdgeDetection.par.value6 = float(args[0])

	# bokehDisc
	if address == '/bokehDisc/mode':
		params_bokehDisc.par.value0 = int  (args[0])
	if address == '/bokehDisc/value':
		params_bokehDisc.par.value1 = float(args[0])
	if address == '/bokehDisc/random':
		params_bokehDisc.par.value2 = float(args[0])
	if address == '/bokehDisc/trigger':
		params_bokehDisc.par.value3 = float(args[0])
	if address == '/bokehDisc/R':
		params_bokehDisc.par.value5 = float(args[0])
	if address == '/bokehDisc/A':
		params_bokehDisc.par.value6 = float(args[0])
	
	# anaglyph
	if address == '/anaglyph/mode':
		params_anaglyph.par.value0 = int  (args[0])
	if address == '/anaglyph/value':
		params_anaglyph.par.value1 = float(args[0])
	if address == '/anaglyph/random':
		params_anaglyph.par.value2 = float(args[0])
	if address == '/anaglyph/trigger':
		params_anaglyph.par.value3 = float(args[0])
	if address == '/anaglyph/offset':
		params_anaglyph.par.value5 = float(args[0])

	# EMInterference
	if address == '/emInterference/mode':
		params_emInterference.par.value0 = int  (args[0])
	if address == '/emInterference/value':
		params_emInterference.par.value1 = float(args[0])
	if address == '/emInterference/random':
		params_emInterference.par.value2 = float(args[0])
	if address == '/emInterference/trigger':
		params_emInterference.par.value3 = float(args[0])
	if address == '/emInterference/offset':
		params_emInterference.par.value5 = float(args[0])
	if address == '/emInterference/speed':
		params_emInterference.par.value6 = float(args[0])	

	# horizontalBlur
	if address == '/horizontalBlur/mode':
		params_horizontalBlur.par.value0 = int  (args[0])
	if address == '/horizontalBlur/value':
		params_horizontalBlur.par.value1 = float(args[0])
	if address == '/horizontalBlur/random':
		params_horizontalBlur.par.value2 = float(args[0])
	if address == '/horizontalBlur/trigger':
		params_horizontalBlur.par.value3 = float(args[0])

	# radialBlur
	if address == '/radialBlur/mode':
		params_radialBlur.par.value0 = int  (args[0])
	if address == '/radialBlur/value':
		params_radialBlur.par.value1 = float(args[0])
	if address == '/radialBlur/random':
		params_radialBlur.par.value2 = float(args[0])
	if address == '/radialBlur/trigger':
		params_radialBlur.par.value3 = float(args[0])
	if address == '/radialBlur/linearScale':
		params_radialBlur.par.value5 = float(args[0])

	# edgeFilter
	if address == '/edgeFilter/mode':
		params_edgeFilter.par.value0 = int  (args[0])
	if address == '/edgeFilter/value':
		params_edgeFilter.par.value1 = float(args[0])
	if address == '/edgeFilter/random':
		params_edgeFilter.par.value2 = float(args[0])
	if address == '/edgeFilter/trigger':
		params_edgeFilter.par.value3 = float(args[0])
	if address == '/edgeFilter/color':
		params_edgeFilter.par.value5 = float(args[0])
		params_edgeFilter.par.value6 = float(args[1])
		params_edgeFilter.par.value7 = float(args[2])
	if address == '/edgeFilter/fillRate':
		params_edgeFilter.par.value8 = float(args[0])

	# noiseDistortion
	if address == '/noiseDistortion/mode':
		params_noiseDistortion.par.value0 = int  (args[0])
	if address == '/noiseDistortion/value':
		params_noiseDistortion.par.value1 = float(args[0])
	if address == '/noiseDistortion/random':
		params_noiseDistortion.par.value2 = float(args[0])
	if address == '/noiseDistortion/trigger':
		params_noiseDistortion.par.value3 = float(args[0])
	if address == '/noiseDistortion/amplitude':
		params_noiseDistortion.par.value5 = float(args[0])
	if address == '/noiseDistortion/frequency':
		params_noiseDistortion.par.value6 = float(args[0])
	if address == '/noiseDistortion/speed':
		params_noiseDistortion.par.value7 = float(args[0])

	# pixelate
	if address == '/pixelate/mode':
		params_pixelate.par.value0 = int  (args[0])
	if address == '/pixelate/value':
		params_pixelate.par.value1 = float(args[0])
	if address == '/pixelate/random':
		params_pixelate.par.value2 = float(args[0])
	if address == '/pixelate/trigger':
		params_pixelate.par.value3 = float(args[0])
	if address == '/pixelate/cellSize':
		params_pixelate.par.value5 = float(args[0])
	if address == '/pixelate/linear':
		params_pixelate.par.value6 = float(args[0])

	# frameSlide
	if address == '/frameSlide/mode':
		params_frameSlide.par.value0 = int  (args[0])
	if address == '/frameSlide/value':
		params_frameSlide.par.value1 = float(args[0])
	if address == '/frameSlide/random':
		params_frameSlide.par.value2 = float(args[0])
	if address == '/frameSlide/trigger':
		params_frameSlide.par.value3 = float(args[0])
	if address == '/frameSlide/divX':
		params_frameSlide.par.value5 = int  (args[0])
	if address == '/frameSlide/divY':
		params_frameSlide.par.value6 = int  (args[0])
	
	# frameOffset
	#if address == '/frameOffset/mode':
	#	params_frameOffset.par.value0 = int  (args[0])
	#if address == '/frameOffset/value':
	#	params_frameOffset.par.value1 = float(args[0])
	#if address == '/frameOffset/random':
	#	params_frameOffset.par.value2 = float(args[0])
	#if address == '/frameOffset/trigger':
	#	params_frameOffset.par.value3 = float(args[0])
	if address == '/frameOffset/targetOffsetX':
		params_frameOffset.par.value2 = int  (args[0])
	if address == '/frameOffset/targetOffsetY':
		params_frameOffset.par.value3 = int  (args[0])
	if address == '/frameOffset/targetOffsetZ':
		params_frameOffset.par.value6 = int  (args[0])
	if address == '/frameOffset/amp':
		params_frameOffset.par.value4 = float(args[0])

	# noiseSliceDistortion
	if address == '/noiseSliceDistortion/mode':
		params_noiseSliceDistortion.par.value0 = int  (args[0])
	if address == '/noiseSliceDistortion/value':
		params_noiseSliceDistortion.par.value1 = float(args[0])
	if address == '/noiseSliceDistortion/random':
		params_noiseSliceDistortion.par.value2 = float(args[0])
	if address == '/noiseSliceDistortion/trigger':
		params_noiseSliceDistortion.par.value3 = float(args[0])
	if address == '/noiseSliceDistortion/offset':
		params_noiseSliceDistortion.par.value5 = float(args[0])
	if address == '/noiseSliceDistortion/frequency':
		params_noiseSliceDistortion.par.value6 = float(args[0])
	if address == '/noiseSliceDistortion/rate':
		params_noiseSliceDistortion.par.value7 = float(args[0])
	if address == '/noiseSliceDistortion/rateLinearScale':
		params_noiseSliceDistortion.par.value8 = float(args[0])

	# HSVColorModifier
	if address == '/HSVColorModifier/mode':
		params_HSVColorModifier.par.value0 = int  (args[0])
	if address == '/HSVColorModifier/value':
		params_HSVColorModifier.par.value1 = float(args[0])
	if address == '/HSVColorModifier/random':
		params_HSVColorModifier.par.value2 = float(args[0])
	if address == '/HSVColorModifier/trigger':
		params_HSVColorModifier.par.value3 = float(args[0])
	if address == '/HSVColorModifier/hueScale':
		params_HSVColorModifier.par.value4 = float(args[0])
	if address == '/HSVColorModifier/hueOffset':
		params_HSVColorModifier.par.value5 = float(args[0])
	if address == '/HSVColorModifier/saturationScale':
		params_HSVColorModifier.par.value6 = float(args[0])
	if address == '/HSVColorModifier/saturationOffset':
		params_HSVColorModifier.par.value7 = float(args[0])
	if address == '/HSVColorModifier/valueScale':
		params_HSVColorModifier.par.value8 = float(args[0])
	if address == '/HSVColorModifier/valueOffset':
		params_HSVColorModifier.par.value9 = float(args[0])

	return
	