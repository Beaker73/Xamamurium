playsound minecraft:entity.bee.loop ambient @s[scores={engine=1}] -14 65.00 6 3 .1
scoreboard players add @s engine 1

# restart sound after tick 170 (length of sound)
execute if entity @s[scores={engine=170..}] run scoreboard players set @s engine 1
