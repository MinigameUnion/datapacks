data modify storage gun_501:temp tag.animation.playing append value [{value:0,action:2b}]
execute unless data storage gun_501:temp tag.animation.playing[-2][0].value run data modify storage gun_501:temp tag.animation.playing[-1][0].value set from storage gun_501:temp tag.animation.playing[-2][0]
execute if data storage gun_501:temp tag.animation.playing[-2][0].value run data modify storage gun_501:temp tag.animation.playing[-1][0].value set from storage gun_501:temp tag.animation.playing[-2][0].value
data remove storage gun_501:temp tag.animation.playing[-2]