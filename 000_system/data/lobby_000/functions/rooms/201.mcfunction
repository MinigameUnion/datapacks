#> lobby_000:rooms/201
### ホログラムの設置

## storage
# @private
#define storage lobby_000:201

## サンドバック
    kill @e[type=interaction,tag=lobby.201.sandbag_000,distance=..5,x=34.0,y=16.0,z=-15.5]
    summon minecraft:interaction 34.0 15.0 -15.5 {height:3.0f,width:2.0f,Tags:["hologram_sandbag_001","lobby.201.sandbag_000"]}

## ホログラムの設置
    kill @e[tag=hologram_001,scores={hologram_id_001=101},distance=..5,x=34.0,y=16.0,z=-15.5]
    data modify storage utility_001:hologram_util TextGroup set value [{Offset:[0f,0f],Setting:{CursorCollider:1b,TextInterpret:0b,TextSpaceWidth:0.25f},HologramID:101,Text:['ゲ','ー','ム','へ']}]
    execute positioned 34.0 16.0 -15.1 rotated 180 0 run function utility_001:hologram_util/api/create