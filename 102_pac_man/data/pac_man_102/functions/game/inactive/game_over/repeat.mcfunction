#ゲームオーバー 常時実行

#info
# as,at:player(score{Game_102=17})
# repeat

#タイマー進行
scoreboard players remove @s _Timer_102 1

#タイトル表示
execute if score @s _Timer_102 matches 77..79 run title @s subtitle {"text":"G","color":"red"}
execute if score @s _Timer_102 matches 74..76 run title @s subtitle {"text":"GA","color":"red"}
execute if score @s _Timer_102 matches 71..73 run title @s subtitle {"text":"GAM","color":"red"}
execute if score @s _Timer_102 matches 68..70 run title @s subtitle {"text":"GAME","color":"red"}
execute if score @s _Timer_102 matches 65..67 run title @s subtitle {"text":"GAME ","color":"red"}
execute if score @s _Timer_102 matches 61..63 run title @s subtitle {"text":"GAME O","color":"red"}
execute if score @s _Timer_102 matches 58..60 run title @s subtitle {"text":"GAME OV","color":"red"}
execute if score @s _Timer_102 matches 55..57 run title @s subtitle {"text":"GAME OVE","color":"red"}
execute if score @s _Timer_102 matches ..53 run title @s subtitle {"text":"GAME OVER","color":"red"}
title @s times 0 2 0
title @s title {"text":""}

#プレイヤーの固定
function pac_man_102:mobs/player/pos

#コンテニュー画面へ移行
execute if score @s _Timer_102 matches 3 if score @s coin_000 matches 300.. run function pac_man_102:game/inactive/continue/init

#ゲームのリセット
execute if score @s _Timer_102 matches 0 run scoreboard players operation #mini_102 _Point_102 = @s _Point_102
execute if score @s _Timer_102 matches 0 run scoreboard players operation #mini_102 _Point_102 /= #operation_10_102 _Operation_102
execute if score @s _Timer_102 matches 0 run tellraw @s {"translate":"--%s%s-%s%s%s%s---\nあなたの得点 : %s\n獲得ミニ : %s\n---------------------","with":[{"text":"●","color":"yellow","bold":true},{"text":"●","color":"white"},{"text":"●","color":"red","bold":true},{"text":"●","color":"light_purple","bold":true},{"text":"●","color":"gold","bold":true},{"text":"●","color":"aqua","bold":true},{"score":{"name":"@s","objective": "_Point_102"}},{"score":{"name":"#mini_102","objective": "_Point_102"}}]}
execute if score @s _Timer_102 matches 0 run scoreboard players operation @s add_mini_000 = #mini_102 _Point_102
execute if score @s _Timer_102 matches 0 run function pac_man_102:reset