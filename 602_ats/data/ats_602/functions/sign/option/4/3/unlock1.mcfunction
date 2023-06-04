data modify storage ats_602:main ChaosOptions.L3 set value 1b
tellraw @s [{"text":"[","color":"red"},{"text":"ﾈ","color":"red","obfuscated":true},{"text":"兄] ","color":"dark_gray"},{"text":"ｹｲｵｩｽ(ﾈｲﾃｨﾌﾞ発音)   ","color":"dark_red","bold": true},{"text": " - Level 3 解放","color":"dark_gray"}]
execute positioned as @s run playsound minecraft:block.end_portal.spawn player @s ~ ~ ~ 0.4 0.8