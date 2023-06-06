#> ms_801:game/summon/sheep_x
# @internal

execute if score $CanMove General_801 matches ..1 run summon sheep ~ ~ ~ {NoAI:1b,Invulnerable:1b,DeathLootTable:"",Tags:["801","Game_801","Board_801"],Team:"801",Attributes:[{Name:"minecraft:generic.movement_speed",Base:0d},{Name:"minecraft:generic.knockback_resistance",Base:1d}],DeathTime:17s}
execute if score $CanMove General_801 matches 2 run summon sheep ~ ~ ~ {NoAI:1b,Invulnerable:1b,DeathLootTable:"",Tags:["801","Game_801","Board_801"],Team:"801",Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.1d},{Name:"minecraft:generic.knockback_resistance",Base:1d}],DeathTime:17s}
scoreboard players operation @e[type=sheep,tag=Board_801,distance=..0.1] ID_801 = $Tmp3 General_801
scoreboard players add $Tmp3 General_801 1
scoreboard players remove $Tmp General_801 1
execute unless score $IsWide General_801 matches 1 if score $Tmp General_801 matches 1.. positioned ~1.5 ~ ~ run function ms_801:game/summon/sheep_x
execute if score $IsWide General_801 matches 1 if score $Tmp General_801 matches 1.. positioned ~3.0 ~ ~ run function ms_801:game/summon/sheep_x