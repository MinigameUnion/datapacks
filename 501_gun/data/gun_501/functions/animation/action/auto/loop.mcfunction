data modify storage gun_501:temp tag.animation.playing append from storage gun_501:temp tag.animation.auto[]
#data modify storage gun_501:temp tag.animation.playing append from storage gun_501:temp temp[]

scoreboard players operation # num_501 += ## num_501
execute if score # num_501 < #COOLTIME num_501 run function gun_501:animation/action/auto/loop