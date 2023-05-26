#> suiryu_taratara_401:game/fish/others_summon
#
# タラ以外の魚を出現させる
#
# @within function suiryu_taratara_401:game/fish/cod_kill

# サケ召喚

  ## 乱数取得

    ### スコアが高いほど出現しやすくなる
      scoreboard players operation #RANGE num_000 = #Score suiryu_taratara_401.trigger

    ### 乱数取得
      function tool_000:random

  ## 現在のサケの数を取得する
    execute store result score #- suiryu_taratara_401.trigger if entity @e[type=salmon,tag=suiryu_taratara_401.salmon]

  ## 1匹目出現
    execute if score #- suiryu_taratara_401.trigger matches ..39 if score #RANDOM num_000 matches 10000.. run summon salmon ~ ~ ~ {DeathLootTable:"suiryu_taratara_401:fish/salmon",Tags:["suiryu_taratara_401.salmon","suiryu_taratara_401.cod.not_set"],Health:0.1f,Motion:[0.0d,1.0d,0.0d],Rotation:[0f,0f],ActiveEffects:[{Id:28,Amplifier:99b,Duration:-1,ShowParticles:0b}]}

  ## 2匹目出現
    execute if score #- suiryu_taratara_401.trigger matches ..38 if score #RANDOM num_000 matches 20000.. run summon salmon ~ ~ ~ {DeathLootTable:"suiryu_taratara_401:fish/salmon",Tags:["suiryu_taratara_401.salmon","suiryu_taratara_401.cod.not_set"],Health:0.1f,Motion:[0.0d,1.0d,0.0d],Rotation:[72f,0f],ActiveEffects:[{Id:28,Amplifier:99b,Duration:-1,ShowParticles:0b}]}

  ## 3匹目出現
    execute if score #- suiryu_taratara_401.trigger matches ..37 if score #RANDOM num_000 matches 30000.. run summon salmon ~ ~ ~ {DeathLootTable:"suiryu_taratara_401:fish/salmon",Tags:["suiryu_taratara_401.salmon","suiryu_taratara_401.cod.not_set"],Health:0.1f,Motion:[0.0d,1.0d,0.0d],Rotation:[144f,0f],ActiveEffects:[{Id:28,Amplifier:99b,Duration:-1,ShowParticles:0b}]}

  ## 4匹目出現
    execute if score #- suiryu_taratara_401.trigger matches ..36 if score #RANDOM num_000 matches 40000.. run summon salmon ~ ~ ~ {DeathLootTable:"suiryu_taratara_401:fish/salmon",Tags:["suiryu_taratara_401.salmon","suiryu_taratara_401.cod.not_set"],Health:0.1f,Motion:[0.0d,1.0d,0.0d],Rotation:[216f,0f],ActiveEffects:[{Id:28,Amplifier:99b,Duration:-1,ShowParticles:0b}]}

  ## 5匹目出現
    execute if score #- suiryu_taratara_401.trigger matches ..35 if score #RANDOM num_000 matches 50000.. run summon salmon ~ ~ ~ {DeathLootTable:"suiryu_taratara_401:fish/salmon",Tags:["suiryu_taratara_401.salmon","suiryu_taratara_401.cod.not_set"],Health:0.1f,Motion:[0.0d,1.0d,0.0d],Rotation:[288f,0f],ActiveEffects:[{Id:28,Amplifier:99b,Duration:-1,ShowParticles:0b}]}

# 熱帯魚召喚

  ## 乱数取得

    ### スコアが高いほど出現しやすくなる
      scoreboard players operation #RANGE num_000 = #Score suiryu_taratara_401.trigger

    ### 乱数取得
      function tool_000:random

  ## 現在の熱帯魚の数を取得する
    execute store result score #- suiryu_taratara_401.trigger if entity @e[type=tropical_fish,tag=suiryu_taratara_401.tropical_fish]

  ## 1匹目出現
    execute if score #- suiryu_taratara_401.trigger matches ..29 if score #RANDOM num_000 matches 25000.. run summon tropical_fish ~ ~ ~ {DeathLootTable:"suiryu_taratara_401:fish/tropical_fish",Tags:["suiryu_taratara_401.tropical_fish","suiryu_taratara_401.tropical_fish.not_set","suiryu_taratara_401.cod.not_set"],Health:0.1f,Motion:[0.0d,1.0d,0.0d],Rotation:[90f,0f],ActiveEffects:[{Id:28,Amplifier:99b,Duration:-1,ShowParticles:0b}],Variant:0}

  ## 2匹目出現
    execute if score #- suiryu_taratara_401.trigger matches ..28 if score #RANDOM num_000 matches 50000.. run summon tropical_fish ~ ~ ~ {DeathLootTable:"suiryu_taratara_401:fish/tropical_fish",Tags:["suiryu_taratara_401.tropical_fish","suiryu_taratara_401.tropical_fish.not_set","suiryu_taratara_401.cod.not_set"],Health:0.1f,Motion:[0.0d,1.0d,0.0d],Rotation:[162f,0f],ActiveEffects:[{Id:28,Amplifier:99b,Duration:-1,ShowParticles:0b}],Variant:0}

  ## 3匹目出現
    execute if score #- suiryu_taratara_401.trigger matches ..27 if score #RANDOM num_000 matches 75000.. run summon tropical_fish ~ ~ ~ {DeathLootTable:"suiryu_taratara_401:fish/tropical_fish",Tags:["suiryu_taratara_401.tropical_fish","suiryu_taratara_401.tropical_fish.not_set","suiryu_taratara_401.cod.not_set"],Health:0.1f,Motion:[0.0d,1.0d,0.0d],Rotation:[234f,0f],ActiveEffects:[{Id:28,Amplifier:99b,Duration:-1,ShowParticles:0b}],Variant:0}

  ## 4匹目出現
    execute if score #- suiryu_taratara_401.trigger matches ..26 if score #RANDOM num_000 matches 100000.. run summon tropical_fish ~ ~ ~ {DeathLootTable:"suiryu_taratara_401:fish/tropical_fish",Tags:["suiryu_taratara_401.tropical_fish","suiryu_taratara_401.tropical_fish.not_set","suiryu_taratara_401.cod.not_set"],Health:0.1f,Motion:[0.0d,1.0d,0.0d],Rotation:[306f,0f],ActiveEffects:[{Id:28,Amplifier:99b,Duration:-1,ShowParticles:0b}],Variant:0}

  ## 5匹目出現
    execute if score #- suiryu_taratara_401.trigger matches ..25 if score #RANDOM num_000 matches 125000.. run summon tropical_fish ~ ~ ~ {DeathLootTable:"suiryu_taratara_401:fish/tropical_fish",Tags:["suiryu_taratara_401.tropical_fish","suiryu_taratara_401.tropical_fish.not_set","suiryu_taratara_401.cod.not_set"],Health:0.1f,Motion:[0.0d,1.0d,0.0d],Rotation:[18f,0f],ActiveEffects:[{Id:28,Amplifier:99b,Duration:-1,ShowParticles:0b}],Variant:0}

  ## 熱帯魚の柄を設定する
    execute as @e[tag=suiryu_taratara_401.tropical_fish.not_set] run function suiryu_taratara_401:game/fish/tropical_fish_set_variant

# フグ召喚

  ## 乱数取得

    ### スコアが高いほど出現しやすくなる
      scoreboard players operation #RANGE num_000 = #Score suiryu_taratara_401.trigger

    ### 乱数取得
      function tool_000:random

  ## 現在のフグの数を取得する
    execute store result score #- suiryu_taratara_401.trigger if entity @e[type=pufferfish,tag=suiryu_taratara_401.pufferfish]

  ## 1匹目出現
    execute if score #- suiryu_taratara_401.trigger matches ..19 if score #RANDOM num_000 matches 62500.. run summon pufferfish ~ ~ ~ {DeathLootTable:"suiryu_taratara_401:fish/pufferfish",Tags:["suiryu_taratara_401.pufferfish","suiryu_taratara_401.cod.not_set"],Health:0.1f,Motion:[0.0d,1.0d,0.0d],Rotation:[120f,0f],ActiveEffects:[{Id:28,Amplifier:99b,Duration:-1,ShowParticles:0b}], PuffState: 2}

  ## 2匹目出現
    execute if score #- suiryu_taratara_401.trigger matches ..18 if score #RANDOM num_000 matches 125000.. run summon pufferfish ~ ~ ~ {DeathLootTable:"suiryu_taratara_401:fish/pufferfish",Tags:["suiryu_taratara_401.pufferfish","suiryu_taratara_401.cod.not_set"],Health:0.1f,Motion:[0.0d,1.0d,0.0d],Rotation:[192f,0f],ActiveEffects:[{Id:28,Amplifier:99b,Duration:-1,ShowParticles:0b}], PuffState: 2}

  ## 3匹目出現
    execute if score #- suiryu_taratara_401.trigger matches ..17 if score #RANDOM num_000 matches 187500.. run summon pufferfish ~ ~ ~ {DeathLootTable:"suiryu_taratara_401:fish/pufferfish",Tags:["suiryu_taratara_401.pufferfish","suiryu_taratara_401.cod.not_set"],Health:0.1f,Motion:[0.0d,1.0d,0.0d],Rotation:[264f,0f],ActiveEffects:[{Id:28,Amplifier:99b,Duration:-1,ShowParticles:0b}], PuffState: 2}

  ## 4匹目出現
    execute if score #- suiryu_taratara_401.trigger matches ..16 if score #RANDOM num_000 matches 250000.. run summon pufferfish ~ ~ ~ {DeathLootTable:"suiryu_taratara_401:fish/pufferfish",Tags:["suiryu_taratara_401.pufferfish","suiryu_taratara_401.cod.not_set"],Health:0.1f,Motion:[0.0d,1.0d,0.0d],Rotation:[336f,0f],ActiveEffects:[{Id:28,Amplifier:99b,Duration:-1,ShowParticles:0b}], PuffState: 2}

  ## 5匹目出現
    execute if score #- suiryu_taratara_401.trigger matches ..15 if score #RANDOM num_000 matches 312500.. run summon pufferfish ~ ~ ~ {DeathLootTable:"suiryu_taratara_401:fish/pufferfish",Tags:["suiryu_taratara_401.pufferfish","suiryu_taratara_401.cod.not_set"],Health:0.1f,Motion:[0.0d,1.0d,0.0d],Rotation:[48f,0f],ActiveEffects:[{Id:28,Amplifier:99b,Duration:-1,ShowParticles:0b}], PuffState: 2}

# イカ召喚

  ## 乱数取得

    ### スコアが高いほど出現しやすくなる
      scoreboard players operation #RANGE num_000 = #Score suiryu_taratara_401.trigger

    ### 乱数取得
      function tool_000:random

  ## 現在のイカの数を取得する
    execute store result score #- suiryu_taratara_401.trigger if entity @e[type=squid,tag=suiryu_taratara_401.squid]

  ## 1匹目出現
    execute if score #- suiryu_taratara_401.trigger matches ..4 if score #RANDOM num_000 matches 100000000.. run summon squid ~ ~ ~ {DeathLootTable:"suiryu_taratara_401:fish/squid",Tags:["suiryu_taratara_401.squid","suiryu_taratara_401.cod.not_set"],Health:0.1f,Motion:[0.0d,1.0d,0.0d],Rotation:[-120f,0f],ActiveEffects:[{Id:28,Amplifier:99b,Duration:-1,ShowParticles:0b}]}

  ## 2匹目出現
    execute if score #- suiryu_taratara_401.trigger matches ..3 if score #RANDOM num_000 matches 200000000.. run summon squid ~ ~ ~ {DeathLootTable:"suiryu_taratara_401:fish/squid",Tags:["suiryu_taratara_401.squid","suiryu_taratara_401.cod.not_set"],Health:0.1f,Motion:[0.0d,1.0d,0.0d],Rotation:[-192f,0f],ActiveEffects:[{Id:28,Amplifier:99b,Duration:-1,ShowParticles:0b}]}

  ## 3匹目出現
    execute if score #- suiryu_taratara_401.trigger matches ..2 if score #RANDOM num_000 matches 300000000.. run summon squid ~ ~ ~ {DeathLootTable:"suiryu_taratara_401:fish/squid",Tags:["suiryu_taratara_401.squid","suiryu_taratara_401.cod.not_set"],Health:0.1f,Motion:[0.0d,1.0d,0.0d],Rotation:[-264f,0f],ActiveEffects:[{Id:28,Amplifier:99b,Duration:-1,ShowParticles:0b}]}

  ## 4匹目出現
    execute if score #- suiryu_taratara_401.trigger matches ..1 if score #RANDOM num_000 matches 400000000.. run summon squid ~ ~ ~ {DeathLootTable:"suiryu_taratara_401:fish/squid",Tags:["suiryu_taratara_401.squid","suiryu_taratara_401.cod.not_set"],Health:0.1f,Motion:[0.0d,1.0d,0.0d],Rotation:[-336f,0f],ActiveEffects:[{Id:28,Amplifier:99b,Duration:-1,ShowParticles:0b}]}

  ## 5匹目出現
    execute if score #- suiryu_taratara_401.trigger matches ..0 if score #RANDOM num_000 matches 500000000.. run summon squid ~ ~ ~ {DeathLootTable:"suiryu_taratara_401:fish/squid",Tags:["suiryu_taratara_401.squid","suiryu_taratara_401.cod.not_set"],Health:0.1f,Motion:[0.0d,1.0d,0.0d],Rotation:[-48f,0f],ActiveEffects:[{Id:28,Amplifier:99b,Duration:-1,ShowParticles:0b}]}
