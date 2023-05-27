advancement revoke @s only clay_502:picked_gun

tellraw @s ["",{"text":"[QuickShot] ","color":"yellow"},{"text":"クレー射撃 クイックショット","color":"white"}]
tellraw @s {"translate":"計%sを%sで奪い合うモードです","color":"gray","with":[{"text":"18個のクレー","color":"white"},{"text":"2人のプレイヤー","color":"white"}]}
tellraw @s {"translate":"%sが多い方が勝者となります","color":"gray","with":[{"text":"撃ちぬいたクレーの数","color":"white"}]}
tellraw @s {"translate":"勝者にはボーナスとして","color":"gray","with":[{"text":"撃ちぬいたクレーの数","color":"white"}]}
tellraw @s {"translate":"%sが%sスタートします","color":"gray","with":[{"text":"参加者の両方","color":"white"},{"text":"銃を手に取って","color":"white"}]}

#scoreboard players operation #ID num_502 = @s id_000
#execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_502 run data modify storage clay_502:storage match.player append from entity @s Item.tag.SkullOwner.Name