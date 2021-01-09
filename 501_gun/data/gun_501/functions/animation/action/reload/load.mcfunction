execute store result score #AMOUNT num_501 run data get storage gun_501:temp tag.gun.magazine.amount
execute store result score #DEFAULT num_501 run data get storage gun_501:temp tag.gun.magazine.data.default
execute store result storage gun_501:temp tag.gun.magazine.amount int 1 run scoreboard players add #AMOUNT num_501 1
execute if score #AMOUNT num_501 >= #DEFAULT num_501 if data storage gun_501:temp tag.animation.temp[{action:4b}] run function gun_501:animation/action/reload/finish