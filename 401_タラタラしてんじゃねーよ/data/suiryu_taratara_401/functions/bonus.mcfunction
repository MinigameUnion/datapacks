#タラ
execute if score #taratara_fever_401 tara_score1_401 matches 0 if data entity @s Inventory[].tag{taratara_bonus_item_401:1} run scoreboard players add #taratara_gaming_score_401 tara_score1_401 3000
execute if score #taratara_fever_401 tara_score1_401 matches 1 if data entity @s Inventory[].tag{taratara_bonus_item_401:1} run scoreboard players add #taratara_gaming_score_401 tara_score1_401 30000
clear @s cod{taratara_bonus_item_401:1}

#ダイヤモンド
execute if data entity @s Inventory[].tag{taratara_bonus_item_401:2} at @e[type=cod,tag=taratara_cod_401] run summon minecraft:item ~ 50 ~ {Item:{id:"minecraft:cod",Count:1b,tag:{taratara_cod_401:1,taratara_cod_air_401:10}}}
execute if data entity @s Inventory[].tag{taratara_bonus_item_401:2} run kill @e[type=cod,tag=taratara_cod_401]
clear @s diamond{taratara_bonus_item_401:2}

#ネザースター
execute if data entity @s Inventory[].tag{taratara_bonus_item_401:3} run scoreboard players set #taratara_fever0_401 tara_score1_401 590
clear @s nether_star{taratara_bonus_item_401:3}
