#> clay_502:game/quickshot/tick
# @within
#   function clay_502:game/tick/playing

execute store result score #PLAYER num_502 if entity @a[tag=playing_502,tag=ticking_502]
execute if entity @a[tag=ticking_502,tag=debug_502] run scoreboard players set #PLAYER num_502 2

execute if score @s progress_502 matches 5 if score #PLAYER num_502 matches 2.. unless entity @a[scores={playing_000=502},tag=ticking_502,tag=playing_502,tag=!restart_502] run function clay_502:game/quickshot/restart

execute if score @s progress_502 matches 0 if score #PLAYER num_502 matches 2.. unless entity @a[scores={playing_000=502},tag=ticking_502,advancements={clay_502:picked_gun=false},tag=playing_502] run function clay_502:game/quickshot/start

execute if score @s progress_502 matches 1.. if score @s tick_502 matches 0 run function clay_502:game/quickshot/action


execute if entity @s[tag=delete_502] run function clay_502:game/quickshot/delete