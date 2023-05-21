data remove storage gun_501:temp tag
data modify storage gun_501:temp tag set from entity @s SelectedItem.tag

data modify storage gun_501:temp tag.gun.ads set value 0b
data modify storage gun_501:temp tag.gun.reloading set value 0b

data modify storage gun_501:temp tag.animation.base set from storage gun_501:temp tag.animation.default
data modify storage gun_501:temp tag.animation.playing set from storage gun_501:temp tag.animation.pick

execute unless data storage gun_501:temp tag.gun.chamber.tag.ammo.bullet unless data storage gun_501:temp tag.gun.mag.mag.tag.mag{amount:0} run function gun_501:animation/action/cocking/start

#tellraw @s [{"nbt":"tag.animation.playing","storage": "gun_501:temp"}]
function gun_501:animation/replace

advancement revoke @s only gun_501:clicked