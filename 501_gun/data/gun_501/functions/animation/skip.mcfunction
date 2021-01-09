execute if data storage gun_501:temp tag.animation.temp[1] run scoreboard players add @s skip_anime_501 1
execute unless data storage gun_501:temp tag.animation.temp[1] run data modify storage gun_501:temp tag.animation.temp append from storage gun_501:temp tag.animation.temp[0]
data remove storage gun_501:temp tag.animation.temp[-1].skip