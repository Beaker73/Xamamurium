# inc tick count
scoreboard players add @s phone 1

# play chimes very quickly to sound as a ring, if not picked up
execute if entity @s[scores={phone=80..99}, tag=!pickup] run playsound minecraft:block.note_block.chime ambient @s 1.18 65.60 8.00
# then reset counter so we get a trigger in 4 seconds, if not picked up
execute if entity @s[scores={phone=100..}, tag=!pickup] run scoreboard players set @s phone 0

# if picked up (head in hand), set pickup tag
execute if entity @p[nbt={Inventory:[{id:"minecraft:player_head"}]}] run tag @s add pickup

# dialog
execute if entity @s[scores={phone=120}, tag=pickup] run tellraw @s [{"text":"[Director on Phone] ", "color":"red"}, {"text":"Hello!", "color":"white"}]
execute if entity @s[scores={phone=120}, tag=pickup] run playsound minecraft:entity.villager.celebrate voice @s

execute if entity @s[scores={phone=220}, tag=pickup] run tellraw @s [{"text":"[Director on Phone] ", "color":"red"}, {"text":"We have a small issue with the portal you build.", "color":"white"}]
execute if entity @s[scores={phone=220}, tag=pickup] run playsound minecraft:entity.villager.trade voice @s
execute if entity @s[scores={phone=230}, tag=pickup] run playsound minecraft:entity.villager.no voice @s
execute if entity @s[scores={phone=240}, tag=pickup] run playsound minecraft:entity.villager.celebrate voice @s

execute if entity @s[scores={phone=320}, tag=pickup] run tellraw @s [{"text":"[Director on Phone] ", "color":"red"}, {"text":"Come directly to the office, only you can fix it.", "color":"white"}]
execute if entity @s[scores={phone=320}, tag=pickup] run playsound minecraft:entity.villager.no voice @s
execute if entity @s[scores={phone=330}, tag=pickup] run playsound minecraft:entity.villager.trade voice @s
execute if entity @s[scores={phone=340}, tag=pickup] run playsound minecraft:entity.villager.celebrate voice @s

# advancement
execute if entity @s[scores={phone=350..}, tag=pickup] run advancement grant @s only xama:root
