#> player_000:join_game
# @public
### ゲームのワールドへ入室時の処理

## プレイヤーの状態の変更
gamemode adventure @s
effect clear @s

## 紐づけアイテム君を探査
scoreboard players operation #ID num_000 = @s id_000
execute as @e[type=item,x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 run tag @s add item_000

## ？
execute as @e[type=item,x=0.5,y=1.0,z=0.5,distance=..0,tag=item_000] run data modify entity @s Item.tag.status set value 1b
execute if data entity @s Inventory[].tag.bonus.in run function inv_000:bonus/return

# ## テレポート前の場所を記録
# data modify entity @e[type=item,x=0.5,y=1.0,z=0.5,distance=..0,tag=item_000,limit=1] Item.tag.PlayerPos set from entity @s Pos