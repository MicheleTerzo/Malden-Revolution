// myUnit function spawns a machine_gunner
spawn_machine_gunner = {
    "B_Soldier_AR_F" createUnit [getmarkerPos "contractors_pos", group player, "myUnit = this"];
    
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
    myUnit addWeapon "rhs_weap_pkp";
    myUnit addprimaryWeaponItem "rhs_acc_pkas_pkp";
    myUnit addprimaryWeaponItem "rhs_100Rnd_762x54mmR";
    myUnit addWeapon "rhs_weap_pya";
    
    comment "Add containers";
    myUnit forceAdduniform "U_I_E_uniform_01_tanktop_F";
    myUnit addvest "V_CarrierRigKBT_01_light_Olive_F";
    myUnit addbackpack "B_FieldPack_green_F";
    
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
    for "_i" from 1 to 2 do {
        myUnit addItemtovest "1Rnd_Smoke_Grenade_shell";
    };
    myUnit addItemtovest "rhs_100Rnd_762x54mmR";
    myUnit addItemtobackpack "rhs_100Rnd_762x54mmR_green";
    myUnit addItemtobackpack "rhs_100Rnd_762x54mmR";
    myUnit addheadgear "H_HelmetB_light_wdl";
    myUnit addgoggles "rhs_balaclava1_olive";
    
    comment "Add items";
    myUnit linkItem "ItemMap";
    myUnit linkItem "ItemCompass";
    myUnit linkItem "ItemWatch";
    myUnit linkItem "Itemradio";
    myUnit linkItem "ItemGPS";
    
    addswitchableUnit myUnit;
};