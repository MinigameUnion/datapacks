#> clay_502:structure/schedule
# @within
#   function clay_502:load
#   function clay_502:structure/schedule
#   function clay_502:structure/loaded

schedule function clay_502:structure/schedule 1t
execute positioned 4992 0 2000 if loaded ~0 ~ ~ if loaded ~16 ~ ~ if loaded ~32 ~ ~ if loaded ~48 ~ ~ if loaded ~0 ~ ~16 if loaded ~16 ~ ~16 if loaded ~32 ~ ~16 if loaded ~48 ~ ~16 if loaded ~0 ~ ~32 if loaded ~16 ~ ~32 if loaded ~32 ~ ~32 if loaded ~48 ~ ~32 if loaded ~0 ~ ~48 if loaded ~16 ~ ~48 if loaded ~32 ~ ~48 if loaded ~48 ~ ~48 run function clay_502:structure/loaded