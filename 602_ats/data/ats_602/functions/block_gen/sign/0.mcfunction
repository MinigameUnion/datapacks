setblock 6060 83 13 minecraft:air
setblock 6062 81 13 minecraft:air
setblock 6061 82 13 minecraft:air
setblock 6060 82 13 minecraft:air
setblock 6059 82 13 minecraft:air
setblock 6058 82 13 minecraft:air

setblock 6060 83 13 minecraft:oak_wall_sign[facing=north]{front_text:{messages:['{"text":""}','{"text":"","extra":[{"text":"GameMode"}]}','{"text":"","extra":[{"text":"ゲームモード"}]}','{"text":""}']}} replace
setblock 6058 82 13 minecraft:birch_wall_sign[facing=north]{front_text:{messages:['{"text":""}','{"text":"","extra":[{"text":"Cancel"}]}','{"text":"","extra":[{"text":"ゲームのキャンセル"}]}','{"text":"","extra":[{"text":"強制終了","color":"red"}]}']}} replace
setblock 6061 82 13 minecraft:oak_wall_sign[facing=north]{front_text:{messages:['{"text":""}','{"text":"Program","underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function ats_602:sign/gamemode/1"}}','{"text":"プログラムモード","color":"aqua"}','{"text":""}']}} replace
setblock 6060 82 13 minecraft:oak_wall_sign[facing=north]{front_text:{messages:['{"text":""}','{"text":"Bacic","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function ats_602:sign/gamemode/2"}}','{"text":"ベーシックモード","color":"green"}','{"text":""}']}} replace

execute if score $g_chaos_602 a_602 matches 1 run setblock 6059 82 13 minecraft:oak_wall_sign[facing=north]{front_text:{messages:['{"text":""}','{"text":"Chaos","underlined":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/function ats_602:sign/gamemode/3/main"}}','{"text":"カオスモード","color":"light_purple"}','{"text":""}']}} replace
execute unless score $g_chaos_602 a_602 matches 1 run setblock 6059 82 13 minecraft:oak_wall_sign[facing=north]{front_text:{messages:['{"text":""}','{"text":"Chaos","underlined":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/function ats_602:sign/gamemode/3/locked"}}','{"text":"カオスモード","color":"light_purple"}','{"text":"Locked","color":"red"}']}} replace

#execute unless score $602 vs_602 matches 0 run setblock 6062 81 13 minecraft:oak_wall_sign[facing=north]{front_text:{messages:['{"text":"VS Mode","underlined":true,"clickEvent":{"action":"run_command","value":"/function ats_602:sign/m4_0"}}','{"text":"OFF","color":"red"}']}} replace
#execute unless score $602 vs_602 matches 1 run setblock 6062 81 13 minecraft:oak_wall_sign[facing=north]{front_text:{messages:['{"text":"VS Mode","underlined":true,"clickEvent":{"action":"run_command","value":"/function ats_602:sign/m4_1"}}','{"text":"ON","color":"green"}']}} replace


setblock 6051 83 14 minecraft:air
setblock 6051 83 14 minecraft:spruce_wall_sign[facing=north]{front_text:{messages:['{"text":""}','{"text":"","extra":[{"text":"Opsions"}]}','{"text":"","extra":[{"text":"オプション"}]}','{"text":""}']}}

function ats_602:block_gen/sign/option/0
function ats_602:block_gen/sign/option/1
function ats_602:block_gen/sign/option/2
function ats_602:block_gen/sign/option/3
function ats_602:block_gen/sign/option/4
function ats_602:block_gen/sign/option/5
