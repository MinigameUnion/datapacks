#必須処理
advancement revoke @s only ms_801:golden_apple
clear @s golden_apple{801:1b}
loot give @s loot ms_801:golden_apple

tag @s[y=10,dy=5] add YLow_801
tag @s[y=20,dy=5] add YHigh_801
tp @s[tag=YLow_801] ~ 21 ~
tp @s[tag=YHigh_801] ~ 11 ~
tag @s[tag=YLow_801] remove YLow_801
tag @s[tag=YHigh_801] remove YHigh_801
execute at @s run playsound entity.enderman.teleport master @a[scores={playing_000=801}] ~ ~ ~ 1 1.5 1
execute at @s run particle portal ~ ~ ~ 0.3 0.7 0.3 0.3 50