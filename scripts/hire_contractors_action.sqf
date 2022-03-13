#include "units_loadouts\rifleman.sqf";
#include "units_loadouts\medic.sqf";
#include "units_loadouts\marksman.sqf";
#include "units_loadouts\machine_gunner.sqf";
#include "units_loadouts\grenadier.sqf";
#include "units_loadouts\anti_tank.sqf";
#include "units_loadouts\engineer.sqf";

/**
The function used to spawn a new unit.
Starts empty and it is assigned dynamically at the start of spawn_contractors_action by detect_unit_to_spawn.
*/
spawn_function = {};

/**
Used to decide dynamically which unit to spawn to ensure that player's group always has a balanced mix of unit types.
*/
detect_unit_to_spawn = {
    player_group_units = units group player;
    unit_types = [];
    {
        unit_types pushBack typeOf _x;
        systemChat str unit_types;
    } forEach player_group_units;
    
    if (!("B_medic_F" in unit_types)) then {
        systemChat "medic";
        spawn_function = spawn_medic;
    };
    if (!("B_Soldier_GL_F" in unit_types)) then {
        systemChat "grenadier";
        spawn_function = spawn_grenadier;
    };
    if (!("B_Soldier_F" in unit_types)) then {
        systemChat "rifleman";
        spawn_function = spawn_rifleman;
    };
    if (!("B_soldier_M_F" in unit_types)) then {
        systemChat "marksman";
        spawn_function = spawn_marksman;
    };
    if (!("B_soldier_AR_F" in unit_types)) then {
        systemChat "autogunner";
        spawn_function = spawn_machine_gunner;
    };
    if (!("B_soldier_AT_F" in unit_types)) then {
        systemChat "Antitank";
        spawn_function = spawn_anti_tank;
    };
    if (!("B_engineer_F" in unit_types)) then {
        systemChat "engineer";
        spawn_function = spawn_engineer;
    };
};

/**
Creates the action to spawn new units into the player's squad.
laptop is the variable used to attach the action to an object.
*/
spawn_contractors_action = [
    laptop, 		// Object the action is attached to
    "Hire Contractor", // Title of the action
    "icons\holdAction_meet_ca.paa", // Idle icon shown on screen
    "icons\holdAction_meet_ca.paa", // Progress icon shown on screen
    "true", // Condition for the action to be shown
    "count units group player <= 7", // Condition for the action to progress
    {
        call detect_unit_to_spawn;
    }, // Code executed when action starts
    {}, // Code executed on every progress tick
    {
        call spawn_function;
    }, // Code executed on completion
    {
        if (count units group player > 8) then {
            hint "Hai gia tutte le unita'";
        };
    }, // Code executed on interrupted
    [], // Arguments passed to the scripts as _this select 3
    2, // action duration in seconds
    0, // priority
    false, // Remove on completion
    false // Show in unconscious state
] call BIS_fnc_holdactionAdd;