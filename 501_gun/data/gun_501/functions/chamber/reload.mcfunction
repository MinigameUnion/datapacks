data modify storage gun_501:temp tag.gun.chamber.tag set from storage gun_501:temp tag.gun.mag.mag.tag.mag.ammo[0].tag
execute store result score #Count num_501 store result storage gun_501:temp tag.gun.mag.mag.tag.mag.ammo[0].Count byte 1 run data get storage gun_501:temp tag.gun.mag.mag.tag.mag.ammo[0].Count 0.9999999999
execute store result score #AMOUNT num_501 store result storage gun_501:temp tag.gun.mag.mag.tag.mag.amount int 1 run data get storage gun_501:temp tag.gun.mag.mag.tag.mag.amount 0.9999999999
execute store result storage gun_501:temp tag.gun.amount int 1 run scoreboard players add #AMOUNT num_501 1
execute if score #Count num_501 matches 0 run data remove storage gun_501:temp tag.gun.mag.mag.tag.mag.ammo[0]