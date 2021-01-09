data modify storage gun_501:temp tag.animation.temp append from storage gun_501:temp tag.animation.reload.start[]
data modify storage gun_501:temp tag.animation.temp append from storage gun_501:temp tag.animation.reload.loop[]
data modify storage gun_501:temp tag.gun.reloading set value 1b
function gun_501:animation/replace