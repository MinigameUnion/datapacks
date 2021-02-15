execute store result score #BASE num_501 run data get storage gun_501:temp tag.animation.base 1
execute unless data storage gun_501:temp tag.gun.chamber.tag.ammo.bullet store result storage gun_501:temp tag.CustomModelData int 1 run scoreboard players get #BASE num_501
execute if data storage gun_501:temp tag.gun.chamber.tag.ammo.bullet store result storage gun_501:temp tag.CustomModelData int 1 run scoreboard players add #BASE num_501 1

scoreboard players operation #ID num_501 = @s id_000
execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_501 run data modify entity @s Item.tag.501.tag set from storage gun_501:temp tag
tag @s add link_501
execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_501 run loot replace entity @p[tag=link_501,distance=..0.5,limit=1] weapon.mainhand loot gun_501:replace
stopsound @a[tag=!link_501,distance=..16] player item.armor.equip_generic
tag @s remove link_501

#data modify storage inv_000:api Name set from storage gun_501:temp tag.display.Name
#function inv_000:resolve
#data modify storage gun_501:temp tag.display.Name set from storage inv_000:api Name

#function inv_000:selecteditem/get
#data modify storage inv_000:api SelectedItem.id set value "minecraft:crossbow"
#data modify storage inv_000:api SelectedItem.tag set from storage gun_501:temp tag
#function inv_000:selecteditem/restore