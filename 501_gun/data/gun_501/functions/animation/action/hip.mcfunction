data modify storage gun_501:temp tag.gun.ads set value 0b
data modify storage gun_501:temp tag.animation.base set from storage gun_501:temp tag.animation.default
execute unless data storage gun_501:temp tag.animation.playing[0] run data modify storage gun_501:temp tag.CustomModelData set from storage gun_501:temp tag.animation.default