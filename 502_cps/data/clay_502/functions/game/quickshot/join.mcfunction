advancement revoke @s only clay_502:picked_gun
tellraw @s ["",{"text":"[QuickShot] ","color":"yellow"},{"text":"合計","color":"gray"},{"text":"18個のクレー","color":"reset"},{"text":"を","color":"gray"},{"text":"撃ち合い奪い合う","color":"reset"},{"text":"モード です","color":"gray"}]
tellraw @s ["",{"text":"[QuickShot] ","color":"yellow"},{"text":"撃ちぬいたクレーの数","color":"reset"},{"text":" , ","color":"gray"},{"text":"発射からヒットするまでの時間","color":"reset"},{"text":" によって","color":"gray"}]
tellraw @s ["",{"text":"[QuickShot] ","color":"yellow"},{"text":"勝敗","color":"reset"},{"text":"と","color":"gray"},{"text":"獲得できるミニ","color":"reset"},{"text":"が決定します","color":"gray"}]
tellraw @s ["",{"text":"[QuickShot] ","color":"yellow"},{"text":"参加者全員","color":"reset"},{"text":"が","color":"gray"},{"text":"銃を手に取ると","color":"reset"},{"text":"スタートします","color":"gray"}]


#scoreboard players operation #ID num_502 = @s id_000
#execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_502 run data modify storage clay_502:storage match.player append from entity @s Item.tag.SkullOwner.Name