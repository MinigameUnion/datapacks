tellraw @s {"text":"------------------------------","color":"green","italic":false}
tellraw @s {"text":"・タラ以外の魚","color":"gold","italic":false}

tellraw @s {"text":"  スコアが増えるにつれ、タラ以外の魚が出現します。","color":"white","italic":false}

tellraw @s {"text":"","color":"white","italic":false}

tellraw @s {"text":"  ・サケ","color":"dark_purple","italic":false}
tellraw @s {"text":"    スコアが減少します。","color":"white","italic":false}

tellraw @s {"text":"  ・熱帯魚","color":"dark_purple","italic":false}
tellraw @s {"text":"    スコアがかなり減少します。","color":"white","italic":false}

tellraw @s {"text":"  ・フグ","color":"dark_purple","italic":false}
tellraw @s {"text":"    スコアが大幅に減少します。","color":"white","italic":false}



tellraw @s {"text":"","color":"white","italic":false}

tellraw @s {"text":"<概要>","color":"green","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger tara_rule_401 set 5"}}
tellraw @s {"text":"<武器について>","color":"green","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger tara_rule_401 set 1"}}
tellraw @s {"text":"<ボーナスアイテムについて>","color":"green","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger tara_rule_401 set 2"}}
tellraw @s {"text":"<FEVERについて>","color":"green","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger tara_rule_401 set 4"}}

scoreboard players set @s tara_rule_401 0
scoreboard players enable @s tara_rule_401
