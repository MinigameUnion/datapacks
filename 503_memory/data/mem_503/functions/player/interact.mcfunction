#> mem_503:player/interact
# @within
#   advancement mem_503:player/interact

scoreboard players set #s player_503 -1
execute if score @s player_503 matches 0.. run scoreboard players operation #s player_503 = @s player_503
scoreboard players set #s id_503 -1
execute if score @s id_503 matches 1.. run scoreboard players operation #s id_503 = @s id_503

tag @e[tag=interacted_503] remove interacted_503
execute as @e[type=item_frame,distance=..16,nbt={Item:{tag:{mem_503:{clickable:1b}}}}] run function mem_503:frame/check_ir

execute if predicate mem_503:player/with_trigger as @e[tag=interacted_503,tag=!card_503,distance=..16] store result score @s num_503 run data get entity @s ItemRotation
execute unless predicate mem_503:player/with_trigger as @e[tag=interacted_503,distance=..16] run function mem_503:frame/interacted

advancement revoke @s only mem_503:player/interact