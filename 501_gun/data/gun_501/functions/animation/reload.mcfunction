execute if data storage gun_501:temp tag.gun{ads:1b} run data modify storage gun_501:temp tag.animation.playing set from storage gun_501:temp tag.animation.ads.list[1]
execute if data storage gun_501:temp tag.gun{ads:1b} run data modify storage gun_501:temp tag.animation.base set from storage gun_501:temp tag.animation.default
data remove storage gun_501:temp tag.animation.playing[][{action:2b}].action
data modify storage gun_501:temp tag.animation.playing append from storage gun_501:temp tag.animation.reload[0][]
data modify storage gun_501:temp tag.animation.playing append from storage gun_501:temp tag.animation.reload[1][]
data modify storage gun_501:temp tag.gun.reloading set value 1b
function gun_501:animation/replace