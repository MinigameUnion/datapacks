execute store result score #COOLTIME num_501 run data get storage gun_501:temp tag.gun.status.cooltime 1
scoreboard players operation #COOLTIME num_501 > #5 num_000

#data modify storage gun_501:temp temp set from storage gun_501:temp tag.animation.auto
#data modify storage gun_501:temp temp set from storage gun_501:temp tag.animation.shot
#data modify storage gun_501:temp temp prepend value [{value:0,action:7b}]
#execute unless data storage gun_501:temp temp[1][0].value run data modify storage gun_501:temp temp[0][0].value set from storage gun_501:temp temp[1][0]
#execute if data storage gun_501:temp temp[1][0].value run data modify storage gun_501:temp temp[0][0].value set from storage gun_501:temp temp[1][0].value
#data remove storage gun_501:temp temp[1]

execute store result score # num_501 if data storage gun_501:temp tag.animation.playing[]
execute store result score ## num_501 if data storage gun_501:temp tag.animation.auto[]
execute if score # num_501 < #COOLTIME num_501 run function gun_501:animation/action/auto/loop