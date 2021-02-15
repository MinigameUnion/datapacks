summon armor_stand ~ ~-0.5 ~-0.5 {ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{rotation:[{random:1b},{random:{min:10d,max:25d}}]}},{},{},{}],Rotation:[0.0f,0.0f],Tags:["clay_502","clay_shooter_502","creating_502"],Small:1b,Invulnerable:1b,Invisible:1b,Marker:0b}

summon armor_stand ~ ~-0.5 ~ {ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{rotation:[{random:0b},{random:{min:10d,max:20d}}]}},{},{},{}],Rotation:[0.0f,0.0f],Tags:["clay_502","clay_shooter_502","creating_502"],Small:1b,Invulnerable:1b,Invisible:1b,Marker:0b}
summon armor_stand ~ ~-0.5 ~ {ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{rotation:[{random:0b},{random:{min:10d,max:20d}}]}},{},{},{}],Rotation:[180.0f,0.0f],Tags:["clay_502","clay_shooter_502","creating_502"],Small:1b,Invulnerable:1b,Invisible:1b,Marker:0b}

summon armor_stand ~ ~-0.5 ~ {ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{rotation:[{random:0b},{random:{min:10d,max:30d}}]}},{},{},{}],Rotation:[0.0f,0.0f],Tags:["clay_502","clay_shooter_502","creating_502"],Small:1b,Invulnerable:1b,Invisible:1b,Marker:0b}
summon armor_stand ~ ~-0.5 ~ {ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{rotation:[{random:0b},{random:{min:10d,max:30d}}]}},{},{},{}],Rotation:[180.0f,0.0f],Tags:["clay_502","clay_shooter_502","creating_502"],Small:1b,Invulnerable:1b,Invisible:1b,Marker:0b}

summon minecraft:armor_stand ~ ~-2.125 ~-0.5 {Tags:["gun_stand_502","creating_502"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Rotation:[180.0f,0.0f]}

summon minecraft:area_effect_cloud ~ ~-0.5 ~ {Tags:["spawn_player_502","creating_502"],Duration:2147483647,Rotation:[-90.0f,0.0f]}
summon minecraft:area_effect_cloud ~ ~-0.5 ~ {Tags:["spawn_player_502","personal_502","creating_502"],Duration:2147483647,Rotation:[-90.0f,0.0f]}

summon minecraft:area_effect_cloud ~ ~-0.5 ~ {Tags:["spawn_spectator_502","creating_502"],Duration:2147483647,Rotation:[-90.0f,0.0f]}

summon minecraft:area_effect_cloud ~ ~-0.5 ~-0.5 {Tags:["spawn_target_plate_502","restart_target_502","creating_502"],Duration:2147483647,Rotation:[90.0f,0.0f]}

summon minecraft:area_effect_cloud ~ ~-0.5 ~ {Tags:["spawn_target_plate_502","practice_target_502","creating_502"],Duration:2147483647,Rotation:[90.0f,0.0f]}

summon villager ~ ~-0.5 ~ {Tags:["clay_502"],Team:"collision_502",Health:1.0f,Attributes:[{Name:"generic.movement_speed",Base:0.0d},{Name:"generic.max_health",Base:1.0d},{Name:"generic.knockback_resistance",Base:1.0d}],Silent:1b,Invulnerable:1,ArmorItems:[{},{},{},{}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],VillagerData:{type:"minecraft:plains",profession:"minecraft:fletcher",level:9}}

summon minecraft:area_effect_cloud ~ ~-1.5 ~ {Tags:["sign_502","delete_match_502","creating_502"],Duration:2147483647}
give @s oak_sign{BlockEntityTag:{Text2:'{"text":"強制終了","underlined":true,"clickEvent":{"action":"run_command","value":"tag @s add delete_match_502"}}',Text4:'[{"text":"< ","color":"dark_blue"},{"keybind":"key.use","color":"dark_blue"},{"text":" >","color":"dark_blue"}]',Text3:'{"text":"0 / 0"}'}}

give @s oak_sign{BlockEntityTag:{Text2:'{"text":"クレー射撃に参加","clickEvent":{"action":"run_command","value":"/function clay_502:join"}}'}}
give @s oak_sign{BlockEntityTag:{Text2:'{"text":"クレー射撃(βテスト)","clickEvent":{"action":"run_command","value":"/function clay_502:join"}}',Text3:'{"text":"に参加"}'}}

give @s oak_sign{BlockEntityTag:{Text2:'{"text":"ロビーへ退場する","clickEvent":{"action":"run_command","value":"/function clay_502:leave"}}'}}

give @s oak_sign{BlockEntityTag:{Text2:'{"text":"観戦をやめる","clickEvent":{"action":"run_command","value":"/tag @s[tag=spectating_502] add leave_match_502"}}',Text3:'[{"text":"< ","color":"dark_blue"},{"keybind":"key.use","color":"dark_blue"},{"text":" >","color":"dark_blue"}]'}}

summon minecraft:area_effect_cloud ~ ~-1.5 ~ {Tags:["sign_502","leave_match_502","creating_502"],Duration:2147483647}
give @s oak_sign{BlockEntityTag:{Text2:'{"text":"離脱する","clickEvent":{"action":"run_command","value":"/tag @s[tag=playing_502] add leave_match_502"}}',Text3:'[{"text":"< ","color":"dark_blue"},{"keybind":"key.use","color":"dark_blue"},{"text":" >","color":"dark_blue"}]'}}

give @s minecraft:item_frame{EntityTag:{Tags:["creating_502","gun_stand_502"],Item:{id:"minecraft:stone",Count:1b},ItemRotation:2b,Invisible:1b,Invulnerable:1b,Silent:1b}}

summon pig ~ ~-1.4 ~ {NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Saddle:1b,Health:0.1f,Attributes:[{Name:"generic.max_health",Base:0.1d}],Tags:["chair_502","creating_502"],Team:"collision_502",Age:-2147483648,CustomName:'{"text":"Dinnerbone"}',ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Rotation:[-90.0f,0.0f]}
summon pig ~ ~-2.4 ~-0.5 {NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Saddle:1b,Health:0.1f,Attributes:[{Name:"generic.max_health",Base:0.1d}],Tags:["chair_502","creating_502"],Team:"collision_502",Age:-2147483648,CustomName:'{"text":"Dinnerbone"}',ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Rotation:[-90.0f,0.0f]}