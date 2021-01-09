data modify storage gun_501:temp tag set from entity @s SelectedItem.tag

execute store result score #AMOUNT num_501 run data get storage gun_501:temp tag.gun.magazine.amount 1
execute store result score #DEFAULT num_501 run data get storage gun_501:temp tag.gun.magazine.data.default 1
execute store result score #RELOAD num_501 run data get storage gun_501:temp tag.gun.reloading

execute if score #RELOAD num_501 matches 1 if data storage gun_501:temp tag.animation.temp[{action:4b}] run function gun_501:animation/action/reload/cancel
execute if score #RELOAD num_501 matches 0 if score #AMOUNT num_501 < #DEFAULT num_501 if data storage gun_501:temp tag.gun{ads:0b} unless data storage gun_501:temp tag.animation.temp[{action:1b}] at @s run function #gun_501:reload