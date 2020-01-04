execute if entity @s[scores={counter=0}] run effect give @s minecraft:blindness 3 1 true
execute if entity @s[scores={counter=0}] run effect give @s minecraft:slowness 3 10 true

scoreboard players add @s counter 1

execute if entity @s[scores={counter=20}] run tellraw @s "tp @s TODO"
execute if entity @s[scores={counter=40}] run scoreboard players set @s engine 0