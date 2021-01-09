tellraw @s {"text":"------------------------------","color":"green","italic":false}
tellraw @s {"text":"・武器","color":"gold","italic":false}

tellraw @s {"text":"  トライデントとクロスボウを使用することができます。","color":"white","italic":false}
tellraw @s {"text":"  最初はタライデントとタラスボウしか使えませんが、","color":"white","italic":false}
tellraw @s {"text":"  プレミアガチャで武器を追加することができます。","color":"white","italic":false}
tellraw @s {"text":"","color":"white","italic":false}

tellraw @s {"text":"  武器が記載された看板を右クリックしたら武器が切り替わります。","color":"white","italic":false}


tellraw @s {"text":"  武器にはレアリティがあり、レア度が高くなるほど性能が高くなります。","color":"white","italic":false}

tellraw @s {"text":"","color":"white","italic":false}

tellraw @s {"text":"  プレミアガチャで獲得した武器は使用回数が決まっており、","color":"white","italic":false}
tellraw @s {"text":"  使用回数は最大で100回分まで保持することができます。","color":"white","italic":false}




tellraw @s {"text":"","color":"white","italic":false}
tellraw @s {"text":"<概要>","color":"green","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger tara_rule_401 set 5"}}
tellraw @s {"text":"<ボーナスアイテムについて>","color":"green","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger tara_rule_401 set 2"}}
tellraw @s {"text":"<タラ以外の魚について>","color":"green","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger tara_rule_401 set 3"}}
tellraw @s {"text":"<FEVERについて>","color":"green","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger tara_rule_401 set 4"}}

scoreboard players set @s tara_rule_401 0
scoreboard players enable @s tara_rule_401
