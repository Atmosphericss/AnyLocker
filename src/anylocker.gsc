#include maps\mp\zombies\_zm_utility;
#include common_scripts\utility;
#include maps\_utility;
#include maps\mp\zombies\_zm_weapons;
#include maps\mp\zombies\_zm;

init()
{
    
    level thread setup_dir();
    level thread transit_weapons();
    level thread nuked_weapons();
    level thread tomb_weapons();
    level thread prison_weapons();
    level thread highrise_weapons();
    level thread buried_weapons();
    level thread onPlayerConnect();
    onPlayerSay(::player_say);

}

transit_weapons()
{
    str_transit_weapons = "870mcs_upgraded_zm,870mcs_zm,barretm82_upgraded_zm,barretm82_zm,beretta93r_upgraded_zm,beretta93r_zm,dsr50_upgraded_zm,dsr50_zm,fiveseven_upgraded_zm,fiveseven_zm,fivesevendw_upgraded_zm,fivesevendw_zm,fivesevenlh_upgraded_zm,fivesevenlh_zm,fnfal_upgraded_zm,fnfal_zm,frag_grenade_zm,galil_upgraded_zm,galil_zm,m14_upgraded_zm,m14_zm,ray_gun_upgraded_zm,ray_gun_zm,raygun_mark2_upgraded_zm,raygun_mark2_zm,ak74u_upgraded_zm,ak74u_zm,gl_type95_zm,gl_xm8_zm ,hamr_upgraded_zm,hamr_zm,jetgun_upgraded_zm,jetgun_zm,judge_upgraded_zm,judge_zm,knife_zm,knife_ballistic_bowie_upgraded_zm,knife_ballistic_bowie_zm,knife_ballistic_no_melee_upgraded_zm,knife_ballistic_no_melee_zm,knife_ballistic_upgraded_zm,knife_ballistic_zm,kard_upgraded_zm,kard_zm,mp5k_upgraded_zm,mp5k_zm,gl_m16_upgraded_zm,m16_gl_upgraded_zm,m16_zm,m1911_upgraded_zm,m1911_zm,m1911lh_upgraded_zm,m32_upgraded_zm,m32_zm,python_upgraded_zm,python_zm,qcw05_upgraded_zm,qcw05_zm,sf_qcw05_upgraded_zm,riotshield_zm,rottweil72_upgraded_zm,rottweil72_zm,rpd_upgraded_zm,rpd_zm,dualoptic_saritch_upgraded_zm,saritch_upgraded_zm,saritch_zm,saiga12_upgraded_zm,saiga12_zm,srm1216_upgraded_zm,srm1216_zm,tar21_upgraded_zm,tar21_zm,gl_tar21_zm,type95_upgraded_zm,type95_zm,xm8_upgraded_zm,xm8_zm";
    level.transit_weapons = strTok(str_transit_weapons, ",");
}
nuked_weapons()
{
    str_nuked_weapons = "870mcs_upgraded_zm,870mcs_zm,barretm82_upgraded_zm,barretm82_zm,beretta93r_upgraded_zm,beretta93r_zm,dsr50_upgraded_zm,dsr50_zm,fiveseven_upgraded_zm,fiveseven_zm,fivesevendw_upgraded_zm,fivesevendw_zm,fivesevenlh_upgraded_zm,fivesevenlh_zm,fnfal_upgraded_zm,fnfal_zm,frag_grenade_zm,galil_upgraded_zm,galil_zm,m14_upgraded_zm,m14_zm,ray_gun_upgraded_zm,ray_gun_zm,raygun_mark2_upgraded_zm,raygun_mark2_zm,ak74u_upgraded_zm,ak74u_zm,gl_tar21_zm,gl_m16_upgraded_zm,gl_tar21_zm,gl_type95_zm,gl_xm8_zm,hamr_upgraded_zm,hamr_zm,hk416_upgraded_zm,hk416_zm,judge_upgraded_zm,judge_zm,knife_zm,knife_ballistic_bowie_upgraded_zm,knife_ballistic_bowie_zm,knife_ballistic_no_melee_upgraded_zm,knife_ballistic_no_melee_zm,knife_ballistic_upgraded_zm,knife_ballistic_zm,kard_upgraded_zm,kard_zm,lsat_upgraded_zm,lsat_zm,m16_gl_upgraded_zm,m16_zm,m1911_upgraded_zm,m1911_zm,m1911lh_upgraded_zm,m32_upgraded_zm,m32_zm,mp5k_upgraded_zm,mp5k_zm,python_upgraded_zm,python_zm,qcw05_upgraded_zm,qcw05_zm,sf_qcw05_upgraded_zm,rpd_upgraded_zm,rpd_zm,rottweil72_upgraded_zm,rottweil72_zm,dualoptic_saritch_upgraded_zm,saritch_upgraded_zm,saritch_zm,saiga12_upgraded_zm,saiga12_zm,srm1216_upgraded_zm,srm1216_zm,tar21_upgraded_zm,tar21_zm,type95_upgraded_zm,type95_zm,usrpg_upgraded_zm,usrpg_zm,xm8_upgraded_zm,xm8_zm";
    level.nuked_weapons = strTok(str_nuked_weapons, ",");
}
tomb_weapons()
{
    str_tomb_weapons = "870mcs_upgraded_zm,870mcs_zm,barretm82_upgraded_zm,barretm82_zm,beretta93r_upgraded_zm,beretta93r_zm,dsr50_upgraded_zm,dsr50_zm,fiveseven_upgraded_zm,fiveseven_zm,fivesevendw_upgraded_zm,fivesevendw_zm,fivesevenlh_upgraded_zm,fivesevenlh_zm,fnfal_upgraded_zm,fnfal_zm,frag_grenade_zm,galil_upgraded_zm,galil_zm,m14_upgraded_zm,m14_zm,ray_gun_upgraded_zm,ray_gun_zm,raygun_mark2_upgraded_zm,raygun_mark2_zm,ak74u_upgraded_zm,ak74u_zm,ak74u_extclip_upgraded_zm,ak74u_extclip_zm,ballista_upgraded_zm,ballista_zm,beretta93r_extclip_upgraded_zm,beretta93r_extclip_zm,c96_upgraded_zm,c96_zm,evoskorpion_upgraded_zm,evoskorpion_zm,gl_type95_zm,hamr_upgraded_zm,hamr_zm,knife_zm,ksg_upgraded_zm,ksg_zm,kard_upgraded_zm,kard_zm,m32_upgraded_zm,m32_zm,mg08_upgraded_zm,mg08_zm,mp40_stalker_upgraded_zm,mp40_stalker_zm,mp40_upgraded_zm,mp40_zm,mp44_upgraded_zm,mp44_zm,one_inch_punch_air_zm,one_inch_punch_fire_zm,one_inch_punch_ice_zm,one_inch_punch_lightning_zm,one_inch_punch_upgraded_zm,one_inch_punch_zm,python_upgraded_zm,python_zm,qcw05_upgraded_zm,qcw05_zm,sf_qcw05_upgraded_zm,scar_upgraded_zm,scar_zm,srm1216_upgraded_zm,srm1216_zm,staff_air_melee_zm,staff_air_upgraded_zm,staff_air_upgraded2_zm,staff_air_upgraded3_zm,staff_air_zm,staff_fire_melee_zm,staff_fire_upgraded_zm,staff_fire_upgraded2_zm,staff_fire_upgraded3_zm,staff_fire_zm,staff_lightning_melee_zm,staff_lightning_upgraded_zm,staff_lightning_upgraded2_zm,staff_lightning_upgraded3_zm,staff_lightning_zm,staff_revive_zm,staff_water_dart_zm,staff_water_fake_dart_zm,staff_water_melee_zm,staff_water_upgraded_zm,staff_water_upgraded2_zm,staff_water_upgraded3_zm,staff_water_zm,staff_water_zm_cheap,thompson_upgraded_zm,thompson_zm,type95_upgraded_zm,type95_zm";
    level.tomb_weapons = strTok(str_tomb_weapons, ",");
}
prison_weapons()
{
    str_prison_weapons = "870mcs_upgraded_zm,870mcs_zm,barretm82_upgraded_zm,barretm82_zm,beretta93r_upgraded_zm,beretta93r_zm,dsr50_upgraded_zm,dsr50_zm,fiveseven_upgraded_zm,fiveseven_zm,fivesevendw_upgraded_zm,fivesevendw_zm,fivesevenlh_upgraded_zm,fivesevenlh_zm,fnfal_upgraded_zm,fnfal_zm,frag_grenade_zm,galil_upgraded_zm,galil_zm,m14_upgraded_zm,m14_zm,ray_gun_upgraded_zm,ray_gun_zm,raygun_mark2_upgraded_zm,raygun_mark2_zm,ak47_upgraded_zm,ak47_zm,alcatraz_shield_zm,blundergat_upgraded_zm,blundergat_zm,blundersplat_upgraded_zm,blundersplat_zm,bouncing_tomahawk_zm,gl_tar21_zm,judge_upgraded_zm,judge_zm,knife_zm_alcatraz,lsat_upgraded_zm,lsat_zm,m1911_upgraded_zm,m1911_zm,m1911lh_upgraded_zm,minigun_alcatraz_upgraded_zm,minigun_alcatraz_zm,mp5k_upgraded_zm,mp5k_zm,pdw57_upgraded_zm,pdw57_zm,sf_qcw05_upgraded_zm,rottweil72_upgraded_zm,rottweil72_zm,spoon_zm_alcatraz,spork_zm_alcatraz,saiga12_upgraded_zm,saiga12_zm,tar21_upgraded_zm,tar21_zm,thompson_upgraded_zm,thompson_zm,usrpg_upgraded_zm,usrpg_zm,upgraded_tomahawk_zm,uzi_upgraded_zm,uzi_zm";
    level.prison_weapons = strTok(str_prison_weapons, ",");
}
highrise_weapons()
{
    str_highrise_weapons = "870mcs_upgraded_zm,870mcs_zm,barretm82_upgraded_zm,barretm82_zm,beretta93r_upgraded_zm,beretta93r_zm,dsr50_upgraded_zm,dsr50_zm,fiveseven_upgraded_zm,fiveseven_zm,fivesevendw_upgraded_zm,fivesevendw_zm,fivesevenlh_upgraded_zm,fivesevenlh_zm,fnfal_upgraded_zm,fnfal_zm,frag_grenade_zm,galil_upgraded_zm,galil_zm,m14_upgraded_zm,m14_zm,ray_gun_upgraded_zm,ray_gun_zm,raygun_mark2_upgraded_zm,raygun_mark2_zm,ak74u_upgraded_zm,ak74u_zm,an94_upgraded_zm,an94_zm,gl_tar21_zm,gl_xm8_zm,gl_type95_zm,hamr_upgraded_zm,hamr_zm,judge_upgraded_zm,judge_zm,knife_zm,knife_ballistic_bowie_upgraded_zm,knife_ballistic_bowie_zm,knife_ballistic_no_melee_upgraded_zm,knife_ballistic_no_melee_zm,knife_ballistic_upgraded_zm,knife_ballistic_zm,kard_upgraded_zm,kard_zm,m1911_upgraded_zm,m1911_zm,m1911lh_upgraded_zm,m32_upgraded_zm,m32_zm,mp5k_upgraded_zm,mp5k_zm,pdw57_upgraded_zm,pdw57_zm,python_upgraded_zm,python_zm,qcw05_upgraded_zm,qcw05_zm,sf_qcw05_upgraded_zm,rpd_upgraded_zm,rpd_zm,rottweil72_upgraded_zm,rottweil72_zm,dualoptic_saritch_upgraded_zm,saritch_upgraded_zm,saritch_zm,slip_bolt_upgraded_zm,slip_bolt_zm,slipgun_upgraded_zm,slipgun_zm,svu_upgraded_zm,svu_zm,saiga12_upgraded_zm,saiga12_zm,srm1216_upgraded_zm,srm1216_zm,tar21_upgraded_zm,tar21_zm,tazer_knuckles_zm,type95_upgraded_zm,type95_zm,usrpg_upgraded_zm,usrpg_zm,xm8_upgraded_zm,xm8_zm";
    level.highrise_weapons = strTok(str_highrise_weapons, ",");
}
buried_weapons()
{
    str_buried_weapons = "870mcs_upgraded_zm,870mcs_zm,barretm82_upgraded_zm,barretm82_zm,beretta93r_upgraded_zm,beretta93r_zm,dsr50_upgraded_zm,dsr50_zm,fiveseven_upgraded_zm,fiveseven_zm,fivesevendw_upgraded_zm,fivesevendw_zm,fivesevenlh_upgraded_zm,fivesevenlh_zm,fnfal_upgraded_zm,fnfal_zm,frag_grenade_zm,galil_upgraded_zm,galil_zm,m14_upgraded_zm,m14_zm,ray_gun_upgraded_zm,ray_gun_zm,raygun_mark2_upgraded_zm,raygun_mark2_zm,ak74u_upgraded_zm,ak74u_zm,an94_upgraded_zm,an94_zm,gl_tar21_zm,hamr_upgraded_zm,hamr_zm,judge_upgraded_zm,judge_zm,knife_zm,knife_ballistic_bowie_upgraded_zm,knife_ballistic_bowie_zm,knife_ballistic_no_melee_upgraded_zm,knife_ballistic_no_melee_zm,knife_ballistic_upgraded_zm,knife_ballistic_zm,kard_upgraded_zm,kard_zm,lsat_upgraded_zm,lsat_zm,m1911_upgraded_zm,m1911_zm,m1911lh_upgraded_zm,m32_upgraded_zm,m32_zm,pdw57_upgraded_zm,pdw57_zm,qcw05_upgraded_zm,qcw05_zm,sf_qcw05_upgraded_zm,rnma_upgraded_zm,rnma_zm,rottweil72_upgraded_zm,rottweil72_zm,dualoptic_saritch_upgraded_zm,saritch_upgraded_zm,saritch_zm,slowgun_upgraded_zm,slowgun_zm,svu_upgraded_zm,svu_zm,srm1216_upgraded_zm,srm1216_zm,saiga12_upgraded_zm,saiga12_zm,tar21_upgraded_zm,tar21_zm,usrpg_upgraded_zm,usrpg_zm";
    level.buried_weapons = strTok(str_buried_weapons, ",");
}

getDvarIntDefault(dvar, value)
{
    if(getDvar(dvar) == "")
        return value;
    else
        return getDvarInt(dvar);
}

setup_dir()
{
    level.locker_dir = va("%s/locker", getdvar("fs_homepath"));
    level.locker_tomb = va("%s/locker/tomb", getdvar("fs_homepath"));
    level.locker_transit = va("%s/locker/transit", getdvar("fs_homepath"));
    level.locker_prison = va("%s/locker/prison", getdvar("fs_homepath"));
    level.locker_nuke = va("%s/locker/nuke", getdvar("fs_homepath"));
    level.locker_highrise = va("%s/locker/highrise", getdvar("fs_homepath"));
    level.locker_buried = va("%s/locker/buried", getdvar("fs_homepath"));
    level.dir_list = array(level.locker_dir, level.locker_tomb, level.locker_transit, level.locker_prison, level.locker_nuke, level.locker_highrise, level.locker_buried);
    foreach(l in level.dir_list)
    {
        if (!directoryExists(l))
            createDirectory(l);
    }     
    writeFile(level.locker_dir + "/NOTES.txt", "Please only change or mess around with these files if 1. You know user GUID and 2. You know the gun IDs for this game");
    
}

player_say(message, mode)
{
    message = toLower(message);

    if (message[0] == "/" || (is_true(level.anylockerUseExclamation) && message[0] == "!"))
    {
        if (level.intermission)
        {
            self tell("^1You cannot use this command right now.^7");
            return false;
        }

        args = strtok(message, " ");
        command = getSubStr(args[0], 1);

        switch (command)
        {
        case "locker":
        case "l":
        {
            if (getDvarIntDefault("enableAnyLocker", 1) == 0 )
            {
                self tell("enableAnyLocker dvar is turned off");
                return false;
            }
            self thread locker_handler(args);
            return false;
        } 
        }
    }

    return true;
}

onPlayerConnect()
{
    for (;;)
    {
        level waittill("connecting", player);
        player thread locker_setup();
    }
}

locker_setup()
{
    guid = self getGuid();
    foreach(l in level.dir_list)
    {
        file = (l + "/" + guid);
        if(!fileExists(file) && l != level.locker_dir)
        {
            if(l == level.locker_tomb)              
                writeFile(file, "c96_zm");
            else
                writeFile(file, "m1911_zm");
            
        }
    }
}

get_locker_filename()
{
    guid = self getGuid();
    locker_map = self locker_map_check();
    return locker_map + "/" + guid;
}


locker_swap()
{
    name = self get_locker_filename();
    locker_map = self locker_map_check();
    current_gun = self GetCurrentWeapon();
    if(int64_op(self.score, "<", 4000))
    {
        self tell("^1It costs ^2$^74000 ^1to perform this action.^7");
        return;
    }
    //keys = getarraykeys(level.zombie_weapons);
    for(i=0;i<level.zombie_weapons.size;i++)
    {
        if(isSubStr(current_gun, level.zombie_weapons[i]))
        {
            file_contents = readFile(name);
            locker_gun = va("%s", file_contents);
            self takeweapon(current_gun);
            removeFile(name);
            self GiveWeapon(locker_gun);
            self switchtoweapon(locker_gun);

            self GiveMaxAmmo(self getCurrentWeapon());
            self setWeaponAmmostock( self GetCurrentWeapon(), 0);
            writeFile(name, current_gun);
            return;
        }
    }
    
    self tell("^1An error has occured, weapon potentially invalid^7");
}

locker_view()
{
    name = self get_locker_filename();
    contents = readFile(name);
    self tell("Stored Weapon: ^2" + contents + "^7.");
}


locker_handler(args)
{
    if (!isdefined(args[1]))
    {
        self tell("Usage: ^1/locker ^7<swap|view>");
        return;
    }
    vieworswap = args[1];

    if (vieworswap == "view" || vieworswap == "v")
    {
        self thread locker_view();
    }
    if (vieworswap == "swap" || vieworswap == "s")
    {
        self thread locker_swap();
    }

}

locker_map_check()
{
    mapname = ToLower( GetDvar( "mapname" ) );
    if (mapname == "zm_buried")
    {
        return level.locker_buried;
    }
    else if (mapname == "zm_highrise")
    {
        return level.locker_highrise;
    }
    else if (mapname == "zm_tomb")
    {
        return level.locker_tomb;
    }
    else if (mapname == "zm_prison")
    {
        return level.locker_prison;
    }
    else if (mapname == "zm_transit")
    {
        return level.locker_transit;
    }
    else if (mapname == "zm_nuked")
    {
        return level.locker_nuked;
    }
}