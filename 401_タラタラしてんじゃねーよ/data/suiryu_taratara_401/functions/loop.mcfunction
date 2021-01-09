execute as @a[scores={tara_score1_401=0,tara_score2_401=1..}] run scoreboard players set @s tara_score2_401 0
execute as @a[scores={tara_score1_401=1,tara_score2_401=1..}] run function suiryu_taratara_401:gameover
execute if score #playing_taratara_401 tara_score1_401 matches 1 run function suiryu_taratara_401:test_gacha
execute if score #playing_taratara_401 tara_score1_401 matches 2 run function suiryu_taratara_401:main
effect give @a[scores={playing_000=401}] minecraft:saturation 1 99 true
effect give @a[scores={playing_000=401}] minecraft:resistance 1 4 true
execute unless score #playing_taratara_401 tara_score1_401 matches 2 as @a[scores={tara_score1_401=1}] run scoreboard players set @s tara_score1_401 0
execute as @e[type=item,x=3999,y=51,z=11,dx=1,dy=1,dz=1] if data entity @s Item.tag.taratara_gacha_401 run function suiryu_taratara_401:gacha01
execute unless score #playing_taratara_401 tara_score1_401 matches 2 as @e[type=item,x=3999,y=51,z=11,dx=1,dy=1,dz=1] run tp 3999.5 51.1 11.5

execute as @a if score @s tara_rule_401 matches 1 run function suiryu_taratara_401:rule_weapon
execute as @a if score @s tara_rule_401 matches 2 run function suiryu_taratara_401:rule_item
execute as @a if score @s tara_rule_401 matches 3 run function suiryu_taratara_401:rule_salmon
execute as @a if score @s tara_rule_401 matches 4 run function suiryu_taratara_401:rule_fever
execute as @a if score @s tara_rule_401 matches 5 run function suiryu_taratara_401:rule
