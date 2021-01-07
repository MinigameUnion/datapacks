###
###自機の召喚
###

###id同期
scoreboard players operation #_id Id_101 = @s id_000
execute as @e[tag=Entity_101] store success score @s Group_101 if score @s Id_101 = #_id Id_101

###召喚
#既存の自機を削除
kill @e[tag=Player_101,scores={Group_101=1}]
#召喚
summon armor_stand ~ 62 -46 {Tags:[Player_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b}
loot replace entity @e[tag=temp] armor.head loot player_000:head
#idの設定
scoreboard players operation @e[tag=temp] Id_101 = @s id_000
tag @e[tag=temp] remove temp