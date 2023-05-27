#> pac_man_102:reset
### リセット

#info
# as,at:free

## スコアのリセット
    scoreboard players reset @a[scores={_Game_102=1..}] _Game_102
    tag @a[tag=Playing_102] remove Playing_102

## エンティティリセット
    # 削除
        kill @e[tag=Entity_102]
        execute positioned 1000 118 1001 run kill @e[type=item,nbt={Item:{tag:{Continue:1b}}},distance=..30]
        clear @a golden_apple{Continue:1b}
        clear @a apple{PreStart:1b}
    # マーカー
    summon marker 1000 118 1001.0 {Tags:[Entity_102,Center_102]}
    # ゲート
    execute at @e[tag=Center_102,type=marker] run summon item ~ ~ ~ {Tags:[Entity_102,Gate_102],PickupDelay:40s,Age:-32768s,CustomNameVisible:1b,CustomName:"{\"text\":\"ゲームを開始する\",\"color\":\"red\",\"bold\":true}",Item:{id:"minecraft:apple",Count:1b,tag:{Gate:1b,display:{Name:"{\"text\":\"START !\"}"}}}}

## プレイヤー演出
    tp @a[scores={playing_000=102},x=982.0,y=92.0,z=985.0,dx=34,dy=24,dz=31] 995.0 118 1001.0 -90 0
    effect clear @s levitation
    bossbar remove pac_man_102:pre_start
    bossbar remove pac_man_102:continue
    title @a[scores={playing_000=102}] actionbar {"text":""}