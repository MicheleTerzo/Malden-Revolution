// myUnit function spawns a grenadier
spawn_grenadier = {
    "B_Soldier_GL_F" createUnit [getmarkerPos "contractors_pos", group player, "myUnit = this"];
    
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
    myUnit addWeapon "rhs_weap_ak74mr_gp25";
    myUnit addprimaryWeaponItem "rhs_acc_uuk";
    myUnit addprimaryWeaponItem "acc_flashlight";
    myUnit addprimaryWeaponItem "optic_Arco_AK_blk_F";
    myUnit addprimaryWeaponItem "rhs_30Rnd_545x39_7N10_AK";
    myUnit addprimaryWeaponItem "rhs_VOG25";
    myUnit addWeapon "rhs_weap_pya";
    
    comment "Add containers";
    myUnit forceAdduniform "U_I_E_uniform_01_tanktop_F";
    myUnit addvest "V_PlateCarrier2_blk";
    
    comment "Add binoculars";
    myUnit addWeapon "binocular";
    
    comment "Add items to containers";
    myUnit addItemtouniform "FirstAidKit";
    for "_i" from 1 to 2 do {
        myUnit addItemtouniform "rhs_mag_9x19_17";
    };
    for "_i" from 1 to 2 do {
        myUnit addItemtovest "HandGrenade";
    };
    myUnit addItemtovest "SmokeShellBlue";
    myUnit addItemtovest "SmokeShellGreen";
    myUnit addItemtovest "SmokeShellorange";
    for "_i" from 1 to 7 do {
        myUnit addItemtovest "rhs_30Rnd_545x39_7N10_AK";
    };
    for "_i" from 1 to 6 do {
        myUnit addItemtovest "rhs_VOG25";
    };
    for "_i" from 1 to 2 do {
        myUnit addItemtovest "1Rnd_Smoke_Grenade_shell";
    };
    myUnit addheadgear "H_Watchcap_camo";
    
    comment "Add items";
    myUnit linkItem "ItemMap";
    myUnit linkItem "ItemCompass";
    myUnit linkItem "ItemWatch";
    myUnit linkItem "Itemradio";
    myUnit linkItem "ItemGPS";
    
    addswitchableUnit myUnit;
};