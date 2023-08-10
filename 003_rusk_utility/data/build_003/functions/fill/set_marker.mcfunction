#> build_003:fill/set_marker
### Set info in marker
# @within
#   function build_003:fill/*

## Data
    tag @s add fill.marker_003
    scoreboard players set @s _003 0
    scoreboard players set @s toggle_003 0
    data modify entity @s data.fill set from storage build_003: fill

## Rotation
    data modify entity @s Rotation set value [-90f,90f]
    data modify entity @s Pos set from storage build_003: fill.pos1

## Load the parameters
    # Size of x
    execute store result score #x1 _003 run data get storage build_003: fill.pos1[0]
    execute store result score #x2 _003 run data get storage build_003: fill.pos2[0]
    execute store result score @s x_003 store result score @s a_003 run scoreboard players operation #x2 _003 -= #x1 _003
    # Size of y
    execute store result score #x1 _003 run data get storage build_003: fill.pos1[1]
    execute store result score #x2 _003 run data get storage build_003: fill.pos2[1]
    execute store result score @s y_003 run scoreboard players operation #x2 _003 -= #x1 _003
    # Size of z
    execute store result score #x1 _003 run data get storage build_003: fill.pos1[2]
    execute store result score #x2 _003 run data get storage build_003: fill.pos2[2]
    execute store result score @s z_003 store result score @s b_003 run scoreboard players operation #x2 _003 -= #x1 _003