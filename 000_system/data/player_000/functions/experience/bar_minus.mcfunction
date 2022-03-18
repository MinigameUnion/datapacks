#> player_000:experience/bar_minus
# @within
#   function player_000:experience/**

execute if score #TEMP num_000 matches -9.. run experience add @s -1 points
execute if score #TEMP num_000 matches ..-10 run experience add @s -10 points
execute if score #TEMP num_000 matches -9.. run scoreboard players add #TEMP num_000 1
execute if score #TEMP num_000 matches ..-10 run scoreboard players add #TEMP num_000 10
execute if score #TEMP num_000 matches ..-1 run function player_000:experience/bar_minus