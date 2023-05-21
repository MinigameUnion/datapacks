data modify storage gun_501:temp tag set from entity @s SelectedItem.tag

execute store result score #AMOUNT num_501 run data get storage gun_501:temp tag.gun.amount 1
execute store result score #CAPACITY num_501 run data get storage gun_501:temp tag.gun.mag.mag.tag.mag.status.capacity 1
execute store result score #RELOAD num_501 run data get storage gun_501:temp tag.gun.reloading

execute if score #RELOAD num_501 matches 0 if data storage gun_501:temp tag.gun.mag.mag{Count:0b} if data storage gun_501:temp tag.gun.mag.mag.tag.mag.status.ammo run function gun_501:animation/action/reload/item/check
execute if score #RELOAD num_501 matches 0 unless data storage gun_501:temp tag.gun.mag.mag{Count:0b} if data storage gun_501:temp tag.gun.mag.status.mag run function gun_501:animation/action/reload/item/check

execute if score #RELOAD num_501 matches 1 if data storage gun_501:temp tag.animation.playing[][{action:4b}] run function gun_501:animation/action/reload/cancel
execute if score #RELOAD num_501 matches 0 if score #AMOUNT num_501 < #CAPACITY num_501 unless data storage gun_501:temp tag.animation.playing[][{action:1b}] at @s run function #gun_501:reload