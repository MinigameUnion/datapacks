#> build_003:fill/loop_place
### Loop during 1tick.
# @within
#   function build_003:fill/*

## Remove counts.
    scoreboard players remove @s x_003 2
    scoreboard players remove @s[scores={x_003=..0}] z_003 2
    scoreboard players remove @s[scores={x_003=..0,z_003=..0}] y_003 2

## Rotate direction.
    # x 1..->0
    execute if entity @s[scores={x_003=..0,z_003=1..},x_rotation=-90] run tp @s ~ ~ ~ ~-90 ~
    execute if entity @s[scores={x_003=..0,z_003=1..},x_rotation=90] run tp @s ~ ~ ~ ~90 ~
    # x 0->1..
    execute if entity @s[scores={x_003=1..,z_003=1..},x_rotation=-90] unless entity @s[y_rotation=-90] unless entity @s[y_rotation=90] run tp @s ~ ~ ~ ~90 90
    execute if entity @s[scores={x_003=1..,z_003=1..},x_rotation=90] unless entity @s[y_rotation=-90] unless entity @s[y_rotation=90] run tp @s ~ ~ ~ ~-90 -90
    # z 1..->0
    tp @s[scores={x_003=..0,z_003=..0,y_003=1..},x_rotation=90] ~ ~ ~ ~90 ~
    execute rotated as @s run tp @s[scores={x_003=..0,z_003=..0,y_003=1..}] ~ ~ ~ ~180 0
    execute if entity @s[scores={x_003=1..,z_003=1..,y_003=1..},x_rotation=0] unless entity @s[y_rotation=0] unless entity @s[y_rotation=180] run tp @s ~ ~ ~ ~ -90
    execute if entity @s[scores={x_003=1..,z_003=1..,y_003=1..},x_rotation=0] unless entity @s[y_rotation=-90] unless entity @s[y_rotation=90] run tp @s ~ ~ ~ ~-90 90

## Reset counts.
    scoreboard players operation @s[scores={x_003=..0}] x_003 = @s a_003
    scoreboard players operation @s[scores={z_003=..0}] z_003 = @s b_003

## Place block
    execute if entity @s[scores={toggle_003=0}] if block ~ ~ ~ air run setblock ~ ~ ~ light[level=15] replace
    scoreboard players add @s toggle_003 1
    scoreboard players set @s[scores={toggle_003=2..}] toggle_003 0

## Loop.
    # Remove count
    scoreboard players remove #fill.limit_003 _003 1
    # End of loop.
    execute if score #fill.limit_003 _003 matches 0 rotated as @s positioned ^ ^2 ^ run tp @s ~ ~ ~ ~ ~
    # Loop.
    execute if score #fill.limit_003 _003 matches 1.. if score @s y_003 matches 1.. rotated as @s positioned ^ ^2 ^ run function build_003:fill/loop_place