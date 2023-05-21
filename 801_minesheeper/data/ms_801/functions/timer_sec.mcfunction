#> ms_801:timer_sec
# タイマー/1秒経過時
# @internal

# リセット
scoreboard players add $Time General_801 1
scoreboard players remove $Tick General_801 20

# 時間表示更新
execute if score $Time General_801 matches 0..9 run bossbar set time_801 name [{"text":"経過時間：00"},{"score":{"name":"$Time","objective":"General_801"}}]
execute if score $Time General_801 matches 10..99 run bossbar set time_801 name [{"text":"経過時間：0"},{"score":{"name":"$Time","objective":"General_801"}}]
execute if score $Time General_801 matches 100.. run bossbar set time_801 name [{"text":"経過時間："},{"score":{"name":"$Time","objective":"General_801"}}]
