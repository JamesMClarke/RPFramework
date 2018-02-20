/*
Author: Kerkkoh
First Edit: 22.4.2016
*/
//edit this to change the radius of the jail
int rad = 50;

_menuItemsPlayer = [
	[
		["player getVariable ['cop', 0] > 0", "((position player) distance (getMarkerPos 'jail')) <= rad", "isPlayer cursorObject", "(player distance cursorObject) <= 2"],
		[(localize "STR_RPF_MODULES_JAIL_ARREST"), "[cursorObject] call ClientModules_fnc_openArrestMenu"]
	]
];_menuItemsOther = [
	[
		["((position player) distance (getMarkerPos 'jail')) <= rad", "player getVariable ['cop', 0] <= 0", "(isNil {player getVariable 'jailed'}) || !(player getVariable 'jailed')"],
		[(localize "STR_RPF_MODULES_JAIL_BREAKOUT"), "[] call ClientModules_fnc_openJailBreakout"]
	],
	[
		["player getVariable ['cop', 0] > 0", "((position player) distance (getMarkerPos 'jail')) <= rad"],
		[(localize "STR_RPF_MODULES_JAIL_FREEPRISONERS"), "[] call ClientModules_fnc_openFreePrisoners"]
	]
];
["STR_RPF_CORE_INTERACTION_CAT_PLAYER", _menuItemsPlayer]call Client_fnc_addSubInteractions;
["STR_RPF_CORE_INTERACTION_CAT_OTHER", _menuItemsOther]call Client_fnc_addSubInteractions;