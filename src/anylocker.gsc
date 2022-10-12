#include maps\mp\zombies\_zm_utility;
#include common_scripts\utility;
#include maps\_utility;
#include maps\mp\zombies\_zm_weapons;
#include maps\mp\zombies\_zm;

/*
Original Code made by Atmoist
For use with Plutonium T6
Requirements:
    - https://github.com/fedddddd/t6-gsc-utils
WIP for learning GSC etc, sorry if it's not optimised/programmed the best :)
*/




init()
{
    
    level thread onPlayerConnect();
    onPlayerSay(::player_say);

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