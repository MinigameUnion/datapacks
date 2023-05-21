data modify storage gun_501:temp tag set from entity @s SelectedItem.tag

execute store result score #TYPE num_501 run data get storage gun_501:temp tag.gun.status.type 1
execute store result score @s cooltime_501 run data get storage gun_501:temp tag.gun.status.cooltime 1
execute store result score #SPEED num_501 run data get storage gun_501:temp tag.gun.status.speed 2.5
execute store result score #ZEROIN num_501 run data get storage gun_501:temp tag.gun.status.zeroin 5000.0
execute store result score #DAMAGE num_501 run data get storage gun_501:temp tag.gun.chamber.tag.ammo.damage 10
execute store result score #AMOUNT num_501 run data get storage gun_501:temp tag.gun.chamber.tag.ammo.bullet 1
execute store result score #PARTICLE num_501 run data get storage gun_501:temp tag.gun.chamber.tag.ammo.particle 1
scoreboard players set #GRAVITY num_501 0
execute if score #ZEROIN num_501 matches 1.. run function gun_501:get_zeroin

scoreboard players operation #ID num_501 = @s id_000
data modify storage gun_501:temp Rotation set from entity @s Rotation

function player_501:get_wobble

execute store result score #spread spread_501 run data get storage gun_501:temp tag.gun.status.spread.ads 1
execute store result score # num_501 run data get storage gun_501:temp tag.gun.chamber.tag.ammo.spread 1
scoreboard players operation #spread spread_501 += # num_501
execute if score #spread spread_501 matches 1.. run function gun_501:spread/set

execute anchored eyes positioned ^ ^ ^ anchored feet run function gun_501:shot

execute if score #TYPE num_501 matches 4 anchored eyes positioned ^ ^ ^0.5 anchored feet run function gun_501:sound/sg/shot

execute store result score #RECOIL[0] num_501 run data get storage gun_501:temp tag.gun.status.recoil[0][0] 100
execute store result score #RECOIL[1] num_501 run data get storage gun_501:temp tag.gun.status.recoil[0][1] 100
function player_501:recoil

#animation
function gun_501:animation/shot