tellraw @s "restart"

# reset - player
clear @s
tp @s -6 65 7 -90 0
advancement revoke @s everything

# reset - phone
scoreboard players set @s phone 0
tag @s remove pickup
function xama:build_phone

# reset - door
setblock -3 65 9 minecraft:dark_oak_door[open=false,facing=south,hinge=left]
setblock 7 65 9 minecraft:dark_oak_door[open=false,facing=south,hinge=right]
teleport @e[type=minecraft:slime,x=-2,y=65,z=9,dx=1,dy=1,dz=1,limit=1] ~ ~-50 ~
teleport @e[type=minecraft:slime,x=7,y=65,z=9,dx=1,dy=1,dz=1,limit=1] ~ ~-50 ~
kill @e[type=minecraft:slime,x=-2,y=15,z=9]
kill @e[type=minecraft:slime,x=7,y=15,z=9]
summon minecraft:slime -2.35 65.00 9.5 {NoAI:1,Silent:1,Invulnerable:1,Size:3,ActiveEffects:[{Id:14,Amplifier:0,Duration:20000000,ShowParticles:0b}]}
summon minecraft:slime 7.35 65.00 9.5 {NoAI:1,Silent:1,Invulnerable:1,Size:3,ActiveEffects:[{Id:14,Amplifier:0,Duration:20000000,ShowParticles:0b}]}

# reset - bathroom
fill -5 66 -2 -5 65 -2 white_concrete
setblock 6 65 2 dark_oak_door[open=true,facing=south,hinge=right]

# reset - shattering escape
scoreboard players set @s throw 0
tag @s remove throw
setblock -4 65 8 minecraft:air
setblock -4 65 8 minecraft:barrel[facing=up,open=false]{Items:[{Slot:13,id:stone,Count:1}]}
fill -6 66 9 -6 67 9 minecraft:air
fill -6 66 9 -6 67 9 minecraft:glass_pane[east=true,west=true]

# reset car
scoreboard players set @s engine 0
setblock -14 65 6 minecraft:jungle_trapdoor[open=true,facing=east,half=top]
setblock -14 65 7 minecraft:jungle_trapdoor[open=true,facing=east,half=top]

# other global setup (disabled while in dev since startup calls restart)
# function xama:startup