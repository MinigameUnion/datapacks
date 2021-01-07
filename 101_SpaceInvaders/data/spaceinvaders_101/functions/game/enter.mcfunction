###
###入室の可否判定
###

###誰かがプレイ中
execute if score @e[tag=StagePoint_101,limit=1,sort=nearest] Id_101 matches 1.. run tellraw @s {"text":"プレイ中です","color":"red","bold":true}

###誰もプレイしていない
execute unless score @e[tag=StagePoint_101,limit=1,sort=nearest] Id_101 matches 1.. run function spaceinvaders_101:game/start