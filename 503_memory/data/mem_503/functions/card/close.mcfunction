#> mem_503:card/close
# @within
#   function mem_503:game/turn_end

tag @s remove open_503
data modify storage mem_503:temp Item set value {id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:5001,mem_503:{clickable:1b,card:{}}}}
data modify storage mem_503:temp Item.tag.mem_503.card set from entity @s Item
data modify entity @s Item set from storage mem_503:temp Item
data modify entity @s ItemRotation set value 0b
data modify entity @s Invisible set value 1b
data modify entity @s Fixed set value 0b

#playsound entity.player.attack.sweep master @a ~ ~ ~ 1 1 0
particle sweep_attack ^ ^0.1 ^ 0 0 0 0 1