#> ms_801:load_once
# 初回load時のみ実行
# @internal

# scoreboard宣言
scoreboard objectives add ID_801 dummy
scoreboard objectives add Count_801 dummy

# team宣言
team add 801
team modify 801 collisionRule never
team modify 801 nametagVisibility never
team add 801_visible
team modify 801_visible collisionRule never
team modify 801_visible nametagVisibility always

# bossbar追加
bossbar add disp_801 ""
bossbar set disp_801 style progress
bossbar add time_801 ""
bossbar set time_801 style progress
bossbar set time_801 max 1
bossbar set time_801 value 1

# storage設定
execute unless data storage ms_801:record Data run data merge storage ms_801:record {Data:{Time:0,Player:""},Easy:[{Time:100000,Player:"No Name"},{Time:100000,Player:"No Name"},{Time:100000,Player:"No Name"},{Time:100000,Player:"No Name"},{Time:100000,Player:"No Name"}],Normal:[{Time:100000,Player:"No Name"},{Time:100000,Player:"No Name"},{Time:100000,Player:"No Name"},{Time:100000,Player:"No Name"},{Time:100000,Player:"No Name"}],Hard:[{Time:100000,Player:"No Name"},{Time:100000,Player:"No Name"},{Time:100000,Player:"No Name"},{Time:100000,Player:"No Name"},{Time:100000,Player:"No Name"}],Hardcore:[{Time:100000,Player:"No Name"},{Time:100000,Player:"No Name"},{Time:100000,Player:"No Name"},{Time:100000,Player:"No Name"},{Time:100000,Player:"No Name"}],Nightmare:[{Time:100000,Player:"No Name"},{Time:100000,Player:"No Name"},{Time:100000,Player:"No Name"},{Time:100000,Player:"No Name"},{Time:100000,Player:"No Name"}]}

# 変数等初期化
function ms_801:init

# 以下各種定義
#> ゲーム退出
#declare entity 0-0-321-ffff-ffffffffffff
#> ゲーム開始
#declare entity 0-0-321-0-0
#> 難易度設定：イージー
#declare entity 0-0-321-0-a
#> 難易度設定：ノーマル
#declare entity 0-0-321-0-b
#> 難易度設定：ハード
#declare entity 0-0-321-0-c
#> 難易度設定：ハードコア
#declare entity 0-0-321-0-d
#> 難易度設定：ナイトメア
#declare entity 0-0-321-0-e
#> ランキング
#declare entity 0-0-321-0-14
#> ゲーム終了
#declare entity 0-0-321-ffff-ffff00000000