//	@file Version: 1.1
//	@file Name: vehicleSpawning.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, modded by AgentRev
//	@file Created: 20/11/2012 05:19
//	@file Args:

if(!X_Server) exitWith {};

private ["_counter"];

_counter = 0;

for "_i1" from 0 to 134 step 2 do
{
	[getMarkerPos format ["Spawn_%1", _i1]] call vehicleCreation;
	_counter = _counter + 1;
};

diag_log format["WASTELAND SERVER - %1 Vehicles Spawned",_counter];
