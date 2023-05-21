execute store result score #SUCCESS num_501 run data modify storage gun_501:temp Thrower set from entity @s Thrower
data modify storage gun_501:temp Thrower set from storage gun_501:temp backup

execute if score #SUCCESS num_501 matches 0 run data modify entity @s Item.tag.CustomModelData set from entity @s Item.tag.animation.default