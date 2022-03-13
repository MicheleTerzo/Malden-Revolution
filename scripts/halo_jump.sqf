halo_jump = {
    openMap true;
    private _click_handler = addMissionEventHandler["MapsingleClick", {
        [1, "BLACK", 15] call BIS_fnc_fadeEffect;
        _position = _this select 1;
        {
            _x setPosASL [_position select 0, _position select 1, 500];
            [_x, 2500] spawn BIS_fnc_halo;
        } forEach units group player;
        removeAllMissionEventHandlers "Map";
        openMap [false, false];
    }];
    private _map_handler = addMissionEventHandler["Map", {
        if (!(_this select 0)) then {
            removeAllMissionEventHandlers "MapsingleClick";
            hint "Halo insertion aborted."
        }
    }];
};

halo_jump_action = [
    support_heli_obj, 		// Object the action is attached to
    "HALO insertion", // Title of the action
    "icons\holdAction_takeoff_ca.paa", // Idle icon shown on screen
    "icons\holdAction_takeoff_ca.paa", // Progress icon shown on screen
    "isAtBase && ((player distance support_heli_obj) < 7)", // Condition for the action to be shown
    "isAtBase && ((player distance support_heli_obj) < 7)", // Condition for the action to progress
    {}, // Code executed when action starts
    {}, // Code executed on every progress tick
    {
        call halo_jump;
    }, // Code executed on completion
    {}, // Code executed on interrupted
    [], // Arguments passed to the scripts as _this select 3
    2, // action duration in seconds
    0, // priority
    false, // Remove on completion
    false // Show in unconscious state
] call BIS_fnc_holdactionAdd;