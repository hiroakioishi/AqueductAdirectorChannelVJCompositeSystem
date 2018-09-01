inlets  = 3;
outlets = 3;

var targetOffsetX = 0;
var targetOffsetY = 0;
var targetOffsetZ = 0;

var reset = function()
{
	targetOffsetX = 0;
	targetOffsetY = 0;
	targetOffsetZ = 0;
	outlet(0, targetOffsetX);
	outlet(1, targetOffsetY);
	outlet(2, targetOffsetZ);
}

var random = function()
{
	rndXorY = Math.random();
	rndX = Math.random();
	rndY = Math.random();
	
	
	if (rndXorY < 0.5)
	{
		if (rndX < 0.5)
		{
			targetOffsetX++;
		}
		else
		{
			targetOffsetX--;
		}
		outlet(0, targetOffsetX);
	}
	else
	{
		if (rndY < 0.5)
		{
			targetOffsetY++;
		}
		else
		{
			targetOffsetY--;
		}
		outlet(1, targetOffsetY);
	}
}

var msg_int = function(in_val)
{
	switch(this.inlet)
	{
		case 0:
			targetOffsetX += in_val;
			break;
		case 1:
			targetOffsetY += in_val;
			break;
		case 2:
			targetOffsetZ += in_val;
			break;
		default:
			break;
	}
	outlet(0, targetOffsetX);
	outlet(1, targetOffsetY);
	outlet(2, targetOffsetZ);
}