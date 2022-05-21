openMap true;
hint "Select the landing zone.";

private _click_handler = addMissionEventHandler ["MapsingleClick", {
    _objects = nearestTerrainObjects [_this select 1, [], 8];
    
    if (count _objects == 0) then {
        support_heli_obj sideChat "Coordinates received, transport incoming.";
        playSound "rhs_usa_land_rc_10";
        [_this select 1] spawn helicopter_land;
        isAtBase = false;
        removeAllMissionEventHandlers "MapsingleClick";
    } else {
        hint "The LZ selected is not clear. select another place.";
    }
}];

// "mp_groundsupport_01_transportrequested_BHQ_2"
// "mp_groundsupport_30_transportationnotattended_BHQ_0"
// "mp_groundsupport_65_chopperdown_BHQ_1"

helicopter_land = {
    params["_destination"];
    if (count transportMarkers > 0) then {
        {
            deleteMarker _x
        } forEach transportMarkers;
    };
    _marker = createMarker["LZ", _destination];
    _marker setMarkertype "hd_pickup_noShadow";
    _marker setMarkertext "landing Zone";
    _marker setMarkerColor "ColorWhite";
    transportMarkers pushBack _marker;
    
    _landing_pad = "land_HelipadEmpty_F" createvehicle _destination;
    
    support_heli_obj flyinHeight 10;
    
    if (alive support_heli_obj) then {
        for "_i" from count waypoints support_heli_grp - 1 to 0 step -1 do
        {
            deleteWaypoint [support_heli_grp, _i];
        };
        _wp = support_heli_grp addWaypoint [_destination, 50];
        _wp setwaypointType "move";
        _wp setwaypointBehaviour "CARELESS";
        sleep 3;
        
        while {(alive support_heli_obj) && (!unitReady support_heli_obj)} do {
            sleep 1;
        };
        
        if ((alive support_heli_obj) && (unitReady support_heli_obj)) then {
            support_heli_obj sideChat "Transport arrived at destination, waiting for further instructions.";
            support_heli_obj land "GET in";
            sleep 15;
            deletevehicle _landing_pad;
        } else {
            [west, "HQ"] sideChat "We have lost contact with Eagle. Transport is not available.";
        };
    } else {
        [west, "HQ"] sideChat "We have lost contact with Eagle. Transport is not available.";
    };
};