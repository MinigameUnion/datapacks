#> system_000:load
# @within
#   tag/function minecraft:load

#>
# @public
    #declare objective num_000 定数です。使用可能な値はsystem_000:define.num_000内を参照してください。
    #declare objective id_000 プレイヤーに、初期ログイン時に固有のスコアが付与されます。
    #declare objective playing_000 プレイ中のゲームIDを記録してください。
    #declare objective coin_000 ゲーム内通貨(ミニ)を保存するスコアです。直接加算せず add_coin_000 を利用してください。
    #declare objective add_coin_000 次の#tickでcoin_000にこのスコアの値が加算されます。 player_000:add_coin を実行すると即座にメッセージが流れcoin_000に適用されます。
    #declare objective remove_coin_000 次の#tickでcoin_000にこのスコアの値が減算されます。 player_000:remove_coin を実行すると即座にメッセージが流れcoin_000に適用されます。
    #alias entity ItemStorage @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000]

#ゲームルール
function system_000:gamerule

#スコア
scoreboard objectives add num_000 dummy {"text":"(000)定数#N"}
scoreboard objectives add min_000 dummy {"text":"(000)最小値"}
scoreboard objectives add max_000 dummy {"text":"(000)最大値"}
scoreboard objectives add temp_000 dummy {"text":"(000)仮代入先"}
scoreboard objectives add id_000 dummy {"text":"(000)プレイヤーID"}
scoreboard objectives add playing_000 dummy {"text":"(000)プレイ中ゲームID"}
scoreboard objectives add playdata_000 dummy {"text":"(000)プレイデータID"}
scoreboard objectives add login_000 minecraft.custom:leave_game {"text":"(000)ログイン検知"}
scoreboard objectives add coin_000 dummy {"text":"ミニ"}
scoreboard objectives add add_coin_000 dummy {"text":"(000)ミニ加算用"}
scoreboard objectives add remove_coin_000 dummy {"text":"(000)ミニ減算用"}

#数値設定
function system_000:define.num_000

scoreboard players set #coin min_000 0
scoreboard players set #coin max_000 999999999
scoreboard objectives setdisplay list coin_000

execute unless score #SYSTEM id_000 matches -2147483648..2147483647 run scoreboard players set #SYSTEM id_000 0
execute unless score #playdata id_000 matches -2147483648..2147483647 run function system_000:data/create_id

#shulker箱設置
execute store success score #TEMP num_000 unless block 0 0 0 minecraft:torch
execute if score #TEMP num_000 matches 0 run forceload add 0 0
setblock 0 0 0 shulker_box[facing=down]
setblock 0 1 0 air
execute unless entity 0-0-0-0-0 run summon minecraft:marker 0.0 0.0 0.0 {UUID:[I;0,0,0,0],Tags:["admin_000"]}
execute unless entity 0-0-0-0-1 run summon minecraft:marker 0.0 0.0 0.0 {UUID:[I;0,0,0,1]}
execute unless entity 0-0-0-0-2 run summon minecraft:marker 0.0 0.0 0.0 {UUID:[I;0,0,0,2]}

#>
# @within
#   function system_000:**
#   function player_000:**
#   function playdata_000:**
    #declare storage system_000:storage
data modify storage system_000:storage string.coin set value '{"text":"ミニ"}'
data merge storage system_000:storage {pos:{admin:{Pos:[0.0d,0.0d,0.0d],Rotation:[0.0f,0.0f]}}}
data merge storage system_000:storage {pos:{lobby:{Pos:[8.5d,40.0d,58.5d],Rotation:[180.0f,0.0f]}}}

#バージョン管理
#1.19.4
scoreboard players set #DataVersion id_000 3337
scoreboard players set #MapVersion id_000 1
execute unless data storage system_000:storage version.list run data remove storage system_000:storage version
data modify storage system_000:storage version.minecraft set value '{"text":"1.19.4"}'
function system_000:version


#その他初期化処理
#> @within
#   function system_000:**
#declare tag/function minecraft:second
schedule function #minecraft:second 20t replace