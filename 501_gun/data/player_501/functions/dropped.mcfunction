data modify storage gun_501:temp Thrower set from entity @s UUID
data modify storage gun_501:temp backup set from storage gun_501:temp Thrower
scoreboard players set #SUCCESS num_501 -1

execute as @e[type=item,sort=nearest,limit=1,distance=..3,predicate=gun_501:dropped] run function gun_501:dropped
