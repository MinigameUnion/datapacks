data modify storage gun_501:temp tag set from entity @s SelectedItem.tag

execute store result score #TYPE num_501 run data get storage gun_501:temp tag.gun.status.type 1
execute store result score #SPEED num_501 run data get storage gun_501:temp tag.gun.status.speed 100
scoreboard players operation #SPEED num_501 /= #4 num_000
execute store result score #DAMAGE num_501 run data get storage gun_501:temp tag.gun.status.damage 10
execute store result score #AMOUNT num_501 run data get storage gun_501:temp tag.gun.status.amount 1
execute store result score @s cooltime_501 run data get storage gun_501:temp tag.gun.status.cooltime 1

execute if data storage gun_501:temp tag.gun{ads:0b} store result score $spread spread_501 run data get storage gun_501:temp tag.gun.status.spread.hip 1
execute if data storage gun_501:temp tag.gun{ads:1b} store result score $spread spread_501 run data get storage gun_501:temp tag.gun.status.spread.ads 1
scoreboard players set $distance spread_501 100

scoreboard players operation #ID num_501 = @s id_000
data modify storage gun_501:temp Rotation set from entity @s Rotation

execute if score $spread spread_501 matches 1.. run function gun_501:spread/set

execute anchored eyes positioned ^ ^ ^ anchored feet run function gun_501:shot

execute if score #TYPE num_501 matches 4 anchored eyes positioned ^ ^ ^0.5 anchored feet run function gun_501:sound/sg/shot

execute store result score #RECOIL[0] num_501 run data get storage gun_501:temp tag.gun.status.recoil[0] 1
execute store result score #RECOIL[1] num_501 run data get storage gun_501:temp tag.gun.status.recoil[1] 1
function player_501:recoil

#animation
data modify storage gun_501:temp tag.animation.temp set from storage gun_501:temp tag.animation.shot
data modify storage gun_501:temp tag.gun.chamber set value 0b
execute store result score #AMOUNT num_501 run data get storage gun_501:temp tag.gun.magazine.amount 1
scoreboard players remove #AMOUNT num_501 1
execute store result storage gun_501:temp tag.gun.magazine.amount int 1 run scoreboard players operation #AMOUNT num_501 > #0 num_000
execute if score #AMOUNT num_501 matches ..0 run data remove storage gun_501:temp tag.animation.temp[{action:2b}].action
function gun_501:animation/replace