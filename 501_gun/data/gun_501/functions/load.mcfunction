#define tag gun_501 [/tag からの付与禁止] gun_501:join を実行して付与するtick条件のタグ
#define tag target_501 type=#gun_501:targetに含まれるエンティティにつけると被弾可能になる
#define tag enemy_501 tag=target_501を持つエンティティにつけると被弾時にHealthが減少するようになる

#define tag owner_501 [読み取り専用] その銃弾を発砲したプレイヤーを指定できる(#gun_501:{hit_entity,hit_block}内)
#define tag team_501 [読み取り専用] その銃弾の発砲者と同チームのプレイヤーを指定できる(#gun_501:{hit_entity,hit_block}内)

scoreboard objectives add num_501 dummy {"text":"(501)数値"}
scoreboard objectives add min_501 dummy {"text":"(501)最小値"}
scoreboard objectives add max_501 dummy {"text":"(501)最大値"}
#scoreboard objectives add option_501 dummy {"text":"(501)設定"}
scoreboard objectives add ope_501 dummy {"text":"(501)計算用"}
scoreboard objectives add pos_501 dummy {"text":"(501)Pos"}
scoreboard objectives add x_vec_501 dummy {"text":"(501)ﾍﾞｸﾄﾙx"}
scoreboard objectives add y_vec_501 dummy {"text":"(501)ﾍﾞｸﾄﾙy"}
scoreboard objectives add z_vec_501 dummy {"text":"(501)ﾍﾞｸﾄﾙz"}
scoreboard objectives add speed_501 dummy {"text":"(501)ﾙｰﾌﾟ数"}
scoreboard objectives add damage_501 dummy {"text":"(501)ﾀﾞﾒｰｼﾞ"}
scoreboard objectives add gravity_501 dummy {"text":"(501)重力"}
#scoreboard objectives add rot_501 dummy {"text":"(501)Rotation"}
scoreboard objectives add drop_501 minecraft.custom:minecraft.drop {"text":"(501)投げ検知"}
scoreboard objectives add pick_cb_501 minecraft.picked_up:minecraft.crossbow {"text":"(501)ｸﾛｽﾎﾞｳ拾い検知"}
scoreboard objectives add skip_anime_501 dummy {"text":"(501)ｱﾆﾒｰｼｮﾝ停止時間"}
scoreboard objectives add sis_501 dummy {"text":"(501)SelectedItemSlot"}
scoreboard objectives add gun_id_501 dummy {"text":"(501)Selected銃ID"}
scoreboard objectives add cooltime_501 dummy {"text":"(501)発射間隔"}
scoreboard objectives add sneaking_501 dummy {"text":"(501)しゃがみ時間"}
scoreboard objectives add team_id_501 dummy {"text":"(501)ﾁｰﾑid"}
scoreboard objectives add property_501 dummy {"text":"(501)プロパティ"}

scoreboard objectives add spread_501 dummy

scoreboard players set #LOOP num_501 20
scoreboard players set #DETAILED num_501 10
scoreboard players set #GRAVITY num_501 10
scoreboard players set #GRAVITY ope_501 15
scoreboard players set #1000000 num_501 1000000
scoreboard players set #5000000 num_501 5000000
scoreboard players set #10000000 num_501 10000000
scoreboard players set #HITMARK num_501 1
#scoreboard players set #HITMARK pos_501 500
scoreboard players set #HITMARK ope_501 0
scoreboard players set #HITMARK_MAX num_501 500

summon minecraft:armor_stand ~ ~ ~ {UUID:[I;501,0,0,0],Marker:1b,Invisible:1b,Small:1b,Tags:["admin_501","gun_501"]}
data modify storage gun_501:temp Pos set from entity 1f5-0-0-0-0 Pos