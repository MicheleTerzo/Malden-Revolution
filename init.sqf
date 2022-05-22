execVM "scripts\custom_arsenal_action.sqf";
execVM "scripts\hire_contractors_action.sqf";
execVM "scripts\task_managment.sqf";
execVM "scripts\locations.sqf";

enableHeliTransport = true;
transmitUnavailableTransport = false;

addMissionEventHandler ["teamSwitch", {
    params ["_previousUnit", "_newUnit"];
    _playergroup = group player;
    _playergroup selectLeader _newUnit;
}];

