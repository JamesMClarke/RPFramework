/*
Author: Kerkkoh
First Edit: 17.4.2016
*/
for "_i" from 0 to 1 step 0 do 
{
	sleep 180;
	{
		if (underwater _x) then 
		{
			_random = (floor random 2) + 1;
			_x addItemCargoGlobal ["RPF_Items_Salema", _random]
		};
	}forEach RPF_fishingNets;
	//[0,0] nearObjects [RPF_fishingNet, 30000]
};