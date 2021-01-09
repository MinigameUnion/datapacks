tp @s ~ ~ ~ ~ ~
execute if entity @s[tag=gun_501] run function gun_501:leave
clear @s
scoreboard players reset @s match_id_502
scoreboard players reset @s type_502
tag @s remove spectating_502
tag @s remove playing_502
tag @s remove ticking_502