data remove storage gun_501:temp tag.animation.playing[][{action:4b}].action
data modify storage gun_501:temp tag.animation.playing append from storage gun_501:temp tag.animation.reload[2][]
execute unless data storage gun_501:temp tag.gun.chamber.tag.ammo.bullet run function gun_501:animation/action/cocking/append