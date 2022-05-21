comment "exported from Arsenal by M98As";

comment "[!] UNIT MUST BE local [!]";
if (!local this) exitwith {};

comment "Remove existing items";
removeAllweapons this;
removeAllItems this;
removeAllAssignedItems this;
removeuniform this;
removevest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

comment "Add weapons";
this addWeapon "rhs_weap_ak74mr_gp25";
this addprimaryWeaponItem "rhs_acc_uuk";
this addprimaryWeaponItem "rhs_acc_2dpZenit_ris";
this addprimaryWeaponItem "optic_Arco_AK_blk_F";
this addprimaryWeaponItem "rhs_30Rnd_545x39_7N10_AK";
this addprimaryWeaponItem "rhs_VOG25";
this addWeapon "rhs_weap_pya";
this addHandgunItem "rhs_mag_9x19_17";

comment "Add containers";
this forceAdduniform "U_I_E_uniform_01_sweater_F";
this addvest "V_PlateCarrier2_blk";

comment "Add binoculars";
this addWeapon "binocular";

comment "Add items to containers";
this addItemtouniform "FirstAidKit";
for "_i" from 1 to 2 do {
    this addItemtouniform "rhs_mag_9x19_17";
};
for "_i" from 1 to 2 do {
    this addItemtovest "HandGrenade";
};
for "_i" from 1 to 7 do {
    this addItemtovest "rhs_30Rnd_545x39_7N10_AK";
};
for "_i" from 1 to 7 do {
    this addItemtovest "rhs_VOG25";
};
this addItemtovest "SmokeShellBlue";
this addItemtovest "SmokeShellPurple";
this addheadgear "H_HelmetB_light_black";
this addgoggles "rhs_balaclava1_olive";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "Itemradio";
this linkItem "ItemGPS";


