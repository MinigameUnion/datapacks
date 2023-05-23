#> suiryu_taratara_401:game/fish/cod_fall
#
# タラを落とす
#
# @within
#   function suiryu_taratara_401:game/start/count_down/0
#   function suiryu_taratara_401:game/fish/cod_kill

# マーカー召喚
  summon marker 4000 67 100 {Tags: ["suiryu_taratara_401.summon_marker"]}
  summon marker 4000 67 100 {Tags: ["suiryu_taratara_401.summon_marker"]}
  summon marker 4000 67 100 {Tags: ["suiryu_taratara_401.summon_marker"]}
  summon marker 4000 67 100 {Tags: ["suiryu_taratara_401.summon_marker"]}
  summon marker 4000 67 100 {Tags: ["suiryu_taratara_401.summon_marker"]}
  summon marker 4000 67 100 {Tags: ["suiryu_taratara_401.summon_marker"]}
  summon marker 4000 67 100 {Tags: ["suiryu_taratara_401.summon_marker"]}
  summon marker 4000 67 100 {Tags: ["suiryu_taratara_401.summon_marker"]}
  summon marker 4000 67 100 {Tags: ["suiryu_taratara_401.summon_marker"]}
  summon marker 4000 67 100 {Tags: ["suiryu_taratara_401.summon_marker"]}

# マーカー拡散
  spreadplayers 4000 100 1 18 under 69 false @e[tag=suiryu_taratara_401.summon_marker]

# タラ召喚
  execute as @e[tag=suiryu_taratara_401.summon_marker] at @s run summon cod ~ 60 ~ {DeathLootTable:"suiryu_taratara_401:fish/cod",Tags:["suiryu_taratara_401.cod","suiryu_taratara_401.cod.not_set","suiryu_taratara_401.falling"],Health:0.1f,ActiveEffects:[{Id:28,Amplifier:99b,Duration:-1,ShowParticles:0b}]}

# マーカー消去
  kill @e[tag=suiryu_taratara_401.summon_marker]

# タラを設定する
  execute as @e[tag=suiryu_taratara_401.cod.not_set] run function suiryu_taratara_401:game/fish/cod_set

# タラ供給カウンターリセット
  scoreboard players set #CodSuplyCount suiryu_taratara_401.trigger 0
