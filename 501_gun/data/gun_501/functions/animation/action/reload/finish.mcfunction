data remove storage gun_501:temp tag.animation.temp[{action:4b}].action
data modify storage gun_501:temp tag.animation.temp append from storage gun_501:temp tag.animation.reload.finish[]
execute if data storage gun_501:temp tag.gun{chamber:0b} unless data storage gun_501:temp tag.gun.magazine{amount:0} run data modify storage gun_501:temp tag.animation.temp[-1].action set value 2b