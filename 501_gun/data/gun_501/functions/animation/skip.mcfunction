execute if data storage gun_501:temp tag.animation.playing[1] run scoreboard players add @s skip_anime_501 1
execute unless data storage gun_501:temp tag.animation.playing[1] run data modify storage gun_501:temp tag.animation.playing append from storage gun_501:temp tag.animation.playing[0]
data remove storage gun_501:temp tag.animation.playing[-1][0].skip