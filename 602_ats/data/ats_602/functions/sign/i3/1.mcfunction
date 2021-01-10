tellraw @s {"text":"-----------------------"}
tellraw @s {"text":"ユニットにはいくつかのパラメータがあり、動物によってそれぞれ異なります。"}
tellraw @s [{"text":"速度","bold":true,"color":"aqua"},{"text":" // ","bold": false},{"text":"フィールド上で進む速度のことを指します。早いほど反射の可能性が高くなり、スコアを得やすくなります。"}]
tellraw @s [{"text":"スコア倍率","bold":true,"color":"light_purple"},{"text":" // ","bold": false},{"text":"ゲーム終了後に行われるリザルトで、実際に取得したスコアにボーナスとして倍率がかかります。"}]
tellraw @s [{"text":"スコア加算量","bold":true,"color":"gold"},{"text":" // ","bold": false},{"text":"壁、または別ユニットとの反射で取得するスコアの量の増えやすさです。"},{"text":"[次へ]","bold":true,"underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger click_602 set 22"}}]
