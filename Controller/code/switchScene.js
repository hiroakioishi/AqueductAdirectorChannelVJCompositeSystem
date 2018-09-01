inlets  = 2;
outlets = 2;

var msg_int = function(in_val)
{
	switch(this.inlet)
	{
		case 0:
			
			switch(in_val)
			{
				case 0:
					outlet(0, [1, 0, 0]);
					break;
				case 1:
					outlet(0, [0, 1, 0]);
					break;
				case 2:
					outlet(0, [0, 0, 1]);
					break;
				default:
					break;				
			}
			
			break;
			
		case 1:
		
			switch(in_val)
			{
				case 0:
					outlet(1, [1, 0, 0]);
					break;
				case 1:
					outlet(1, [0, 1, 0]);
					break;
				case 2:
					outlet(1, [0, 0, 1]);
					break;
				default:
					break;				
			}
		
			break;
			
		default:
		
			break;		
	}
}