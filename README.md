# AnyLocker
Add a chat based locker to T6 zombies maps.

Each "mapname" has it's own locker file to store users weapons in. Each user starts with the default pistol for each map.

Some weapons currently cause issues while being retrieved from the locker (Example: staffs) so use with some caution.


# Requirements
t6-gsc-utils.dll for Black ops II

# Commands
/locker view    - This will send you a message displaying the contents of your locker. Each player starts with a default pistol.

/locker swap    - This will swap current weapon with weapon in locker for 4000 points.

Alternatively, you can use the first letter for each word, like: /l s    To swap.

# dedicated.cfg
Add to your server cfg file the dvar enableAnyLocker to enable players to use this mod as shown below (can be copy pasted at bottom of cfg).

set enableAnyLocker 1

# NOTE
I will release source at some point, got quite a lot of bugs to fix and my code is a bit messy
