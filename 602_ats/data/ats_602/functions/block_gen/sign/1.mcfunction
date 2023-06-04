setblock 6028 82 13 minecraft:air
setblock 6028 81 13 minecraft:air
setblock 6035 82 13 minecraft:air
setblock 6035 81 13 minecraft:air


setblock 6028 82 13 minecraft:birch_wall_sign[facing=north]{Text1:'{"text":"RightClick!","underlined":true,"clickEvent":{"action":"run_command","value":"/function ats_602:sign/info/1/0"}}',Text3:'{"text":"アニマル塔戦闘","bold":true}',Text4:'{"text":"って？","bold":true}'} replace
setblock 6028 81 13 minecraft:birch_wall_sign[facing=north]{Text2:'{"text":"ゲームモード一覧","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/function ats_602:sign/info/2/0"}}'} replace
setblock 6035 82 13 minecraft:birch_wall_sign[facing=north]{Text2:'{"text":"ユニットについて","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/function ats_602:sign/info/3/0"}}'} replace


setblock 6003 81 6 minecraft:air
setblock 6003 81 6 minecraft:birch_wall_sign[facing=east]{Text2:'{"text":"ATSから退出","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/function ats_602:sign/teleport/exit"}}'}

setblock 6037 67 16 minecraft:air
setblock 6037 67 16 minecraft:birch_wall_sign[facing=south]{Text2:'{"text":"Lobby","bold":true,"underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function ats_602:sign/teleport/lobby"}}'}

setblock 6040 67 16 minecraft:air
setblock 6040 67 16 minecraft:birch_wall_sign[facing=south]{Text2:'{"text":"2nd Floor","bold":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function ats_602:sign/teleport/2nd_floor"}}'}

setblock 6040 81 12 minecraft:air
setblock 6040 81 12 minecraft:birch_wall_sign[facing=north]{Text2:'{"text":"Ground","bold":true,"underlined":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function ats_602:sign/teleport/ground"}}'}

setblock 6037 81 12 minecraft:air
setblock 6037 81 12 minecraft:birch_wall_sign[facing=north]{Text2:'{"text":"2nd Floor","bold":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function ats_602:sign/teleport/2nd_floor"}}'}

setblock 6040 93 12 minecraft:air
setblock 6040 93 12 minecraft:birch_wall_sign[facing=north]{Text2:'{"text":"Ground","bold":true,"underlined":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function ats_602:sign/teleport/ground"}}'}

setblock 6037 93 12 minecraft:air
setblock 6037 93 12 minecraft:birch_wall_sign[facing=north]{Text2:'{"text":"Lobby","bold":true,"underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function ats_602:sign/teleport/lobby"}}'}

setblock 6028 82 17 minecraft:air
setblock 6028 82 17 minecraft:acacia_wall_sign[facing=south]{Text2:'{"text":"強制終了","bold":true,"underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/execute if score $602 gamemode_602 matches 1.. run function ats_602:assembly/cancel"}}'}
