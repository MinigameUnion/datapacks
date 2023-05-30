setblock 6060 83 13 minecraft:air
setblock 6062 81 13 minecraft:air
setblock 6061 82 13 minecraft:air
setblock 6060 82 13 minecraft:air
setblock 6059 82 13 minecraft:air

setblock 6060 83 13 minecraft:oak_wall_sign[facing=north]{Text2:'{"text":"GameMode"}'} replace
setblock 6061 82 13 minecraft:oak_wall_sign[facing=north]{Text2:'{"text":"Program","underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function ats_602:sign/m1"}}'} replace
setblock 6060 82 13 minecraft:oak_wall_sign[facing=north]{Text2:'{"text":"Bacic","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function ats_602:sign/m2"}}'} replace

execute if score $602 chaos_602 matches 1 run setblock 6059 82 13 minecraft:oak_wall_sign[facing=north]{Text2:'{"text":"Chaos","underlined":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/function ats_602:sign/m3"}}'} replace
execute unless score $602 chaos_602 matches 1 run setblock 6059 82 13 minecraft:oak_wall_sign[facing=north]{Text2:'{"text":"Chaos","underlined":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/function ats_602:sign/m3_0"}}',Text3:'{"text":"Locked","color":"red"}'} replace

#execute unless score $602 vs_602 matches 0 run setblock 6062 81 13 minecraft:oak_wall_sign[facing=north]{Text2:'{"text":"VS Mode","underlined":true,"clickEvent":{"action":"run_command","value":"/function ats_602:sign/m4_0"}}',Text3:'{"text":"OFF","color":"red"}'} replace
#execute unless score $602 vs_602 matches 1 run setblock 6062 81 13 minecraft:oak_wall_sign[facing=north]{Text2:'{"text":"VS Mode","underlined":true,"clickEvent":{"action":"run_command","value":"/function ats_602:sign/m4_1"}}',Text3:'{"text":"ON","color":"green"}'} replace
