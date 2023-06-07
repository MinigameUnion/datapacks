data modify storage ats_602:main ChaosOptions.L2 set value 1b
tellraw @a[scores={playing_000=602}] [{"text":"[  ネ 兄] ","color":"red"},{"text":"ｹｲｵｵｫｫｫｩｩｽ…","color":"dark_red","bold": true},{"text": " - Level 2 解放","color":"red"}]
execute positioned as @s run playsound minecraft:block.end_portal.spawn player @s ~ ~ ~ 0.4 0.9