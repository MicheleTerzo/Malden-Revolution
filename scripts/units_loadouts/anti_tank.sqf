// myUnit function spawns an anti tank unit
spawn_anti_tank = {
    "B_soldier_AT_F" createUnit [getmarkerPos "contractors_pos", group player, "myUnit = this"];
    
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
    myUnit addprimaryWeaponItem "rhs_acc_rakursPM";
    myUnit addprimaryWeaponItem "rhs_30Rnd_545x39_7N10_AK";
    myUnit addWeapon "rhs_weap_rpg7";
    myUnit addsecondaryWeaponItem "rhs_rpg7_PG7VL_mag";
    myUnit addWeapon "rhs_weap_pya";
    myUnit addHandgunItem "rhs_mag_9x19_17";
    
    comment "Add containers";
    myUnit forceAdduniform "U_I_E_uniform_01_tanktop_F";
    myUnit addvest "V_Tacvest_oli";
    myUnit addbackpack "B_Carryall_oli";
    
    comment "Add binoculars";
    myUnit addWeapon "binocular";
    
    comment "Add items to containers";
    myUnit addItemtouniform "FirstAidKit";
    for "_i" from 1 to 2 do {
        myUnit addItemtouniform "rhs_mag_9x19_17";
    };
    for "_i" from 1 to 8 do {
        myUnit addItemtovest "rhs_30Rnd_545x39_7N10_AK";
    };
    myUnit addItemtovest "HandGrenade";
    myUnit addItemtovest "SmokeShellBlue";
    for "_i" from 1 to 3 do {
        myUnit addItemtobackpack "rhs_rpg7_PG7VL_mag";
    };
    myUnit addheadgear "H_Cap_oli_hs";
    myUnit addgoggles "G_Bandanna_oli";
    
    comment "Add items";
    myUnit linkItem "ItemMap";
    myUnit linkItem "ItemCompass";
    myUnit linkItem "ItemWatch";
    myUnit linkItem "Itemradio";
    myUnit linkItem "ItemGPS";
    
    addswitchableUnit myUnit;
};