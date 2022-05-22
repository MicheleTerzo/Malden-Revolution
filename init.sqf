addMissionEventHandler ["TeamSwitch", {
	params ["_previousUnit", "_newUnit"];
	_playerGroup = group player;
	_playerGroup selectLeader _newUnit;
}];