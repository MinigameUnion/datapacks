data modify storage ats_602:main ChaosOptions.L1 set value 1b
tellraw @a[scores={playing_000=602}] [{"text":"[ﾈ兄] ","color":"red"},{"text":"ｹｲｵｫｩｽ…","color":"dark_red","bold": true},{"text": " - Level 1 解放","color":"red"}]
execute positioned as @s run playsound minecraft:block.end_portal.spawn player @s ~ ~ ~ 0.4 1.0