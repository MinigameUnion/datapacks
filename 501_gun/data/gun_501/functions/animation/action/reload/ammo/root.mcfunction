execute store result score #AMOUNT num_501 run data get storage gun_501:temp tag.gun.amount
execute store result score #CAPACITY num_501 run data get storage gun_501:temp tag.gun.mag.mag.tag.mag.status.capacity
execute store result score #COUNT num_501 run data get storage gun_501:temp tag.gun.mag.status.amount
scoreboard players operation #COUNT num_501 += #AMOUNT num_501
scoreboard players operation #COUNT num_501 < #CAPACITY num_501
scoreboard players operation #COUNT num_501 -= #AMOUNT num_501
scoreboard players operation #COUNT num_501 > #0 num_000

execute if data storage gun_501:temp tag.gun.mag.mag.tag.mag.status.ammo run function gun_501:animation/action/reload/ammo/item
execute unless data storage gun_501:temp tag.gun.mag.mag.tag.mag.status.ammo run function gun_501:animation/action/reload/ammo/load

execute if score #AMOUNT num_501 >= #CAPACITY num_501 if data storage gun_501:temp tag.animation.playing[][{action:4b}] run function gun_501:animation/action/reload/finish