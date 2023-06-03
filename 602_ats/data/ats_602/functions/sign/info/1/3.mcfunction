tellraw @s {"text":"-----------------------"}
tellraw @s {"text":"～基本的な遊び方～","bold":true,"color":"aqua"}
tellraw @s [{"text":"ゲームに参加したプレイヤーが複数の場合はランダムな順にターンが回ってきます。ターンが回ってきたプレイヤーにはユニットを発射するための"},{"text":"アイテム","color":"green"},{"text":"が配られ、動物が発射できるようになります。"}]
tellraw @s [{"text":"色付きではない","bold":true,"color":"red"},{"text":"ガラスブロック","bold":true,"color":"aqua"},{"text":"の上で","color":"white"},{"text":"アイテムを手に持った状態で","bold":true,"color":"white"},{"keybind":"key.sneak","bold":true,"color":"yellow"},{"text":"長押し","bold":true,"color":"yellow"},{"text":"して発射します。","color":"white"},{"text":"[次へ]","bold":true,"underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger click_602 set 4"}}]

#tellraw @s [{"text":"対戦モードを有効にしている場合は、チーム交互にターンが回ります。"},{"text":"[次へ]","bold":true,"underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger click_602 set 4"}}]
