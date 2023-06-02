data modify storage ats_602:main ItemClip set from entity @s SelectedItem.tag
execute summon minecraft:item_display run function ats_602:unit/init
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.0 1.0 0.0

item replace entity @s weapon.mainhand with minecraft:air

execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:paper"}] run function ats_602:p/say/main

scoreboard players remove $602 e_602 1
scoreboard players reset @s sneak_602
tag @s remove shooter_602

scoreboard players set $pause_602 a_602 0
execute store result score $timer_602 a_602 run data get storage ats_602:main wait