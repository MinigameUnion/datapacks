data modify storage gun_501:temp tag set from entity @s SelectedItem.tag
data modify storage gun_501:temp tag.animation.playing set from storage gun_501:temp tag.animation.ads.list[1]
data modify storage gun_501:temp tag.animation.base set from storage gun_501:temp tag.animation.default
function gun_501:animation/replace