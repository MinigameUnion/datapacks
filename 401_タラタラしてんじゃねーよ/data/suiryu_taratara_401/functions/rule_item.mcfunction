tellraw @s {"text":"------------------------------","color":"green","italic":false}
tellraw @s {"text":"・ボーナスアイテム","color":"gold","italic":false}

tellraw @s {"text":"  プレイ中にアイテムが落ちている場合があります。","color":"white","italic":false}
tellraw @s {"text":"","color":"white","italic":false}

tellraw @s {"text":"  ・海洋の矢","color":"dark_purple","italic":false}
tellraw @s {"text":"    クロスボウの矢が補充できます。","color":"white","italic":false}

tellraw @s {"text":"  ・木刀","color":"dark_purple","italic":false}
tellraw @s {"text":"    木刀を獲得できます。","color":"white","italic":false}

tellraw @s {"text":"  ・タライデント","color":"dark_purple","italic":false}
tellraw @s {"text":"    タライデントを獲得できます。","color":"white","italic":false}

tellraw @s {"text":"  ・タラスボウ","color":"dark_purple","italic":false}
tellraw @s {"text":"    タラスボウを獲得できます。","color":"white","italic":false}

tellraw @s {"text":"  ・タラ","color":"dark_purple","italic":false}
tellraw @s {"text":"    スコアが増えます。","color":"white","italic":false}

tellraw @s {"text":"  ・ダイヤモンド","color":"dark_purple","italic":false}
tellraw @s {"text":"    全てのタラを倒します。","color":"white","italic":false}

tellraw @s {"text":"  ・ネザースター","color":"dark_purple","italic":false}
tellraw @s {"text":"    FEVERゲージが最大まで溜まります。","color":"white","italic":false}


tellraw @s {"text":"","color":"white","italic":false}

tellraw @s {"text":"<概要>","color":"green","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger tara_rule_401 set 5"}}
tellraw @s {"text":"<武器について>","color":"green","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger tara_rule_401 set 1"}}
tellraw @s {"text":"<タラ以外の魚について>","color":"green","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger tara_rule_401 set 3"}}
tellraw @s {"text":"<FEVERについて>","color":"green","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger tara_rule_401 set 4"}}

scoreboard players set @s tara_rule_401 0
scoreboard players enable @s tara_rule_401
