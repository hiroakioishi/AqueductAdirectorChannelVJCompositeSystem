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

def onReceiveOSC(dat, rowIndex, message, bytes, timeStamp, address, args, peer):
	if address == '/audio/fft/8':
		tableFFT8 = op('table_audio_fft_8')
		for i in range(8):
			tableFFT8[0, i] = float(args[i])
	"""
	if address == '/audio/spectrum/raw/128':
		tableRaw128 = op('table_audio_raw_128')
		for i in range(128):
			tableRaw128[0, i] = float(args[i])
	"""
	return
	