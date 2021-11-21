summon minecraft:armor_stand ~ ~ ~ {Tags:["tile_602","start_602"],NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{Count:1b,id:"minecraft:slime_ball",tag:{CustomModelData:602000,mul_602:"x1.0"}}]}
execute as @e[sort=nearest,limit=1,tag=tile_602,tag=!go_602] run function ats_602:tile/summon/0
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.0 1.0 0.0
item replace entity @s weapon.mainhand with minecraft:air

execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:paper"}] run function ats_602:p/say/main

scoreboard players remove $602 e_602 1
scoreboard players reset @s sneak_602
execute store result bossbar 0_602 value run scoreboard players get $602 e_602
tag @s remove shooter_602

execute if score $602 gamemode_602 matches 1 run schedule function ats_602:m/s 3s append
execute unless score $602 gamemode_602 matches 1 run schedule function ats_602:m/s 3t append
