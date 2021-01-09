tellraw @s {"text":"------------------------------","color":"green","italic":false}
tellraw @s {"text":"・概要","color":"gold","italic":false}
tellraw @s {"text":"  空からタラが降ってきます。","color":"white","italic":false}
tellraw @s {"text":"  タラを倒したらスコアが増えます。","color":"white","italic":false}
tellraw @s {"text":"  タラを倒したらタラが増えます。","color":"white","italic":false}
tellraw @s {"text":"  タラが窒息等で全滅してしまったらゲーム終了です。","color":"white","italic":false}
tellraw @s {"text":"","color":"white","italic":false}

tellraw @s {"text":"<武器について>","color":"green","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger tara_rule_401 set 1"}}
tellraw @s {"text":"<ボーナスアイテムについて>","color":"green","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger tara_rule_401 set 2"}}
tellraw @s {"text":"<タラ以外の魚について>","color":"green","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger tara_rule_401 set 3"}}
tellraw @s {"text":"<FEVERについて>","color":"green","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger tara_rule_401 set 4"}}

scoreboard players set @s tara_rule_401 0
scoreboard players enable @s tara_rule_401
