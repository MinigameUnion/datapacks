#> ms_801:init_check
# 初期化できたかチェック
# @internal

# 退出用羊がいない場合再度初期化
execute unless entity 0-0-321-ffff-ffffffffffff run function ms_801:init

# 初期化できていれば設定フェーズ開始
execute if entity 0-0-321-ffff-ffffffffffff run function ms_801:setting/start