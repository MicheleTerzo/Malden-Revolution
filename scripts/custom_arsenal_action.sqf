#include "arsenal_cargo.sqf";

[arsenal_box, weapons_cargo, false, false] call BIS_fnc_addVirtualweaponCargo;
[arsenal_box, magazines_cargo, false, false] call BIS_fnc_addVirtualmagazineCargo;
[arsenal_box, items_cargo, false, false, 1, 0] call BIS_fnc_addVirtualitemCargo;
[arsenal_box, backpacks_cargo, false, false] call BIS_fnc_addVirtualbackpackCargo;

arsenal_action_id = [
    arsenal_box, 		// Object the action is attached to
    "Open Arsenal", // Title of the action
    "icons\holdAction_armor_ca.paa", // Idle icon shown on screen
    "icons\holdAction_armor_ca.paa", // Progress icon shown on screen
    "player distance arsenal_box < 3", // Condition for the action to be shown
    "player distance arsenal_box < 3", // Condition for the action to progress
    {}, // Code executed when action starts
    {}, // Code executed on every progress tick
    {
        ["Open", [false, arsenal_box]] call BIS_fnc_arsenal;
    }, // Code executed on completion
    {}, // Code executed on interrupted
    [], // Arguments passed to the scripts as _this select 3
    2, // action duration in seconds
    0, // priority
    false, // Remove on completion
    false // Show in unconscious state
] call BIS_fnc_holdactionAdd;