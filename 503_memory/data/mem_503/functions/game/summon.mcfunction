#> mem_503:game/summon
# @within
#   function mem_503:schedule/summon

#>
# @private
    #declare tag summon_503

execute store result score #summon num_503 store result entity @s data.mem_503.summon int 1 run data get entity @s data.mem_503.summon 0.9999999999999999
execute store result score #Facing num_503 run data get entity @s data.mem_503.frame.Facing

playsound minecraft:entity.item_frame.place neutral @a ~ ~ ~ 1 1 0

execute as @e[tag=point_503] if score @s id_503 = # id_503 run tag @s add summon_503

execute positioned ^1000 ^-1000 ^ as @e[tag=summon_503,distance=..1414.5] positioned ^ ^2000 ^ if entity @s[distance=..1414.5] positioned as @s positioned ^1 ^ ^ align xyz positioned ~0.5 ~0.5 ~0.5 run function mem_503:card/summon
execute positioned ^-1000 ^-1000 ^ as @e[tag=summon_503,distance=..1414.5] positioned ^ ^2000 ^ if entity @s[distance=..1414.5] positioned as @s positioned ^-1 ^ ^ align xyz positioned ~0.5 ~0.5 ~0.5 run function mem_503:card/summon
execute positioned ^-1000 ^1000 ^ as @e[tag=summon_503,distance=..1414.5] positioned ^2000 ^ ^ if entity @s[distance=..1414.5] positioned as @s positioned ^ ^1 ^ align xyz positioned ~0.5 ~0.5 ~0.5 run function mem_503:card/summon
execute positioned ^-1000 ^-1000 ^ as @e[tag=summon_503,distance=..1414.5] positioned ^2000 ^ ^ if entity @s[distance=..1414.5] positioned as @s positioned ^ ^-1 ^ align xyz positioned ~0.5 ~0.5 ~0.5 run function mem_503:card/summon
execute positioned ^1000 ^1000 ^ as @e[tag=summon_503,distance=..1414.5,sort=nearest,limit=1] positioned as @s positioned ^1 ^1 ^ align xyz positioned ~0.5 ~0.5 ~0.5 run function mem_503:card/summon
execute positioned ^-1000 ^1000 ^ as @e[tag=summon_503,distance=..1414.5,sort=nearest,limit=1] positioned as @s positioned ^-1 ^1 ^ align xyz positioned ~0.5 ~0.5 ~0.5 run function mem_503:card/summon
execute positioned ^1000 ^-1000 ^ as @e[tag=summon_503,distance=..1414.5,sort=nearest,limit=1] positioned as @s positioned ^1 ^-1 ^ align xyz positioned ~0.5 ~0.5 ~0.5 run function mem_503:card/summon
execute positioned ^-1000 ^-1000 ^ as @e[tag=summon_503,distance=..1414.5,sort=nearest,limit=1] positioned as @s positioned ^-1 ^-1 ^ align xyz positioned ~0.5 ~0.5 ~0.5 run function mem_503:card/summon

tag @e[tag=summon_503,distance=..128] remove point_503
tag @e[tag=summon_503,distance=..128] remove summon_503

scoreboard players operation @e[tag=init_503,distance=..128] id_503 = # id_503
scoreboard players set @e[tag=init_503,distance=..128] num_503 0
tag @e[tag=init_503,distance=..128] remove init_503

execute if score #summon num_503 matches 1.. run function mem_503:schedule/summon/loop
execute if score #summon num_503 matches 0 run function mem_503:schedule/summon/finish