execute store result storage gun_501:temp tag.gun.amount int 1 run scoreboard players operation #AMOUNT num_501 += #COUNT num_501
execute unless data storage gun_501:temp tag.gun.chamber.tag.ammo.bullet store result storage gun_501:temp tag.gun.mag.mag.tag.mag.amount int 1 run scoreboard players get #AMOUNT num_501
execute if data storage gun_501:temp tag.gun.chamber.tag.ammo.bullet store result storage gun_501:temp tag.gun.mag.mag.tag.mag.amount int 0.9999999999 run scoreboard players get #AMOUNT num_501

data modify storage gun_501:temp tag.gun.mag.mag.tag.mag.ammo append value {Count:1b,tag:{ammo:{}}}
data modify storage gun_501:temp tag.gun.mag.mag.tag.mag.ammo[-1].tag.ammo set from storage gun_501:temp tag.gun.status.ammo
execute store result storage gun_501:temp tag.gun.mag.mag.tag.mag.ammo[-1].Count int 1 run scoreboard players get #COUNT num_501