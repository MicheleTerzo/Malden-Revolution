support_heli_obj sideChat "This is Eagle. We are RTB.";
playSound "rhs_usa_land_rc_11";
if (count transportMarkers > 0) then {
    {
        deleteMarker _x
    } forEach transportMarkers;
};
isAtBase = true;
support_heli_obj flyinHeight 10;

if (alive support_heli_obj) then {
    for "_i" from count waypoints support_heli_grp - 1 to 0 step -1 do
    {
        deleteWaypoint [support_heli_grp, _i];
    };
    _wp = support_heli_grp addWaypoint [getPos fob_helipad, 50];
    _wp setwaypointType "move";
    _wp setwaypointBehaviour "CARELESS";
    sleep 3;
    
    while {(alive support_heli_obj) && (!unitReady support_heli_obj)} do {
        sleep 1;
    };
    
    if ((alive support_heli_obj) && (unitReady support_heli_obj)) then {
        support_heli_obj land "land";
    } else {
        [west, "HQ"] sideChat "We have lost contact with Eagle. Transport is not available.";
    };
} else {
    [west, "HQ"] sideChat "We have lost contact with Eagle. Transport is not available.";
};