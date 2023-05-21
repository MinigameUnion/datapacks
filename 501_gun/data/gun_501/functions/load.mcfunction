#> gun_501:load
# @within
#   tag/function minecraft:load

#>
# @within
#   bullet_501:**
#   gun_501:**
#   player_501:**
#declare storage gun_501:temp

#declare tag gun_501 [/tag ����̕t�^�֎~] gun_501:join �����s���ĕt�^����tick�����̃^�O
#declare tag target_501 type=#gun_501:target�Ɋ܂܂��G���e�B�e�B�ɂ���Ɣ�e�\�ɂȂ�
#declare tag enemy_501 tag=target_501�����G���e�B�e�B�ɂ���Ɣ�e����Health����������悤�ɂȂ�
#declare tag owner_501 [�ǂݎ���p] ���̏e�e�𔭖C�����v���C���[���w��ł���(#gun_501:{hit_entity,hit_block}��)
#declare tag team_501 [�ǂݎ���p] ���̏e�e�̔��C�҂Ɠ��`�[���̃v���C���[���w��ł���(#gun_501:{hit_entity,hit_block}��)

scoreboard objectives add num_501 dummy {"text":"(501)���l"}
scoreboard objectives add min_501 dummy {"text":"(501)�ŏ��l"}
scoreboard objectives add max_501 dummy {"text":"(501)�ő�l"}
#scoreboard objectives add option_501 dummy {"text":"(501)�ݒ�"}
scoreboard objectives add ope_501 dummy {"text":"(501)�v�Z�p"}
scoreboard objectives add pos_501 dummy {"text":"(501)Pos"}
scoreboard objectives add x_vec_501 dummy {"text":"(501)�޸��x"}
scoreboard objectives add y_vec_501 dummy {"text":"(501)�޸��y"}
scoreboard objectives add z_vec_501 dummy {"text":"(501)�޸��z"}
scoreboard objectives add speed_501 dummy {"text":"(501)ٰ�ߐ�"}
scoreboard objectives add damage_501 dummy {"text":"(501)��Ұ��"}
scoreboard objectives add gravity_501 dummy {"text":"(501)�d��"}
scoreboard objectives add in_501 dummy {"text":"(501)�؍ݒ��u���b�N"}
#scoreboard objectives add rot_501 dummy {"text":"(501)Rotation"}
scoreboard objectives add drop_501 minecraft.custom:minecraft.drop {"text":"(501)�������m"}
scoreboard objectives add pick_cb_501 minecraft.picked_up:minecraft.crossbow {"text":"(501)�۽�޳�E�����m"}
scoreboard objectives add walk_501 minecraft.custom:minecraft.walk_one_cm {"text":"(501)�������m"}
scoreboard objectives add skip_anime_501 dummy {"text":"(501)��Ұ��ݒ�~����"}
scoreboard objectives add sis_501 dummy {"text":"(501)SelectedItemSlot"}
scoreboard objectives add gun_id_501 dummy {"text":"(501)Selected�eID"}
scoreboard objectives add cooltime_501 dummy {"text":"(501)���ˊԊu"}
scoreboard objectives add sneaking_501 dummy {"text":"(501)���Ⴊ�ݎ���"}
scoreboard objectives add team_id_501 dummy {"text":"(501)���id"}
scoreboard objectives add property_501 dummy {"text":"(501)�v���p�e�B"}

scoreboard objectives add spread_501 dummy

scoreboard players set #LOOP num_501 10
scoreboard players set #DETAILED num_501 3
scoreboard players set #DETAILED ope_501 100
scoreboard players set #GRAVITY ope_501 490
scoreboard players set #UNIT num_501 200
scoreboard players set #BREAKABLE ope_501 85

scoreboard players set #1block num_501 10000
#scoreboard players operation #distance num_501 = #UNIT num_501
scoreboard players set #spread num_501 250
scoreboard players set #HITMARK num_501 1
scoreboard players set #HITMARK ope_501 0
scoreboard players set #HITMARK_MAX num_501 500

execute unless entity 0-0-1f5-0-0 run summon minecraft:armor_stand ~ ~ ~ {UUID: [I; 0, 501, 0, 0], Marker: 1b, Invisible: 1b, Small: 1b, Tags: ["admin_501", "gun_501"]}
data modify storage gun_501:temp Pos set from entity 0-0-1f5-0-0 Pos