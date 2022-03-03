#> _test:start
# @within
#   _test:**

scoreboard players operation #TEMP num_000 = #TEST num_000
data remove storage _:test save[]
data remove storage _:test result
execute if score #TEMP num_000 matches 1.. run function _test:loop
data modify storage _:test result set from storage _:test list[-1]
data remove storage _:test list[-1]
data modify storage _:test list append from storage _:test save[]