#> ms_801:game/timer
# タイマー
# @internal

# tick毎
scoreboard players add $Tick General_801 1
execute if score $Tick General_801 matches 20.. run function ms_801:game/timer_sec
