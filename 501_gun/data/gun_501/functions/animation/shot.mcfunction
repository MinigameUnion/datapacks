#data modify storage gun_501:temp tag.animation.playing set from storage gun_501:temp tag.animation.shot
#data modify storage gun_501:temp tag.gun.chamber set value -1b
#execute store result score #AMOUNT num_501 run data get storage gun_501:temp tag.gun.mag.mag.tag.mag.amount 1
#execute store result storage gun_501:temp tag.gun.mag.mag.tag.mag.amount int 1 run scoreboard players remove #AMOUNT num_501 1
#execute if score #AMOUNT num_501 matches ..0 run data remove storage gun_501:temp tag.animation.playing[][{action:2b}].action
#function gun_501:animation/replace

data modify storage gun_501:temp tag.animation.playing set from storage gun_501:temp tag.animation.shot
function gun_501:chamber/shot
execute store result score #firemode num_501 run data get storage gun_501:temp tag.gun.firemode[0]
execute if score #firemode num_501 matches 2 if entity @s[advancements={gun_501:clicked={auto=false}}] run function gun_501:animation/action/auto/root
execute if data storage gun_501:temp tag.gun.mag.mag.tag.mag{amount:0} run data remove storage gun_501:temp tag.animation.playing[{action:2b}].action
function gun_501:animation/replace