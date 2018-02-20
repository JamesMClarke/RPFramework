/*
Author: Kerkkoh
First Edit: 5.12.2016

Array format: [prisoners (insert an empty array), position, doesn't have a prisoner (insert true by default)]
This array is not in the config since it's an in-memory store for inmates
*/

[]call ServerModules_fnc_initJailObjects;

RPF_JailCells = [
	[[], [2871.9,4569.5,0], true]
];

diag_log (localize "STR_RPF_JAIL_INIT");