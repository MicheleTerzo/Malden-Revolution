// This function spawns a medic
spawn_medic = {
    "B_medic_F" createUnit [getmarkerPos "contractors_pos", group player, "myUnit = this"];
    
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
    myUnit addWeapon "rhs_weap_ak74mr";
    myUnit addprimaryWeaponItem "rhs_acc_uuk";
    myUnit addprimaryWeaponItem "acc_flashlight";
    myUnit addprimaryWeaponItem "optic_Arco_AK_blk_F";
    myUnit addprimaryWeaponItem "rhs_30Rnd_545x39_7N10_AK";
    myUnit addWeapon "rhs_weap_pya";
    
    comment "Add containers";
    myUnit forceAdduniform "U_I_L_uniform_01_deserter_F";
    myUnit addvest "V_PlateCarrier1_blk";
    myUnit addbackpack "B_FieldPack_green_F";
    
    comment "Add binoculars";
    myUnit addWeapon "binocular";
    
    comment "Add items to containers";
    myUnit addItemtouniform "FirstAidKit";
    for "_i" from 1 to 2 do {
        myUnit addItemtouniform "rhs_mag_9x19_17";
    };
    myUnit addItemtouniform "rhs_30Rnd_545x39_7N10_AK";
    for "_i" from 1 to 2 do {
        myUnit addItemtovest "HandGrenade";
    };
    myUnit addItemtovest "SmokeShellBlue";
    for "_i" from 1 to 7 do {
        myUnit addItemtovest "rhs_30Rnd_545x39_7N10_AK";
    };
    myUnit addItemtovest "SmokeShellGreen";
    myUnit addItemtovest "SmokeShellorange";
    myUnit addItemtobackpack "Medikit";
    myUnit addheadgear "H_Cap_headphones";
    myUnit addgoggles "rhs_googles_clear";
    
    comment "Add items";
    myUnit linkItem "ItemMap";
    myUnit linkItem "ItemCompass";
    myUnit linkItem "ItemWatch";
    myUnit linkItem "Itemradio";
    myUnit linkItem "ItemGPS";
    
    addswitchableUnit myUnit;
};