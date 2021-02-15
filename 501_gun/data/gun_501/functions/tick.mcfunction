#> gun_501:tick
# @within
#   function gun_501:tick_check

#PLAYER
execute as @a[tag=gun_501,predicate=gun_501:offhand] at @s run function gun_501:offhand
execute as @a[tag=gun_501,scores={drop_501=1..}] at @s anchored eyes positioned ^ ^ ^ run function player_501:dropped
execute as @a[tag=gun_501] store result score @s ope_501 run data get entity @s SelectedItem.tag.AttributeModifiers[0].Amount 100
execute as @a[tag=gun_501,predicate=gun_501:mainhand] unless score @s gun_id_501 = @s ope_501 run scoreboard players set @s sis_501 -1
execute as @a[tag=gun_501] run scoreboard players operation @s gun_id_501 = @s ope_501

execute as @a[tag=gun_501] store result score @s ope_501 run data get entity @s SelectedItemSlot
execute as @a[tag=gun_501,predicate=gun_501:mainhand] unless score @s sis_501 = @s ope_501 at @s run function player_501:picked

execute as @a[tag=gun_501,advancements={gun_501:clicked=true}] unless score @s cooltime_501 matches 1.. at @s run function player_501:triggered
#ADS
execute as @a[tag=gun_501,predicate=player_000:is_sneaking,predicate=gun_501:mainhand,predicate=!gun_501:ads,predicate=!gun_501:animating] at @s run function gun_501:animation/ads
execute as @a[tag=gun_501,predicate=!player_000:is_sneaking,predicate=gun_501:ads,predicate=!gun_501:animating] at @s run function gun_501:animation/hip
#RUN
execute as @a[tag=gun_501,predicate=player_000:is_sprinting,predicate=gun_501:mainhand,predicate=!gun_501:animating] at @s run function gun_501:animation/sprint
#animation/tick
execute as @a[tag=gun_501,predicate=gun_501:animating] unless score @s skip_anime_501 matches 1.. at @s run function gun_501:animation/tick

execute as @a[tag=gun_501,predicate=gun_501:clicked] run loot replace entity @s weapon.mainhand loot gun_501:recharge

#execute as @a[tag=gun_501,nbt={SelectedItem:{id:"minecraft:crossbow"}}] at @s run stopsound @a[distance=0.1..16] player item.armor.equip_generic

scoreboard players remove @a[tag=gun_501,scores={skip_anime_501=1..}] skip_anime_501 1
scoreboard players remove @a[tag=gun_501,scores={cooltime_501=1..}] cooltime_501 1
scoreboard players set @a[tag=gun_501,scores={walk_501=1..}] walk_501 0

execute as @a[tag=gun_501] run scoreboard players operation @s sis_501 = @s ope_501


#ENTITY
execute as @e[type=area_effect_cloud,tag=bullet_501] at @s run function bullet_501:root
execute store result score #KILLED num_501 run kill @e[type=armor_stand,tag=hit_mark_501,nbt={PortalCooldown:0}]
scoreboard players operation #HITMARK ope_501 -= #KILLED num_501
kill @e[tag=kill_501]