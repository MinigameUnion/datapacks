data modify storage gun_501:temp tag set from entity @s SelectedItem.tag
execute store result score #BASE num_501 run data get storage gun_501:temp tag.animation.base 1
execute unless data storage gun_501:temp tag.animation.playing[0][0].value store result score #ADDITION num_501 run data get storage gun_501:temp tag.animation.playing[0][0] 1
execute if data storage gun_501:temp tag.animation.playing[0][0].value store result score #ADDITION num_501 run data get storage gun_501:temp tag.animation.playing[0][0].value 1
execute store result score #ACTION num_501 run data get storage gun_501:temp tag.animation.playing[0][0].action 1
execute store result score #SOUND num_501 run data get storage gun_501:temp tag.animation.playing[0][0].sound 1
execute store result score @s skip_anime_501 run data get storage gun_501:temp tag.animation.playing[0][0].skip 1
execute if score @s skip_anime_501 matches 1.. run function gun_501:animation/skip

execute store result storage gun_501:temp tag.CustomModelData int 1 run scoreboard players operation #BASE num_501 += #ADDITION num_501
data remove storage gun_501:temp tag.animation.playing[0]
execute if score #ACTION num_501 matches 1.. run function gun_501:animation/action
execute if score #SOUND num_501 matches 1.. positioned ~ ~1 ~ run function gun_501:animation/sound

execute if data storage gun_501:temp tag.animation.playing[0] run function gun_501:animation/replace
execute unless data storage gun_501:temp tag.animation.playing[0] run function gun_501:animation/finish