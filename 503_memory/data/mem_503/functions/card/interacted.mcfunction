#> mem_503:card/interacted
# @within
#   function mem_503:frame/interacted

scoreboard players operation # id_503 = @s id_503

scoreboard players set #open num_503 0
execute as @e[tag=open_503] if score # id_503 = @s id_503 run scoreboard players add #open num_503 1
execute as @e[tag=admin_503] if score # id_503 = @s id_503 run scoreboard players operation #admin player_503 = @s player_503

scoreboard players set #player num_503 0
execute as @a[scores={id_503=1..}] if score @s id_503 = # id_503 if score @s player_503 = #admin player_503 run scoreboard players add #player num_503 1

execute if score #player num_503 matches 1 if score #s id_503 = # id_503 if score #s player_503 = #admin player_503 run scoreboard players set #player num_503 -1
execute if score #open num_503 matches 0 if score #player num_503 matches 0 if score #s id_503 matches -1 if score #s player_503 matches -1 as @a[advancements={mem_503:player/interact=true}] run function mem_503:game/join
execute if score #open num_503 matches 0 if score #player num_503 matches 0 if score #s id_503 = # id_503 if score #s player_503 matches 0 as @e[tag=admin_503] if score # id_503 = @s id_503 run function mem_503:game/round_end

execute if score #player num_503 matches -1 if score #open num_503 matches 0..1 if entity @s[tag=!open_503] run function mem_503:card/open
execute if score #player num_503 matches -1 if score #open num_503 matches 1 run function mem_503:card/check