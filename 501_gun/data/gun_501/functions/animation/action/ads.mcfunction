data modify storage gun_501:temp tag.gun.ads set value 1b
data modify storage gun_501:temp tag.animation.base set from storage gun_501:temp tag.animation.ads.value
execute unless data storage gun_501:temp tag.animation.playing[0] run data modify storage gun_501:temp tag.CustomModelData set from storage gun_501:temp tag.animation.ads.value
scoreboard players set #ACTION num_501 0