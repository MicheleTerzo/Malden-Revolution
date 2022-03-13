// myUnit function spawns an engineer
spawn_engineer = {
    "B_engineer_F" createUnit [getmarkerPos "contractors_pos", group player, "myUnit = this"];
    
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
    myUnit addWeapon "rhs_weap_asval_grip_npz";
    myUnit addprimaryWeaponItem "rhs_acc_2dpZenit_ris";
    myUnit addprimaryWeaponItem "optic_Arco_AK_blk_F";
    myUnit addprimaryWeaponItem "rhs_20rnd_9x39mm_SP5";
    myUnit addWeapon "rhs_weap_pya";
    myUnit addHandgunItem "rhs_mag_9x19_17";
    
    comment "Add containers";
    myUnit forceAdduniform "U_I_L_uniform_01_deserter_F";
    myUnit addvest "V_Tacvest_oli";
    myUnit addbackpack "B_AssaultPack_blk";
    
    comment "Add binoculars";
    myUnit addWeapon "binocular";
    
    comment "Add items to containers";
    myUnit addItemtouniform "FirstAidKit";
    for "_i" from 1 to 2 do {
        myUnit addItemtouniform "rhs_mag_9x19_17";
    };
    myUnit addItemtovest "HandGrenade";
    myUnit addItemtovest "SmokeShellBlue";
    for "_i" from 1 to 10 do {
        myUnit addItemtovest "rhs_20rnd_9x39mm_SP6";
    };
    myUnit addItemtobackpack "toolKit";
    myUnit addItemtobackpack "mineDetector";
    for "_i" from 1 to 2 do {
        myUnit addItemtobackpack "DemoCharge_Remote_Mag";
    };
    myUnit addheadgear "H_HelmetB_light_black";
    myUnit addgoggles "rhs_googles_black";
    
    comment "Add items";
    myUnit linkItem "ItemMap";
    myUnit linkItem "ItemCompass";
    myUnit linkItem "ItemWatch";
    myUnit linkItem "Itemradio";
    myUnit linkItem "ItemGPS";
    
    addswitchableUnit myUnit;
};