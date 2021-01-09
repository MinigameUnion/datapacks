tag @s remove hit_502
execute if entity @s[tag=kill_502] run function clay_502:target_plate/delete

tag @s[tag=!kill_502] add target_501
loot replace entity @s[tag=!kill_502] armor.head loot clay_502:target_plate