#data modify storage gun_501:temp tag set from entity @s SelectedItem.tag
data modify storage gun_501:temp tag.animation.temp set from storage gun_501:temp tag.animation.shot
data modify storage gun_501:temp tag.gun.chamber set value 0b
execute store result score #AMOUNT num_501 run data get storage gun_501:temp tag.gun.magazine.amount 1
execute store result storage gun_501:temp tag.gun.magazine.amount int 1 run scoreboard players remove #AMOUNT num_501 1
execute if score #AMOUNT num_501 matches ..0 run data remove storage gun_501:temp tag.animation.temp[{action:2b}].action
function gun_501:animation/replace