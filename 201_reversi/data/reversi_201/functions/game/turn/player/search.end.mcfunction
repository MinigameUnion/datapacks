#> reversi_201:game/turn/player/search.end
#
# Generated by MCF-Utility
#
# @within function reversi_201:game/turn/player/search.recursive.run

# 置けるマスがある時の処理
    #フラグ消し
        execute if entity @e[type=slime,tag=CursorEntity_201,distance=..200,x=2069.0,y=40.0,z=21.0] run scoreboard players set #SkipFlag ReversiData_201 0
    #メッセージとサウンド
        execute if entity @e[type=slime,tag=CursorEntity_201,distance=..200,x=2069.0,y=40.0,z=21.0] if score #TurnColor ReversiData_201 matches 0 run title @a[tag=Player_Black_201,scores={playing_000=201}] actionbar {"text":"あなたのターンです","color":"green","bold":true}
        execute if entity @e[type=slime,tag=CursorEntity_201,distance=..200,x=2069.0,y=40.0,z=21.0] if score #TurnColor ReversiData_201 matches 1 run title @a[tag=Player_White_201,scores={playing_000=201}] actionbar {"text":"あなたのターンです","color":"green","bold":true}
        execute if entity @e[type=slime,tag=CursorEntity_201,distance=..200,x=2069.0,y=40.0,z=21.0] if score #TurnColor ReversiData_201 matches 0 run playsound entity.experience_orb.pickup player @a[tag=Player_Black_201,scores={playing_000=201}] 2969.0 40.5 21.0 1 1.2 1
        execute if entity @e[type=slime,tag=CursorEntity_201,distance=..200,x=2069.0,y=40.0,z=21.0] if score #TurnColor ReversiData_201 matches 1 run playsound entity.experience_orb.pickup player @a[tag=Player_White_201,scores={playing_000=201}] 2969.0 40.5 21.0 1 1.2 1
    #ターンのプレイヤー以外カーソル殴れなくする
        execute if entity @e[type=slime,tag=CursorEntity_201,distance=..200,x=2069.0,y=40.0,z=21.0] if score #TurnColor ReversiData_201 matches 0 run effect give @a[tag=!Player_Black_201,scores={playing_000=201}] weakness 999999 99 true
        execute if entity @e[type=slime,tag=CursorEntity_201,distance=..200,x=2069.0,y=40.0,z=21.0] if score #TurnColor ReversiData_201 matches 1 run effect give @a[tag=!Player_White_201,scores={playing_000=201}] weakness 999999 99 true
    #長考 == TRUE の場合 長考時間の設定とカウントダウン
        execute if entity @e[type=slime,tag=CursorEntity_201,distance=..200,x=2069.0,y=40.0,z=21.0] if score #Think ReversiData_201 matches 1 run function reversi_201:game/turn/player/long_think/decrement
    #カーソル見えるように
        execute if entity @e[type=slime,tag=CursorEntity_201,distance=..200,x=2069.0,y=40.0,z=21.0] run schedule function reversi_201:game/turn/player/cursor.move 1t
# 置けるマスがない時の処理
    execute unless entity @e[type=slime,tag=CursorEntity_201,distance=..200,x=2069.0,y=40.0,z=21.0] run function reversi_201:game/turn/common/cant_place
# 後処理
    scoreboard players set #TickThroughputC ReversiData_201 -1