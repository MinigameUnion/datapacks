scoreboard players set #taratara_start_bonus_mini_count_401 tara_score1_401 0
execute if score #taratara_start_bonus_kill_count_401 tara_score1_401 matches 1 run scoreboard players add #taratara_start_bonus_mini_count_401 tara_score1_401 500
execute if score #taratara_start_bonus_score_401 tara_score1_401 matches 1 run scoreboard players add #taratara_start_bonus_mini_count_401 tara_score1_401 500
execute if score #taratara_start_bonus_air_401 tara_score1_401 matches 1 run scoreboard players add #taratara_start_bonus_mini_count_401 tara_score1_401 500
execute if score #taratara_start_bonus_fever_401 tara_score1_401 matches 1 run scoreboard players add #taratara_start_bonus_mini_count_401 tara_score1_401 500
execute if score #taratara_start_bonus_mini_401 tara_score1_401 matches 0 run scoreboard players add #taratara_start_bonus_mini_count_401 tara_score1_401 500


execute if score #taratara_start_bonus_mini_401 tara_score1_401 matches 0 if score @s coin_000 >= #taratara_start_bonus_mini_count_401 tara_score1_401 run data modify block 3991 51 2 Text4 set value '{"text":"ON","color":"yellow","italic":false}'
execute if score #taratara_start_bonus_mini_401 tara_score1_401 matches 1 run data modify block 3991 51 2 Text4 set value '{"text":"OFF","color":"dark_gray","italic":false}'

execute if score #taratara_start_bonus_mini_401 tara_score1_401 matches 0 if score @s coin_000 < #taratara_start_bonus_mini_count_401 tara_score1_401 run tellraw @s [{"nbt":"coin","storage":"system_000:string","interpret":true,"color":"red"},{"text":"が足りません","color":"red"}]
execute unless score @s coin_000 matches -2147483648..2147483647 run tellraw @s [{"nbt":"coin","storage":"system_000:string","interpret":true,"color":"red"},{"text":"が足りません","color":"red"}]

execute if score #taratara_start_bonus_mini_401 tara_score1_401 matches 1 run scoreboard players set #taratara_start_bonus_mini_count_401 tara_score1_401 0
execute if score @s coin_000 >= #taratara_start_bonus_mini_count_401 tara_score1_401 run scoreboard players add #taratara_start_bonus_mini_401 tara_score1_401 1
execute if score #taratara_start_bonus_mini_401 tara_score1_401 matches 2.. run scoreboard players set #taratara_start_bonus_mini_401 tara_score1_401 0
