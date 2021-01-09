execute unless score #taratara_select_crossbow_401 tara_score1_401 matches 5 run scoreboard players remove #taratara_gaming_score_401 tara_score1_401 300000
execute if score #taratara_select_crossbow_401 tara_score1_401 matches 5 run scoreboard players remove #taratara_gaming_score_401 tara_score1_401 150000

execute if score #taratara_gaming_score_401 tara_score1_401 matches ..-1 run scoreboard players set #taratara_gaming_score_401 tara_score1_401 0

playsound minecraft:entity.evoker.prepare_wololo master @a ~ ~ ~ 2 2
particle minecraft:angry_villager ~ ~ ~ 0 0 0 1 1

kill @s
