summon armor_stand ~ ~-0.5 ~-0.5 {ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{rotation:[{random:1b},{random:{min:10d,max:25d}}]}},{},{},{}],Rotation:[0.0f,0.0f],Tags:["clay_502","clay_shooter_502","creating_502"],Small:1b,Invulnerable:1b,Invisible:1b,Marker:0b}

summon armor_stand ~ ~-0.5 ~ {ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{rotation:[{random:0b},{random:{min:10d,max:20d}}]}},{},{},{}],Rotation:[0.0f,0.0f],Tags:["clay_502","clay_shooter_502","creating_502"],Small:1b,Invulnerable:1b,Invisible:1b,Marker:0b}
summon armor_stand ~ ~-0.5 ~ {ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{rotation:[{random:0b},{random:{min:10d,max:20d}}]}},{},{},{}],Rotation:[180.0f,0.0f],Tags:["clay_502","clay_shooter_502","creating_502"],Small:1b,Invulnerable:1b,Invisible:1b,Marker:0b}

summon armor_stand ~ ~-0.5 ~ {ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{rotation:[{random:0b},{random:{min:10d,max:30d}}]}},{},{},{}],Rotation:[0.0f,0.0f],Tags:["clay_502","clay_shooter_502","creating_502"],Small:1b,Invulnerable:1b,Invisible:1b,Marker:0b}
summon armor_stand ~ ~-0.5 ~ {ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{rotation:[{random:0b},{random:{min:10d,max:30d}}]}},{},{},{}],Rotation:[180.0f,0.0f],Tags:["clay_502","clay_shooter_502","creating_502"],Small:1b,Invulnerable:1b,Invisible:1b,Marker:0b}

summon minecraft:armor_stand ~ ~-2.125 ~-0.5 {Tags:["gun_stand_502","creating_502"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Rotation:[180.0f,0.0f]}

summon minecraft:area_effect_cloud ~ ~-0.5 ~ {Tags:["spawn_player_502","creating_502"],Duration:2147483647,Rotation:[-90.0f,0.0f]}

summon minecraft:area_effect_cloud ~ ~-0.5 ~ {Tags:["spawn_spectator_502","creating_502"],Duration:2147483647,Rotation:[-90.0f,0.0f]}
summon minecraft:area_effect_cloud ~ ~-0.5 ~-0.5 {Tags:["spawn_target_plate_502","restart_target_502","creating_502"],Duration:2147483647,Rotation:[90.0f,0.0f]}

summon minecraft:area_effect_cloud ~ ~-0.5 ~ {Tags:["spawn_target_plate_502","practice_target_502","creating_502"],Duration:2147483647,Rotation:[90.0f,0.0f]}

summon villager ~ ~-0.5 ~ {Tags:["clay_502"],Team:"collision_502",Health:1.0f,Attributes:[{Name:generic.movementSpeed,Base:0.0d},{Name:"generic.maxHealth",Base:1.0d},{Name:"generic.knockbackResistance",Base:1.0d}],Silent:1b,Invulnerable:1,ArmorItems:[{},{},{},{}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],VillagerData:{type:"minecraft:plains",profession:"minecraft:fletcher",level:9}}


give @s oak_sign{BlockEntityTag:{Text2:'{"text":"強制終了","underlined":true,"clickEvent":{"action":"run_command","value":"tag @e[sort=nearest,tag=match_admin_502,limit=1] add delete_502"}}',Text3:'[{"text":"< ","color":"blue"},{"keybind":"key.use"},{"text":" >"}]'}}
give @s oak_sign{BlockEntityTag:{Text2:'{"text":"クレー射撃に参加","clickEvent":{"action":"run_command","value":"/function clay_502:join"}}'}}
give @s oak_sign{BlockEntityTag:{Text2:'{"text":"クレー射撃(αテスト)","clickEvent":{"action":"run_command","value":"/function clay_502:join"}}',Text3:'{"text":"に参加"}'}}

give @s oak_sign{BlockEntityTag:{Text2:'{"text":"ロビーへ退場する","clickEvent":{"action":"run_command","value":"/function clay_502:leave"}}'}}