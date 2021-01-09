



execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 0 if score @s tara_pticket_401 matches 1.. run data modify block 3991 51 0 Text4 set value '{"text":"ON","color":"yellow","italic":false}'
execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 1 run data modify block 3991 51 0 Text4 set value '{"text":"OFF","color":"dark_gray","italic":false}'

execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 0 run tellraw @s {"text":"--------------------------------------","color":"green"}

execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 0 unless score @s tara_pticket_401 matches 0.. run scoreboard players set @s tara_pticket_401 0
execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 0 unless score @s tara_pticket_401 matches 1.. run tellraw @s {"text":"プレミアチケットがありません","color":"dark_red"}
execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 0 run tellraw @s {"text":"プレミアチケットを使用すると、左の5つの効果が全てミニ無しで有効化されます","color":"white"}
execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 0 run tellraw @s ["",{"text":"プレミアチケット所持数・・・","color":"white"},{"score":{"name":"@s","objective":"tara_pticket_401"}},{"text":"枚"}]

execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 0 if score @s tara_pticket_401 matches 1.. run scoreboard players set #taratara_start_bonus_kill_count_401 tara_score1_401 1
execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 0 if score @s tara_pticket_401 matches 1.. run scoreboard players set #taratara_start_bonus_score_401 tara_score1_401 1
execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 0 if score @s tara_pticket_401 matches 1.. run scoreboard players set #taratara_start_bonus_air_401 tara_score1_401 1
execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 0 if score @s tara_pticket_401 matches 1.. run scoreboard players set #taratara_start_bonus_fever_401 tara_score1_401 1
execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 0 if score @s tara_pticket_401 matches 1.. run scoreboard players set #taratara_start_bonus_mini_401 tara_score1_401 1
execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 0 if score @s tara_pticket_401 matches 1.. run data modify block 3991 51 6 Text4 set value '{"text":"ON","color":"yellow","italic":false}'
execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 0 if score @s tara_pticket_401 matches 1.. run data modify block 3991 51 5 Text4 set value '{"text":"ON","color":"yellow","italic":false}'
execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 0 if score @s tara_pticket_401 matches 1.. run data modify block 3991 51 4 Text4 set value '{"text":"ON","color":"yellow","italic":false}'
execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 0 if score @s tara_pticket_401 matches 1.. run data modify block 3991 51 3 Text4 set value '{"text":"ON","color":"yellow","italic":false}'
execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 0 if score @s tara_pticket_401 matches 1.. run data modify block 3991 51 2 Text4 set value '{"text":"ON","color":"yellow","italic":false}'
execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 0 if score @s tara_pticket_401 matches 1.. run data modify block 3991 51 6 Text2 set value '{"text":"0ミニ","color":"yellow","italic":false}'
execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 0 if score @s tara_pticket_401 matches 1.. run data modify block 3991 51 5 Text2 set value '{"text":"0ミニ","color":"yellow","italic":false}'
execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 0 if score @s tara_pticket_401 matches 1.. run data modify block 3991 51 4 Text2 set value '{"text":"0ミニ","color":"yellow","italic":false}'
execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 0 if score @s tara_pticket_401 matches 1.. run data modify block 3991 51 3 Text2 set value '{"text":"0ミニ","color":"yellow","italic":false}'
execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 0 if score @s tara_pticket_401 matches 1.. run data modify block 3991 51 2 Text2 set value '{"text":"0ミニ","color":"yellow","italic":false}'

execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 1 run scoreboard players set #taratara_start_bonus_kill_count_401 tara_score1_401 0
execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 1 run scoreboard players set #taratara_start_bonus_score_401 tara_score1_401 0
execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 1 run scoreboard players set #taratara_start_bonus_air_401 tara_score1_401 0
execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 1 run scoreboard players set #taratara_start_bonus_fever_401 tara_score1_401 0
execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 1 run scoreboard players set #taratara_start_bonus_mini_401 tara_score1_401 0
execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 1 run data modify block 3991 51 6 Text4 set value '{"text":"OFF","color":"dark_gray","italic":false}'
execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 1 run data modify block 3991 51 5 Text4 set value '{"text":"OFF","color":"dark_gray","italic":false}'
execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 1 run data modify block 3991 51 4 Text4 set value '{"text":"OFF","color":"dark_gray","italic":false}'
execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 1 run data modify block 3991 51 3 Text4 set value '{"text":"OFF","color":"dark_gray","italic":false}'
execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 1 run data modify block 3991 51 2 Text4 set value '{"text":"OFF","color":"dark_gray","italic":false}'
execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 1 run data modify block 3991 51 6 Text2 set value '{"text":"500ミニ","color":"yellow","italic":false}'
execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 1 run data modify block 3991 51 5 Text2 set value '{"text":"500ミニ","color":"yellow","italic":false}'
execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 1 run data modify block 3991 51 4 Text2 set value '{"text":"500ミニ","color":"yellow","italic":false}'
execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 1 run data modify block 3991 51 3 Text2 set value '{"text":"500ミニ","color":"yellow","italic":false}'
execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 1 run data modify block 3991 51 2 Text2 set value '{"text":"500ミニ","color":"yellow","italic":false}'

scoreboard players add #taratara_start_bonus_pticket_401 tara_score1_401 1
execute unless score @s tara_pticket_401 matches 1.. run scoreboard players set #taratara_start_bonus_pticket_401 tara_score1_401 0
execute if score #taratara_start_bonus_pticket_401 tara_score1_401 matches 2.. run scoreboard players set #taratara_start_bonus_pticket_401 tara_score1_401 0
