_halfworldSize = worldSize / 2;
_mapCenterposition = [_halfworldSize, _halfworldSize, 0];
_locations = nearestLocations [_mapCenterposition, ["NameCityCapital", "nameCity"], _halfworldSize];

systemChat "locations initialized";

createIconMarker = {
    params ["_loopindex", "_location"];

    _iconMarkerName = "iconCityMarker" + str _loopIndex;
    _iconMarkerPosition = locationposition _location;
    _currentIconMarker = createMarker [_iconMarkerName, _iconMarkerPosition];
    _currentIconMarker setMarkertype "loc_Ruin";
    _currentIconMarker setMarkerShadow true;
    _currentIconMarker setMarkerColor "ColorEAST";
};
createAreaMarker ={
    params ["_loopindex", "_location"];

    _areaMarkerName = "areaCityMarker" + str _loopIndex;
    _currentAreaMarker = createMarker [_areaMarkerName, locationposition _location];
    _currentAreaMarker setMarkerShape "ELLIPSE";
    _currentAreaMarker setMarkerBrush "Cross";
    _currentAreaMarker setMarkerSize [300, 300];
    _currentAreaMarker setMarkerAlpha 0.5;
    _currentAreaMarker setMarkerColor "ColorRed";

    
};



createTriggerFunction = {
    params ["_location"];

    _locationPosition = locationposition _location;
    _trigger = createTrigger ["NONE", _locationPosition];
    _trigger setTriggerArea [300,300,0,false,20];
    _trigger setTriggerActivation ["WEST", "PRESENT", true];
    _trigger setTriggerStatements ["this", "hint 'trigger on'", "hint 'trigger off'"];
};


{
    [_forEachIndex, _x] call createIconMarker;
    [_forEachIndex, _x] call createAreaMarker;
    [_x] call createTriggerFunction;
}forEach _locations;