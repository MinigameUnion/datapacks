#> suiryu_taratara_401:game/fever/tick
#
# FEVER中
#
# @within function suiryu_taratara_401:game/tick

# FEVERゲージ色変え

  ## タイマー増加
    scoreboard players add #FeverColorTimer suiryu_taratara_401.trigger 1

  ## FEVERゲージ色変え
    execute if score #FeverColorTimer suiryu_taratara_401.trigger matches 1 run bossbar set taratara_fever_401 color green
    execute if score #FeverColorTimer suiryu_taratara_401.trigger matches 7 run bossbar set taratara_fever_401 color pink
    execute if score #FeverColorTimer suiryu_taratara_401.trigger matches 13 run bossbar set taratara_fever_401 color purple
    execute if score #FeverColorTimer suiryu_taratara_401.trigger matches 19 run bossbar set taratara_fever_401 color red
    execute if score #FeverColorTimer suiryu_taratara_401.trigger matches 25 run bossbar set taratara_fever_401 color yellow

  ## FEVERゲージ名色変え
    execute if score #FeverColorTimer suiryu_taratara_401.trigger matches 1 run bossbar set taratara_fever_401 name [{"text":"F","color":"dark_green","bold":true},{"text":"E","color":"dark_aqua","bold":true},{"text":"V","color":"dark_red","bold":true},{"text":"E","color":"dark_purple","bold":true},{"text":"R","color":"gold","bold":true}]
    execute if score #FeverColorTimer suiryu_taratara_401.trigger matches 4 run bossbar set taratara_fever_401 name [{"text":"F","color":"yellow","bold":true},{"text":"E","color":"dark_green","bold":true},{"text":"V","color":"dark_aqua","bold":true},{"text":"E","color":"dark_red","bold":true},{"text":"R","color":"dark_purple","bold":true}]
    execute if score #FeverColorTimer suiryu_taratara_401.trigger matches 7 run bossbar set taratara_fever_401 name [{"text":"F","color":"light_purple","bold":true},{"text":"E","color":"yellow","bold":true},{"text":"V","color":"dark_green","bold":true},{"text":"E","color":"dark_aqua","bold":true},{"text":"R","color":"dark_red","bold":true}]
    execute if score #FeverColorTimer suiryu_taratara_401.trigger matches 10 run bossbar set taratara_fever_401 name [{"text":"F","color":"red","bold":true},{"text":"E","color":"light_purple","bold":true},{"text":"V","color":"yellow","bold":true},{"text":"E","color":"dark_green","bold":true},{"text":"R","color":"dark_aqua","bold":true}]
    execute if score #FeverColorTimer suiryu_taratara_401.trigger matches 13 run bossbar set taratara_fever_401 name [{"text":"F","color":"aqua","bold":true},{"text":"E","color":"red","bold":true},{"text":"V","color":"light_purple","bold":true},{"text":"E","color":"yellow","bold":true},{"text":"R","color":"dark_green","bold":true}]
    execute if score #FeverColorTimer suiryu_taratara_401.trigger matches 16 run bossbar set taratara_fever_401 name [{"text":"F","color":"green","bold":true},{"text":"E","color":"aqua","bold":true},{"text":"V","color":"red","bold":true},{"text":"E","color":"light_purple","bold":true},{"text":"R","color":"yellow","bold":true}]
    execute if score #FeverColorTimer suiryu_taratara_401.trigger matches 19 run bossbar set taratara_fever_401 name [{"text":"F","color":"gold","bold":true},{"text":"E","color":"green","bold":true},{"text":"V","color":"aqua","bold":true},{"text":"E","color":"red","bold":true},{"text":"R","color":"light_purple","bold":true}]
    execute if score #FeverColorTimer suiryu_taratara_401.trigger matches 22 run bossbar set taratara_fever_401 name [{"text":"F","color":"dark_purple","bold":true},{"text":"E","color":"gold","bold":true},{"text":"V","color":"green","bold":true},{"text":"E","color":"aqua","bold":true},{"text":"R","color":"red","bold":true}]
    execute if score #FeverColorTimer suiryu_taratara_401.trigger matches 25 run bossbar set taratara_fever_401 name [{"text":"F","color":"dark_red","bold":true},{"text":"E","color":"dark_purple","bold":true},{"text":"V","color":"gold","bold":true},{"text":"E","color":"green","bold":true},{"text":"R","color":"aqua","bold":true}]
    execute if score #FeverColorTimer suiryu_taratara_401.trigger matches 28 run bossbar set taratara_fever_401 name [{"text":"F","color":"dark_aqua","bold":true},{"text":"E","color":"dark_red","bold":true},{"text":"V","color":"dark_purple","bold":true},{"text":"E","color":"gold","bold":true},{"text":"R","color":"green","bold":true}]

  ## タイマーリセット
    execute if score #FeverColorTimer suiryu_taratara_401.trigger matches 30.. run scoreboard players set #FeverColorTimer suiryu_taratara_401.trigger 0

# FEVERゲージ減少
  execute store result bossbar taratara_fever_401 value run scoreboard players remove #FeverGauge suiryu_taratara_401.trigger 1

# FEVER終了
  execute if score #FeverGauge suiryu_taratara_401.trigger matches ..0 run function suiryu_taratara_401:game/fever/finish
