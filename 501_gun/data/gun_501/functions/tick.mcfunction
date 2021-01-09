#PLAYER
execute as @a[tag=gun_501,nbt={Inventory:[{Slot:-106b,tag:{gun:{}}}]}] at @s run function gun_501:offhand
execute as @a[tag=gun_501,scores={drop_501=1..}] at @s anchored eyes positioned ^ ^ ^ run function player_501:dropped
execute as @a[tag=gun_501] store result score @s ope_501 run data get entity @s SelectedItem.tag.AttributeModifiers[0].Amount 100
execute as @a[tag=gun_501,nbt={SelectedItem:{tag:{gun:{}}}}] unless score @s gun_id_501 = @s ope_501 run scoreboard players set @s sis_501 -1
execute as @a[tag=gun_501] run scoreboard players operation @s gun_id_501 = @s ope_501

execute as @a[tag=gun_501] store result score @s ope_501 run data get entity @s SelectedItemSlot
execute as @a[tag=gun_501,nbt={SelectedItem:{tag:{gun:{}}}}] unless score @s sis_501 = @s ope_501 at @s run function player_501:picked

execute as @a[tag=gun_501,advancements={gun_501:clicked=true}] unless score @s cooltime_501 matches 1.. at @s run function player_501:triggered

execute as @a[tag=gun_501,predicate=player_000:is_sneaking,nbt={SelectedItem:{id:"minecraft:crossbow",tag:{gun:{ads:0b}}}}] unless data entity @s SelectedItem.tag.animation.temp[0] at @s run function gun_501:animation/ads
execute as @a[tag=gun_501,predicate=!player_000:is_sneaking,nbt={SelectedItem:{id:"minecraft:crossbow",tag:{gun:{ads:1b}}}}] unless data entity @s SelectedItem.tag.animation.temp[0] at @s run function gun_501:animation/hip
execute as @a[tag=gun_501,nbt={SelectedItem:{tag:{gun:{}}}}] unless score @s skip_anime_501 matches 1.. if data entity @s SelectedItem.tag.animation.temp[0] at @s run function gun_501:animation/tick
execute as @a[tag=gun_501,nbt={SelectedItem:{id:"minecraft:crossbow",tag:{gun:{},Charged:0b}}}] run loot replace entity @s weapon.mainhand loot gun_501:recharge

scoreboard players remove @a[tag=gun_501,scores={skip_anime_501=1..}] skip_anime_501 1
scoreboard players remove @a[tag=gun_501,scores={cooltime_501=1..}] cooltime_501 1

execute as @a[tag=gun_501] run scoreboard players operation @s sis_501 = @s ope_501



#ENTITY
execute as @e[type=area_effect_cloud,tag=bullet_501] at @s run function bullet_501:root
execute store result score #KILLED num_501 run kill @e[type=armor_stand,tag=hit_mark_501,nbt={PortalCooldown:0}]
scoreboard players operation #HITMARK ope_501 -= #KILLED num_501
kill @e[tag=kill_501]