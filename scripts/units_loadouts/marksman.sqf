// myUnit function spawns a marksman
spawn_marksman = {
    "B_soldier_M_F" createUnit [getmarkerPos "contractors_pos", group player, "myUnit = this"];
    
    comment "Remove existing items";
    removeAllweapons myUnit;
    removeAllItems myUnit;
    removeAllAssignedItems myUnit;
    removeuniform myUnit;
    removevest myUnit;
    removeBackpack myUnit;
    removeHeadgear myUnit;
    removeGoggles myUnit;
    
    comment "Add weapons";
    myUnit addWeapon "rhs_weap_svds_npz";
    myUnit addprimaryWeaponItem "rhs_acc_tgpv2";
    myUnit addprimaryWeaponItem "optic_DMS";
    myUnit addprimaryWeaponItem "rhs_10Rnd_762x54mmR_7N1";
    myUnit addWeapon "rhs_weap_pya";
    
    comment "Add containers";
    myUnit forceAdduniform "U_I_G_resistanceleader_F";
    myUnit addvest "rhsgref_otv_khaki";
    
    comment "Add binoculars";
    myUnit addWeapon "Rangefinder";
    
    comment "Add items to containers";
    myUnit addItemtouniform "FirstAidKit";
    for "_i" from 1 to 2 do {
        myUnit addItemtouniform "rhs_mag_9x19_17";
    };
    myUnit addItemtovest "HandGrenade";
    myUnit addItemtovest "SmokeShellBlue";
    for "_i" from 1 to 2 do {
        myUnit addItemtovest "1Rnd_Smoke_Grenade_shell";
    };
    for "_i" from 1 to 12 do {
        myUnit addItemtovest "rhs_10Rnd_762x54mmR_7N1";
    };
    myUnit addItemtovest "SmokeShellGreen";
    myUnit addheadgear "H_Booniehat_mgrn";
    myUnit addgoggles "G_Bandanna_oli";
    
    comment "Add items";
    myUnit linkItem "ItemMap";
    myUnit linkItem "ItemCompass";
    myUnit linkItem "ItemWatch";
    myUnit linkItem "Itemradio";
    myUnit linkItem "ItemGPS";
    
    addswitchableUnit myUnit;
};