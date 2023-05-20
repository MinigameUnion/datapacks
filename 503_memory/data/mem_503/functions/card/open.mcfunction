#> mem_503:card/open
# @within
#   function mem_503:card/interacted

tag @s add open_503
execute store result entity @s ItemRotation byte 1 as @e[tag=admin_503] if score # id_503 = @s id_503 run data get entity @s data.mem_503.frame.ItemRotation
data modify entity @s Item set from entity @s Item.tag.mem_503.card
data modify entity @s Invisible set value 0b
data modify entity @s Fixed set value 1b

playsound entity.player.attack.sweep master @a ~ ~ ~ 0.5 1 0
particle sweep_attack ^ ^0.1 ^ 0 0 0 0 1