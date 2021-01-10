tellraw @s {"text":"-----------------------"}
tellraw @s {"text":"～ユニット～","bold":true,"color":"aqua"}
tellraw @s {"text":"ユニットである動物は、ゲームのフィールドの中で飛ばして動き回らせます。"}
tellraw @s [{"text":"壁や、別のユニットとの接触","color":"yellow"},{"text":"で、スコアを入手できます。"}]
tellraw @s [{"text":"また、これを繰り返すことで"},{"text":"スコアを獲得する量が少しずつ増えていきます。","color":"gold"},{"text":"たくさんの反射が狙えるポイントを狙おう！ "},{"text":"[次へ]","bold":true,"underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger click_602 set 21"}}]
