tellraw @s {"text":"-----------------------"}
tellraw @s {"text":"～Programモード～","bold":true,"color":"aqua"}
tellraw @s {"text":"決まった種類のユニットが、決まったタイミングで配布されます。地形以外は必ず同じ環境になるゲームモードです。"}
tellraw @s {"text":"発射後、3秒間ほどの時間を空けてターンが回ります。連続して発射はできません。"}
tellraw @s [{"text":"最大プレイ人数:12","color":"yellow"},{"text":"[次へ]","bold":true,"underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger click_602 set 11"}}]
