tellraw @s {"text":"-----------------------"}
tellraw @s {"text":"ユニットにはいくつかのパラメータがあり、動物によってそれぞれ異なります。"}
tellraw @s [{"text":"[速度]\n","bold":true,"color":"aqua"},{"text":"フィールド上で進む速度のことを指します。早いほど反射の頻度が上がり、スコアを得やすくなります。"}]
tellraw @s [{"text":"速度の差はありますが、ユニットが進められる時間は特性による効果を除いて全て"},{"text":"固定","bold":true,"color":"gray"},{"text":"になっています。"}]
tellraw @s [{"text":"[スコア倍率]\n","bold":true,"color":"light_purple"},{"text":"ゲーム終了後に行われるリザルトで、実際に取得したスコアにボーナスとして倍率がかかります。"}]
tellraw @s [{"text":"[スコア加算量]\n","bold":true,"color":"gold"},{"text":"壁、または別ユニットとの反射で取得するスコアの量の増えやすさです。"},{"text":"\n[次へ]","bold":true,"underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger click_602 set 22"}}]
