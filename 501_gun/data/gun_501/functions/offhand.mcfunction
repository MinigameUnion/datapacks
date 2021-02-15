scoreboard players set #1 num_501 -106
execute store result score #2 num_501 run data get entity @s SelectedItemSlot

function inv_501:exchange

stopsound @a[tag=!link_501,distance=..16] player item.armor.equip_generic

execute unless predicate player_000:is_sprinting run function gun_501:animation/action/reload/check