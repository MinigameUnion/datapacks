data modify storage gun_501:temp tag set from entity @s SelectedItem.tag
data modify storage gun_501:temp tag.animation.playing set from storage gun_501:temp tag.animation.sprint[0]
data modify storage gun_501:temp tag.animation.playing append from storage gun_501:temp tag.animation.sprint[1][]
execute unless data storage gun_501:temp tag.gun.chamber.tag.ammo.bullet unless data storage gun_501:temp tag.gun.mag.mag.tag.mag{amount:0} run function gun_501:animation/action/cocking/start
function gun_501:animation/replace