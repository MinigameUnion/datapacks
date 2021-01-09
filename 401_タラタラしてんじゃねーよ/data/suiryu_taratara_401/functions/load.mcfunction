scoreboard objectives add tara_score1_401 dummy
scoreboard players set #3_401 tara_score1_401 3
scoreboard players set #8_401 tara_score1_401 8
scoreboard players set #10_401 tara_score1_401 10
scoreboard players set #14_401 tara_score1_401 14
scoreboard players set #20_401 tara_score1_401 20
scoreboard players set #100_401 tara_score1_401 100
scoreboard players set #6000_401 tara_score1_401 6000
scoreboard objectives add tara_score2_401 minecraft.custom:minecraft.leave_game
scoreboard objectives add tara_hscore_401 dummy
scoreboard objectives add tara_pticket_401 dummy
scoreboard objectives add tara_weapon_401 dummy
scoreboard objectives add tara_tri1_401 dummy
scoreboard objectives add tara_tri2_401 dummy
scoreboard objectives add tara_tri3_401 dummy
scoreboard objectives add tara_tri4_401 dummy
scoreboard objectives add tara_tri5_401 dummy
scoreboard objectives add tara_tri6_401 dummy
scoreboard objectives add tara_tri7_401 dummy
scoreboard objectives add tara_tri8_401 dummy
scoreboard objectives add tara_tri9_401 dummy
scoreboard objectives add tara_tri10_401 dummy
scoreboard objectives add tara_tri11_401 dummy
scoreboard objectives add tara_tri12_401 dummy
scoreboard objectives add tara_tri13_401 dummy
scoreboard objectives add tara_cro1_401 dummy
scoreboard objectives add tara_cro2_401 dummy
scoreboard objectives add tara_cro3_401 dummy
scoreboard objectives add tara_cro4_401 dummy
scoreboard objectives add tara_cro5_401 dummy
scoreboard objectives add tara_cro6_401 dummy
scoreboard objectives add tara_cro7_401 dummy
scoreboard objectives add tara_cro8_401 dummy
scoreboard objectives add tara_cro9_401 dummy
scoreboard objectives add tara_cro10_401 dummy
scoreboard objectives add tara_cro11_401 dummy
scoreboard objectives add tara_cro12_401 dummy
scoreboard objectives add tara_cro13_401 dummy
scoreboard objectives add tara_rule_401 trigger

setblock 3999 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"","clickEvent":{"action":"run_command","value":"execute unless entity @a[scores={tara_score1_401=1}] run scoreboard players set #playing_taratara_401 tara_score1_401 1"}}', Text2: '{"text":"START","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"execute unless entity @a[scores={tara_score1_401=1}] run scoreboard players set @s tara_score1_401 1"}}'} replace

bossbar add taratara_fever_401 [{"text":"F","color":"black","bold":true,"italic":false},{"text":"E"},{"text":"V"},{"text":"E"},{"text":"R"}]
bossbar set minecraft:taratara_fever_401 max 600
