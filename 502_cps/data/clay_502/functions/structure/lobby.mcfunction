#> clay_502:structure/lobby
# @within
#   function clay_502:structure/loaded

execute as @e[tag=clay_502,dx=63,dy=31,dz=63] run function tool_000:entity/delete
schedule function clay_502:structure/lobby/schedule 2t