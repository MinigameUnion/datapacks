#> _test:loop
# @within
#   _test:**

data modify storage temp_000:playdata player.raw append value {}
data modify storage temp_000:playdata player.uuid append value "0-0-0-0-0"
scoreboard players remove #TEMP num_000 1
execute if score #TEMP num_000 matches 1.. run function _test:loop