# test if engine compartment open, yes, then grant  jumpstart
execute if entity @s[advancements={xama:jumpstart=false}] if block -14 65 6 minecraft:jungle_trapdoor[open=false] run advancement grant @s only xama:jumpstart
execute if entity @s[advancements={xama:jumpstart=false}] if block -14 65 7 minecraft:jungle_trapdoor[open=false] run advancement grant @s only xama:jumpstart

# if engine running, play engine sound
execute if entity @s[scores={engine=1..}] run function xama:car_engine
