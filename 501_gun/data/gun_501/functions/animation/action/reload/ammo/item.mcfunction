scoreboard players operation #PLUS num_501 = #COUNT num_501

data modify storage gun_501:temp compare.item set from storage gun_501:temp tag.gun.mag.mag.tag.mag.status.ammo
data modify storage gun_501:temp reload.default.tag.ammo set from storage gun_501:temp tag.gun.status.ammo
function gun_501:animation/action/reload/item/root

data modify storage gun_501:temp tag.gun.mag.mag.tag.mag.ammo append from storage gun_501:temp reload.temp[]

scoreboard players operation #PLUS num_501 -= #COUNT num_501
execute store result storage gun_501:temp tag.gun.amount int 1 run scoreboard players operation #AMOUNT num_501 += #PLUS num_501
execute unless data storage gun_501:temp tag.gun.chamber.tag.ammo.bullet store result storage gun_501:temp tag.gun.mag.mag.tag.mag.amount int 1 run scoreboard players get #AMOUNT num_501
execute if data storage gun_501:temp tag.gun.chamber.tag.ammo.bullet store result storage gun_501:temp tag.gun.mag.mag.tag.mag.amount int 0.9999999999 run scoreboard players get #AMOUNT num_501