execute store result score $602 chaos_602 run data get storage temp_000:loading game.602.chaos 1

setblock 6059 81 13 minecraft:air
setblock 6059 82 13 minecraft:air
execute unless score $602 chaos_602 matches 1 run setblock 6059 82 13 minecraft:oak_wall_sign[facing=north]{Text2:'{"text":"Chaos","underlined":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/function ats_602:sign/m3_0"}}',Text3:'{"text":"Locked","color":"red"}'} replace

execute if score $602 chaos_602 matches 1 run setblock 6059 81 13 minecraft:lever[face=wall,facing=north]
execute if score $602 chaos_602 matches 1 run setblock 6059 82 13 minecraft:oak_wall_sign[facing=north]{Text2:'{"text":"Chaos","underlined":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/function ats_602:sign/m3"}}'} replace
