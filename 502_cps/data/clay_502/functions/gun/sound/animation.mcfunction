#> clay_502:gun/sound/animation
# @within
#   tag/function gun_501:sound/animation

execute if data storage gun_501:api sound{profile:"clay_502:s1897",name:"pump"} run playsound minecraft:block.wooden_trapdoor.open voice @a[distance=..32] ~ ~ ~ 1 1.2 0
execute if data storage gun_501:api sound{profile:"clay_502:s1897",name:"load"} run playsound minecraft:block.wooden_trapdoor.open voice @a[distance=..32] ~ ~ ~ 1 2 0