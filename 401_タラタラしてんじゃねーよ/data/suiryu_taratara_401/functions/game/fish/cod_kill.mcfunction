#> suiryu_taratara_401:game/fish/cod_kill
#
# タラを殺した場合
#
# @within
#   function suiryu_taratara_401:game/tick
#   function suiryu_taratara_401:game/player_tick

# Airボーナス
# 残りAirをスコアに加算する

  ## 通常時
    execute if score #inFever suiryu_taratara_401.trigger matches 0 store result score #- suiryu_taratara_401.trigger run data get entity @s Item.tag.AirBonus_401[]

  ## FEVER中はAirボーナス10倍
    execute if score #inFever suiryu_taratara_401.trigger matches 0 store result score #- suiryu_taratara_401.trigger run data get entity @s Item.tag.AirBonus_401[] 10

  ## スコアに加算する
    execute if score #- suiryu_taratara_401.trigger matches 1.. run scoreboard players operation #Score suiryu_taratara_401.trigger += #- suiryu_taratara_401.trigger

# サウンド
  playsound minecraft:entity.puffer_fish.blow_up master @a ~ ~ ~ 2 2

# キル数ボーナス
# これまでのキル数をスコアに加算する

  ## スコアに加算する
    scoreboard players operation #Score suiryu_taratara_401.trigger += #KillCount suiryu_taratara_401.trigger

  ## FEVER中キル数ボーナス
    execute if score #inFever suiryu_taratara_401.trigger matches 1 run scoreboard players operation #Score suiryu_taratara_401.trigger += #inFeverKillCountBonus suiryu_taratara_401.trigger

  ## キル数ボーナス増加
    scoreboard players operation #KillCount suiryu_taratara_401.trigger += #KillCountBonus suiryu_taratara_401.trigger

  ## キル数加算
    scoreboard players add #KillCount suiryu_taratara_401.trigger 1

# タラ出現

  ## 現在のタラの数を取得する
    execute store result score #- suiryu_taratara_401.trigger if entity @e[type=cod,tag=suiryu_taratara_401.cod]

  ## 乱数取得
    scoreboard players set #RANGE num_000 6
    function tool_000:random

  ## 1匹目出現
    execute if score #- suiryu_taratara_401.trigger matches ..49 run summon cod ~ ~ ~ {DeathLootTable:"suiryu_taratara_401:fish/cod",Tags:["suiryu_taratara_401.cod","suiryu_taratara_401.cod.not_set","suiryu_taratara_401.falling"],Health:0.1f,Motion:[0.0d,1.0d,0.0d],Rotation:[0f,0f],ActiveEffects:[{Id:28,Amplifier:99b,Duration:-1,ShowParticles:0b}]}

  ## 2匹目出現
    execute if score #- suiryu_taratara_401.trigger matches ..48 run summon cod ~ ~ ~ {DeathLootTable:"suiryu_taratara_401:fish/cod",Tags:["suiryu_taratara_401.cod","suiryu_taratara_401.cod.not_set","suiryu_taratara_401.falling"],Health:0.1f,Motion:[0.0d,1.0d,0.0d],Rotation:[0f,0f],ActiveEffects:[{Id:28,Amplifier:99b,Duration:-1,ShowParticles:0b}]}

  ## 3匹目出現
    execute if score #- suiryu_taratara_401.trigger matches ..47 run summon cod ~ ~ ~ {DeathLootTable:"suiryu_taratara_401:fish/cod",Tags:["suiryu_taratara_401.cod","suiryu_taratara_401.cod.not_set","suiryu_taratara_401.falling"],Health:0.1f,Motion:[0.0d,1.0d,0.0d],Rotation:[0f,0f],ActiveEffects:[{Id:28,Amplifier:99b,Duration:-1,ShowParticles:0b}]}

  ## 4匹目出現
    execute if score #RANDOM num_000 matches 1.. if score #- suiryu_taratara_401.trigger matches ..46 run summon cod ~ ~ ~ {DeathLootTable:"suiryu_taratara_401:fish/cod",Tags:["suiryu_taratara_401.cod","suiryu_taratara_401.cod.not_set","suiryu_taratara_401.falling"],Health:0.1f,Motion:[0.0d,1.0d,0.0d],Rotation:[60f,0f],ActiveEffects:[{Id:28,Amplifier:99b,Duration:-1,ShowParticles:0b}]}

  ## 5匹目出現
    execute if score #RANDOM num_000 matches 2.. if score #- suiryu_taratara_401.trigger matches ..45 run summon cod ~ ~ ~ {DeathLootTable:"suiryu_taratara_401:fish/cod",Tags:["suiryu_taratara_401.cod","suiryu_taratara_401.cod.not_set","suiryu_taratara_401.falling"],Health:0.1f,Motion:[0.0d,1.0d,0.0d],Rotation:[120f,0f],ActiveEffects:[{Id:28,Amplifier:99b,Duration:-1,ShowParticles:0b}]}

  ## 6匹目出現
    execute if score #RANDOM num_000 matches 3.. if score #- suiryu_taratara_401.trigger matches ..44 run summon cod ~ ~ ~ {DeathLootTable:"suiryu_taratara_401:fish/cod",Tags:["suiryu_taratara_401.cod","suiryu_taratara_401.cod.not_set","suiryu_taratara_401.falling"],Health:0.1f,Motion:[0.0d,1.0d,0.0d],Rotation:[180f,0f],ActiveEffects:[{Id:28,Amplifier:99b,Duration:-1,ShowParticles:0b}]}

  ## 7匹目出現
    execute if score #RANDOM num_000 matches 4.. if score #- suiryu_taratara_401.trigger matches ..43 run summon cod ~ ~ ~ {DeathLootTable:"suiryu_taratara_401:fish/cod",Tags:["suiryu_taratara_401.cod","suiryu_taratara_401.cod.not_set","suiryu_taratara_401.falling"],Health:0.1f,Motion:[0.0d,1.0d,0.0d],Rotation:[240f,0f],ActiveEffects:[{Id:28,Amplifier:99b,Duration:-1,ShowParticles:0b}]}

  ## 8匹目出現
    execute if score #RANDOM num_000 matches 5.. if score #- suiryu_taratara_401.trigger matches ..42 run summon cod ~ ~ ~ {DeathLootTable:"suiryu_taratara_401:fish/cod",Tags:["suiryu_taratara_401.cod","suiryu_taratara_401.cod.not_set","suiryu_taratara_401.falling"],Health:0.1f,Motion:[0.0d,1.0d,0.0d],Rotation:[300f,0f],ActiveEffects:[{Id:28,Amplifier:99b,Duration:-1,ShowParticles:0b}]}

# タラ供給

  ## タラ供給カウンター増加
    scoreboard players add #CodSuplyCount suiryu_taratara_401.trigger 1

  ## FEVER中ではなく、スコアが10000以下の場合、3匹倒す毎に10匹降らせる
    execute if score #Score suiryu_taratara_401.trigger matches ..10000 if score #CodSuplyCount suiryu_taratara_401.trigger matches 3.. if score #inFever suiryu_taratara_401.trigger matches 0 if score #- suiryu_taratara_401.trigger matches ..90 run function suiryu_taratara_401:game/fish/cod_fall

  ## FEVER中ではなく、スコアが10000~21000の場合、4匹倒す毎に10匹降らせる
    execute if score #Score suiryu_taratara_401.trigger matches 10001..21000 if score #CodSuplyCount suiryu_taratara_401.trigger matches 4.. if score #inFever suiryu_taratara_401.trigger matches 0 if score #- suiryu_taratara_401.trigger matches ..90 run function suiryu_taratara_401:game/fish/cod_fall

  ## FEVER中ではなく、スコアが21001~33000の場合、5匹倒す毎に10匹降らせる
    execute if score #Score suiryu_taratara_401.trigger matches 21001..33000 if score #CodSuplyCount suiryu_taratara_401.trigger matches 5.. if score #inFever suiryu_taratara_401.trigger matches 0 if score #- suiryu_taratara_401.trigger matches ..90 run function suiryu_taratara_401:game/fish/cod_fall

  ## FEVER中ではなく、スコアが33001~46000の場合、6匹倒す毎に10匹降らせる
    execute if score #Score suiryu_taratara_401.trigger matches 33001..46000 if score #CodSuplyCount suiryu_taratara_401.trigger matches 6.. if score #inFever suiryu_taratara_401.trigger matches 0 if score #- suiryu_taratara_401.trigger matches ..90 run function suiryu_taratara_401:game/fish/cod_fall

  ## FEVER中ではなく、スコアが46001~60000の場合、7匹倒す毎に10匹降らせる
    execute if score #Score suiryu_taratara_401.trigger matches 46001..60000 if score #CodSuplyCount suiryu_taratara_401.trigger matches 7.. if score #inFever suiryu_taratara_401.trigger matches 0 if score #- suiryu_taratara_401.trigger matches ..90 run function suiryu_taratara_401:game/fish/cod_fall

  ## FEVER中ではなく、スコアが60001~75000の場合、8匹倒す毎に10匹降らせる
    execute if score #Score suiryu_taratara_401.trigger matches 60001..75000 if score #CodSuplyCount suiryu_taratara_401.trigger matches 8.. if score #inFever suiryu_taratara_401.trigger matches 0 if score #- suiryu_taratara_401.trigger matches ..90 run function suiryu_taratara_401:game/fish/cod_fall

  ## FEVER中ではなく、スコアが75001~91000の場合、9匹倒す毎に10匹降らせる
    execute if score #Score suiryu_taratara_401.trigger matches 75001..91000 if score #CodSuplyCount suiryu_taratara_401.trigger matches 9.. if score #inFever suiryu_taratara_401.trigger matches 0 if score #- suiryu_taratara_401.trigger matches ..90 run function suiryu_taratara_401:game/fish/cod_fall

  ## FEVER中ではなく、スコアが91001以上の場合、10匹倒す毎に10匹降らせる
    execute if score #Score suiryu_taratara_401.trigger matches 91001.. if score #CodSuplyCount suiryu_taratara_401.trigger matches 10.. if score #inFever suiryu_taratara_401.trigger matches 0 if score #- suiryu_taratara_401.trigger matches ..90 run function suiryu_taratara_401:game/fish/cod_fall

  ## FEVER中の場合、10匹降らせる
    execute if score #inFever suiryu_taratara_401.trigger matches 1 if score #- suiryu_taratara_401.trigger matches ..90 run function suiryu_taratara_401:game/fish/cod_fall

# FEVER中でなければ、タラ以外の魚を出現させる
  execute if score #inFever suiryu_taratara_401.trigger matches 0 run function suiryu_taratara_401:game/fish/others_summon

# Motion・Airを変更する
  execute as @e[tag=suiryu_taratara_401.cod.not_set] run function suiryu_taratara_401:game/fish/set_motion_and_air

# FEVER中

  ## ボーナスミニ獲得
    execute if score #inFever suiryu_taratara_401.trigger matches 1 as @a[predicate=suiryu_taratara_401:location/stage] if score @s id_000 = #PlayingID suiryu_taratara_401.trigger run scoreboard players operation @s add_coin_000 = #miniBonus suiryu_taratara_401.trigger

  ## 獲得ミニ2倍
    execute if score #inFever suiryu_taratara_401.trigger matches 1 as @a[predicate=suiryu_taratara_401:location/stage] if score @s id_000 = #PlayingID suiryu_taratara_401.trigger run scoreboard players operation @s add_coin_000 *= #miniRate suiryu_taratara_401.trigger

  ## FEVER中キル時ゲージ回復
    execute if score #inFever suiryu_taratara_401.trigger matches 1 store result bossbar taratara_fever_401 value run scoreboard players operation #FeverGauge suiryu_taratara_401.trigger += #FeverGaugeKillUp suiryu_taratara_401.trigger

# FEVERゲージ増加

  ## FEVER中でなければ、FEVERゲージ増加
    execute if score #inFever suiryu_taratara_401.trigger matches 0 store result bossbar taratara_fever_401 value run scoreboard players operation #FeverGauge suiryu_taratara_401.trigger += #FeverGaugeUpAmount suiryu_taratara_401.trigger

  ## FEVER中でなければ、FEVER開始
    execute if score #inFever suiryu_taratara_401.trigger matches 0 if score #FeverGauge suiryu_taratara_401.trigger matches 600.. run function suiryu_taratara_401:game/fever/start

# 消去
  kill @s
