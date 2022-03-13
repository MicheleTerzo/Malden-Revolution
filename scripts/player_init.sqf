if (!local player) exitwith {};

removeAllweapons player;
removeAllItems player;
removeAllAssignedItems player;
removeuniform player;
removevest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

player addWeapon "rhs_weap_ak74mr_gp25";
player addprimaryWeaponItem "rhs_acc_uuk";
player addprimaryWeaponItem "rhs_acc_2dpZenit_ris";
player addprimaryWeaponItem "optic_Arco_AK_blk_F";
player addprimaryWeaponItem "rhs_30Rnd_545x39_7N10_AK";
player addWeapon "rhs_weap_pya";
player addHandgunItem "rhs_mag_9x19_17";

player forceAdduniform "U_I_E_uniform_01_sweater_F";
player addvest "V_PlateCarrier2_blk";

player addWeapon "binocular";

player addItemtouniform "FirstAidKit";
for "_i" from 1 to 2 do {
    player addItemtouniform "rhs_mag_9x19_17";
};
for "_i" from 1 to 2 do {
    player addItemtovest "HandGrenade";
};
for "_i" from 1 to 7 do {
    player addItemtovest "rhs_30Rnd_545x39_7N10_AK";
};
for "_i" from 1 to 7 do {
    player addItemtovest "rhs_VOG25";
};
player addItemtovest "SmokeShellBlue";
player addItemtovest "SmokeShellPurple";
player addheadgear "H_HelmetB_light_black";
player addgoggles "rhs_balaclava1_olive";

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "Itemradio";
player linkItem "ItemGPS";