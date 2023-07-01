setblock 6028 82 13 minecraft:air
setblock 6028 81 13 minecraft:air
setblock 6035 82 13 minecraft:air
setblock 6035 81 13 minecraft:air


setblock 6028 82 13 minecraft:birch_wall_sign[facing=north]{front_text:{messages:['{"text":"RightClick!","underlined":true,"clickEvent":{"action":"run_command","value":"/function ats_602:sign/info/1/0"}}','{"text":""}','{"text":"アニマル塔戦闘","bold":true}','{"text":"って？","bold":true}']}} replace
setblock 6028 81 13 minecraft:birch_wall_sign[facing=north]{front_text:{messages:['{"text":""}','{"text":"ゲームモード一覧","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/function ats_602:sign/info/2/0"}}','{"text":""}','{"text":""}']}} replace
setblock 6035 82 13 minecraft:birch_wall_sign[facing=north]{front_text:{messages:['{"text":""}','{"text":"ユニットについて","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/function ats_602:sign/info/3/0"}}','{"text":""}','{"text":""}']}} replace
setblock 6035 81 13 minecraft:birch_wall_sign[facing=north]{front_text:{messages:['{"text":""}','{"text":"既知の不具合","color":"red","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/function ats_602:sign/info/4/0"}}','{"text":""}','{"text":""}']}} replace



setblock 6003 81 6 minecraft:air
setblock 6003 81 6 minecraft:birch_wall_sign[facing=east]{front_text:{messages:['{"text":""}','{"text":"ATSから退出","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/function ats_602:sign/teleport/exit"}}','{"text":""}','{"text":""}']}}

setblock 6037 67 16 minecraft:air
setblock 6037 67 16 minecraft:birch_wall_sign[facing=south]{front_text:{messages:['{"text":""}','{"text":"Lobby","bold":true,"underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function ats_602:sign/teleport/lobby"}}','{"text":""}','{"text":""}']}}

setblock 6040 67 16 minecraft:air
setblock 6040 67 16 minecraft:birch_wall_sign[facing=south]{front_text:{messages:['{"text":""}','{"text":"2nd Floor","bold":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function ats_602:sign/teleport/2nd_floor"}}','{"text":""}','{"text":""}']}}

setblock 6040 81 12 minecraft:air
setblock 6040 81 12 minecraft:birch_wall_sign[facing=north]{front_text:{messages:['{"text":""}','{"text":"Ground","bold":true,"underlined":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function ats_602:sign/teleport/ground"}}','{"text":""}','{"text":""}']}}

setblock 6037 81 12 minecraft:air
setblock 6037 81 12 minecraft:birch_wall_sign[facing=north]{front_text:{messages:['{"text":""}','{"text":"2nd Floor","bold":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function ats_602:sign/teleport/2nd_floor"}}','{"text":""}','{"text":""}']}}

setblock 6040 93 12 minecraft:air
setblock 6040 93 12 minecraft:birch_wall_sign[facing=north]{front_text:{messages:['{"text":""}','{"text":"Ground","bold":true,"underlined":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function ats_602:sign/teleport/ground"}}','{"text":""}','{"text":""}']}}

setblock 6037 93 12 minecraft:air
setblock 6037 93 12 minecraft:birch_wall_sign[facing=north]{front_text:{messages:['{"text":""}','{"text":"Lobby","bold":true,"underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function ats_602:sign/teleport/lobby"}}','{"text":""}','{"text":""}']}}

setblock 6028 82 17 minecraft:air
setblock 6028 82 17 minecraft:acacia_wall_sign[facing=south]{front_text:{messages:['{"text":""}','{"text":"強制終了","bold":true,"underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/execute if score $602 gamemode_602 matches 1.. run function ats_602:assembly/cancel"}}','{"text":""}','{"text":""}']}}
