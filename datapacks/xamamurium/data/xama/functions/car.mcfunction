# called by player_tick

# if in car, but not jumpstarted, give message
execute if entity @s[x=-19,y=64,z=6,dx=1,dy=1,dz=1,scores={engine=0},tag=!incar] run say "The car keys are on the same keyring with the house keys. And I still haven't found those."
execute if entity @s[x=-19,y=64,z=6,dx=1,dy=1,dz=1] run tag @s add incar
execute if entity @s[tag=incar] unless entity @s[x=-19,y=64,z=6,dx=1,dy=1,dz=1] run tag @s remove incar

# test if engine compartment open, yes, then grant  jumpstart
execute if entity @s[advancements={xama:jumpstart=false}] if block -14 65 6 minecraft:jungle_trapdoor[open=false] run advancement grant @s only xama:jumpstart
execute if entity @s[advancements={xama:jumpstart=false}] if block -14 65 7 minecraft:jungle_trapdoor[open=false] run advancement grant @s only xama:jumpstart

# if engine running, play engine sound
execute if entity @s[scores={engine=1..}] run function xama:car_engine

# if engine running, and in car, verify that doors are closed before driving
execute if entity @s[scores={engine=1..},tag=incar] if block -18 65 5 minecraft:oak_door[open=false] if block -18 65 8 minecraft:oak_door[open=false] run function xama:car_to_office
