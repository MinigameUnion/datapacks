#execute positioned 5014.0 2.0 2029.0 rotated -90 0 run function clay_502:hologram/start
kill @e[tag=hologram_001,scores={hologram_id_001=5000..5999}]
data modify storage utility_001:hologram_util TextGroup append value {Offset: [1f,-0.5f],HologramID: 5000,Setting: {CursorCollider: 1b,TextInterpret: 0b,TextSpaceWidth: 0.24f},Text: ['話','し','か','け','る']}
execute positioned 5014.0 2.0 2029.0 rotated -90 0 run function utility_001:hologram_util/api/create