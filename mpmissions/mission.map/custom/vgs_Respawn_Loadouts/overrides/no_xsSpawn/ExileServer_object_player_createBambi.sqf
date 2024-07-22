/**
 * ExileServer_object_player_createBambi
 *
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 * 64Bit Conversion File Header (Extdb3) - Validatior
 */
 
private["_sessionID", "_requestingPlayer", "_spawnLocationMarkerName", "_bambiPlayer", "_accountData", "_escapeEnabled", "_direction", "_position", "_spawnAreaPosition", "_spawnAreaRadius", "_clanID", "_clanData", "_clanGroup", "_escapeAccountdata", "_devFriendlyMode", "_devs", "_parachuteNetID", "_spawnType", "_parachuteObject"];
_sessionID = _this select 0;
_requestingPlayer = _this select 1;
_spawnLocationMarkerName = _this select 2;
_bambiPlayer = _this select 3;
_accountData = _this select 4;
_escapeEnabled = getNumber(configFile >> "CfgSettings" >> "Escape" >> "enableEscape") isEqualTo 1;
_direction = random 360;
if (_escapeEnabled) then 
{
	_position = getArray(configFile >> "CfgSettings" >> "Escape" >> worldName >> "startingLocation");
	(uniformContainer _bambiPlayer) call ExileClient_util_containerCargo_clear;
	_bambiPlayer linkItem "ItemGPS";
}
else
{
	if ((count ExileSpawnZoneMarkerPositions) isEqualTo 0) then 
	{
		_position = call ExileClient_util_world_findCoastPosition;
		if ((toLower worldName) isEqualTo "namalsk") then 
		{
			while {(_position distance2D [76.4239, 107.141, 0]) < 100} do 
			{
				_position = call ExileClient_util_world_findCoastPosition;
			};
		};
	}
	else 
	{
		_spawnAreaPosition = getMarkerPos _spawnLocationMarkerName;
		_spawnAreaRadius = getNumber(configFile >> "CfgSettings" >> "BambiSettings" >> "spawnZoneRadius");
		_position = [_spawnAreaPosition, _spawnAreaRadius] call ExileClient_util_math_getRandomPositionInCircle;
		while {surfaceIsWater _position} do 
		{
			_position = [_spawnAreaPosition, _spawnAreaRadius] call ExileClient_util_math_getRandomPositionInCircle;
		};
	};
};
_name = name _requestingPlayer;
_clanID = (_accountData select 3);
if !((typeName _clanID) isEqualTo "SCALAR") then
{
	_clanID = -1;
	_clanData = [];
}
else
{
	_clanData = missionNamespace getVariable [format ["ExileServer_clan_%1",_clanID],[]];
	if(isNull (_clanData select 5))then
	{
		_clanGroup = createGroup independent;
		_clanData set [5,_clanGroup];
		_clanGroup setGroupIdGlobal [_clanData select 0];
		missionNameSpace setVariable [format ["ExileServer_clan_%1",_clanID],_clanData];
	}
	else
	{
		_clanGroup = (_clanData select 5);
	};
	[_bambiPlayer] joinSilent _clanGroup;
};
_bambiPlayer setPosATL [_position select 0,_position select 1,0];
_bambiPlayer disableAI "FSM";
_bambiPlayer disableAI "MOVE";
_bambiPlayer disableAI "AUTOTARGET";
_bambiPlayer disableAI "TARGET";
_bambiPlayer disableAI "CHECKVISIBLE";
_bambiPlayer setDir _direction;
_bambiPlayer setName _name;
_bambiPlayer setVariable ["ExileMoney", 0, true]; 
_bambiPlayer setVariable ["ExileScore", (_accountData select 0)];
_bambiPlayer setVariable ["ExileKills", (_accountData select 1)];
_bambiPlayer setVariable ["ExileDeaths", (_accountData select 2)];
_bambiPlayer setVariable ["ExileClanID", _clanID];
_bambiPlayer setVariable ["ExileClanData", _clanData];
_bambiPlayer setVariable ["ExileHunger", 100];
_bambiPlayer setVariable ["ExileThirst", 100];
_bambiPlayer setVariable ["ExileTemperature", 37];
_bambiPlayer setVariable ["ExileWetness", 0];
_bambiPlayer setVariable ["ExileAlcohol", 0]; 
_bambiPlayer setVariable ["ExileName", _name]; 
_bambiPlayer setVariable ["ExileOwnerUID", getPlayerUID _requestingPlayer]; 
_bambiPlayer setVariable ["ExileIsBambi", !_escapeEnabled];
_bambiPlayer setVariable ["ExileXM8IsOnline", false, true];
_bambiPlayer setVariable ["ExileLocker", (_accountData select 4), true];
if (_escapeEnabled) then 
{
	_escapeAccountdata = format["getEscapeAccountStats:%1", getPlayerUID _requestingPlayer] call ExileServer_system_database_query_selectSingle;
	_bambiPlayer setVariable ["ExileWins", (_escapeAccountdata select 0)];
	_bambiPlayer setVariable ["ExileMatches", (_escapeAccountdata select 1)];
};
_devFriendlyMode = getNumber (configFile >> "CfgSettings" >> "ServerSettings" >> "devFriendyMode");
if (_devFriendlyMode isEqualTo 1) then 
{
	_devs = getArray (configFile >> "CfgSettings" >> "ServerSettings" >> "devs");
	{
		if ((getPlayerUID _requestingPlayer) isEqualTo (_x select 0))exitWith 
		{
			if ((name _requestingPlayer) isEqualTo (_x select 1))then
			{
				_bambiPlayer setVariable ["ExileMoney", 500000, true];
				_bambiPlayer setVariable ["ExileScore", 100000];
			};
		};
	}
	forEach _devs;
};
_parachuteNetID = "";
if ((getNumber(configFile >> "CfgSettings" >> "BambiSettings" >> "parachuteSpawning")) isEqualTo 1 && {!(_escapeEnabled)}) then
{
	_position set [2, getNumber(configFile >> "CfgSettings" >> "BambiSettings" >> "parachuteDropHeight")]; 
	if ((getNumber(configFile >> "CfgSettings" >> "BambiSettings" >> "haloJump")) isEqualTo 1) then
	{
		_bambiPlayer addBackpackGlobal "B_Parachute";
		_bambiPlayer setPosATL _position;
		_spawnType = 2;
	}
	else 
	{
		_parachuteObject = createVehicle ["Steerable_Parachute_F", _position, [], 0, "CAN_COLLIDE"];
		_parachuteObject setDir _direction;
		_parachuteObject setPosATL _position;
		_parachuteObject enableSimulationGlobal true;
		_parachuteNetID = netId _parachuteObject;
		_spawnType = 1;
	};
}
else
{
	_spawnType = 0;
};
if (getNumber(missionConfigFile >> "CfgSimulation" >> "enableDynamicSimulation") isEqualTo 1) then 
{
	if ((canTriggerDynamicSimulation _bambiPlayer) isEqualTo false) then
	{
		_bambiPlayer triggerDynamicSimulation true;
	  	_bambiPlayer enableDynamicSimulation true;
	};
};
_bambiPlayer addMPEventHandler ["MPKilled", {_this call ExileServer_object_player_event_onMpKilled}];
if !(_escapeEnabled) then 
{
	/////////VGS Loadouts Code Start//////////////
	private _loadoutCost = _requestingPlayer getVariable ["vgsLoadoutCost", 0];
	private _newBalance = (_accountData select 4) - _loadoutCost;
	_bambiPlayer setVariable ["ExileLocker", _newBalance, true];
	_bambiPlayer setUnitLoadout ((_requestingPlayer getVariable "VGSRespawnLoadout"));
	format["updateLocker:%1:%2", _newBalance, (getPlayerUID _requestingPlayer)] call ExileServer_system_database_query_fireAndForget;
	/////////VGS Loadouts Code End//////////////

	_bambiPlayer call ExileServer_object_player_database_insert;
	_bambiPlayer call ExileServer_object_player_database_update;
};
[
	_sessionID, 
	"createPlayerResponse", 
	[
		_bambiPlayer, 
		_parachuteNetID, 
		str (_accountData select 0),
		(_accountData select 1),
		(_accountData select 2),
		100,
		100,
		0,
		(getNumber (configFile >> "CfgSettings" >> "BambiSettings" >> "protectionDuration")) * 60, 
		_clanData,
		_spawnType
	]
] 
call ExileServer_system_network_send_to;
if (_escapeEnabled) then 
{
	[
		_sessionID, 
		"escapeVariables", 
		[
			(_escapeAccountdata select 0),
			(_escapeAccountdata select 1)
		]
	] 
	call ExileServer_system_network_send_to;
};
[_sessionID, _bambiPlayer] call ExileServer_system_session_update;
true
