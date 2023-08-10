#> build_003:fill/loop_tick
### Loop every 1 tick
# @within
#   function build_003:fill/*

## Select the merker in order.
    # Get the loop limit during 1tick.
    execute store result score #fill.limit_003 _003 run data get storage build_003: fill.limit
    # When everyone have _003=1, reset the score.
    execute unless entity @e[type=marker,tag=fill.marker_003,scores={_003=0},limit=1] run scoreboard players set @e[type=marker,tag=fill.marker_003] _003 0
    # Select target and start place.
    execute as @e[type=marker,tag=fill.marker_003,limit=1,sort=arbitrary,scores={_003=0}] at @s run function build_003:fill/loop_place

## Delete finshed marker.
    kill @e[type=marker,tag=fill.marker_003,scores={y_003=..0}]

## Let's loop.
    execute if entity @e[tag=fill.marker_003] run schedule function build_003:fill/loop_tick 1t