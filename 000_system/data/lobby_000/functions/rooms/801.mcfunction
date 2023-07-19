#> lobby_000:rooms/801
### 設置

#define tag lobby.801.enter_000

## リセット
    kill @e[tag=lobby.801.enter_000]

## 羊とかを召喚
    # 羊とインタラクション
    summon interaction -19.5 13.8 -12.5 {Tags:["lobby.801.enter_000"],width:2,height:2,Passengers:[{id:"sheep",Tags:["lobby.801.enter_000"],NoAI:1,DeathTime:20s,DeathLootTable:"",Rotation:[127f,-5f],Passengers:[{id:"text_display",Tags:["lobby.801.enter_000"],text:'{"text":"ゲームに移動","color":"green","bold":true,"extra":[{"text":"\\n右クリック","color":"white","bold":false}]}',alignment:"center",billboard:"vertical",transformation:[1f,0f,0f,0f, 0f,1f,0f,0.7f, 0f,0f,1f,0f, 0f,0f,0f,1.2f]}]}]}
    # ハサミ
    summon item_display -19.0 15.0 -13.3 {Tags:["lobby.801.enter_000"],item:{id:"shears",Count:1b},Rotation:[0f,0f],transformation:[1f,0f,0f,0f, 0f,1f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1.5f]}