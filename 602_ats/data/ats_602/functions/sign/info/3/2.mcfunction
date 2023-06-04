tellraw @s {"text":"-----------------------"}
tellraw @s {"text":"[ユニットの密集状態]"}
tellraw @s [{"text":"各ユニットは付近が密集した状態だと"},{"text":"不機嫌","color":"red","bold":true},{"text":"になります。"}]
tellraw @s [{"text":"密集状態は、具体的にいうと一定の範囲以内に"},{"text":"自分を含めて3体","color":"red","bold":true},{"text":"いる状態です。"}]
tellraw @s [{"text":"不機嫌な状態では"},{"text":"ユニットの向きがランダムになってしまったり、","color":"yellow","bold":true},{"text":"スコアの獲得や、特性が無効になってしまいます。","color":"red","bold":true}]
tellraw @s [{"text":"同じ場所へ発射するのは控え、程よく分散させるのが吉です。"}]

tellraw @s [{"text":"[次へ]","bold":true,"underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger click_602 set 23"}}]