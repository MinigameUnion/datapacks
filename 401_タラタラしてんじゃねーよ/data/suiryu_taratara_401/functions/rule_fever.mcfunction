tellraw @s {"text":"------------------------------","color":"green","italic":false}
tellraw @s {"text":"・FEVER","color":"gold","italic":false}


tellraw @s {"text":"  タラを倒したらFEVERゲージが溜まっていきます。","color":"white","italic":false}
tellraw @s {"text":"  FEVERゲージが最大まで溜まったら、FEVERに突入します。","color":"white","italic":false}
tellraw @s {"text":"  FEVER中はタラ以外の魚は出現せず、タラを倒すたびにボーナスミニを獲得できます。","color":"white","italic":false}



tellraw @s {"text":"","color":"white","italic":false}



tellraw @s {"text":"<概要>","color":"green","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger tara_rule_401 set 5"}}
tellraw @s {"text":"<武器について>","color":"green","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger tara_rule_401 set 1"}}
tellraw @s {"text":"<ボーナスアイテムについて>","color":"green","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger tara_rule_401 set 2"}}
tellraw @s {"text":"<タラ以外の魚について>","color":"green","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger tara_rule_401 set 3"}}

scoreboard players set @s tara_rule_401 0
scoreboard players enable @s tara_rule_401
