#> ms_801:game/record/root
# 記録計算
# @internal

scoreboard players set $Tmp3 General_801 6
scoreboard players set $Tmp General_801 20
scoreboard players operation $Tmp General_801 *= $Time General_801
scoreboard players operation $Tmp General_801 += $Tick General_801
execute if score $Dif General_801 matches 0 run function ms_801:game/record/easy
execute if score $Dif General_801 matches 1 run function ms_801:game/record/normal
execute if score $Dif General_801 matches 2 run function ms_801:game/record/hard
execute if score $Dif General_801 matches 3 run function ms_801:game/record/hardcore
execute if score $Dif General_801 matches 4 run function ms_801:game/record/nightmare
execute if score $Tmp3 General_801 matches 1..5 as @a[scores={playing_000=801}] at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 0.5 2 1
execute if score $Tmp3 General_801 matches 1..5 run tellraw @a[scores={playing_000=801}] {"translate":"%1$s位にランクイン！","color":"red","bold":true,"with":[{"score":{"name":"$Tmp3","objective":"General_801"}}]}