#> ms_801:timer
# タイマー
# @internal

# tick毎
scoreboard players add $Tick General_801 1
execute if score $Tick General_801 matches 20.. run function ms_801:timer_sec
