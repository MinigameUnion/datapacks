tellraw @s {"text":"-----------------------"}
tellraw @s {"text":"～アニマル塔戦闘～","bold":true,"color":"aqua"}
tellraw @s {"text":"ユニット(動物たち)を専用のエリアに召喚、発射させて\nスコアを競う玉突きゲームです。"}
tellraw @s [{"text":"門の奥の空間が舞台となります。その下にランダムに生成された地形の中で\nユニットは動き回ります。"},{"text":"壁、もしくは別のユニットと接触することで\n向きが反射、","color":"aqua"},{"text":"スコアが上昇していきます。","color":"gold"}]
tellraw @s [{"text":"足場が狭いように思えますが、透明な(バリア)ブロックがあり壁の端まで渡れます。"},{"text":"\n[次へ]","bold":true,"underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger click_602 set 2"}}]
