tellraw @s {"text":"-----------------------"}
tellraw @s {"text":"～Basicモード～","bold":true,"color":"green"}
tellraw @s {"text":"ランダムな種類のユニットが配布されます。このミニゲームにおける通常のゲームモードです。"}
tellraw @s [{"text":"レアリティ配分 //"},{"text":"C:12 ","color":"green"},{"text":"R:6 ","color":"blue"},{"text":"E:2 ","color":"light_purple"}]
tellraw @s {"text":"最大プレイ人数:20","color":"yellow"}
tellraw @s {"text":"-----------------------"}
tellraw @s [{"text":"Basicモード","color":"green"},{"text":"、後述の","color":"white"},{"text":"Chaosモード","color":"light_purple"},{"text":"に出現する","color":"white"},{"text":"エメラルドブロックのエリア","color":"green"},{"text":"にユニットが入ると","color":"white"}]
tellraw @s [{"text":"一度だけスコア加算量","color":"red"},{"text":"が大きく増加します。","color":"white"},{"text":"[次へ]","bold":true,"underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger click_602 set 12"}}]

