tellraw @a "startup"

# stone trowing scoreboard
scoreboard objectives add throw minecraft.dropped:stone

# phone counter for ringing
scoreboard objectives add phone dummy

# car engine
scoreboard objectives add engine dummy

# while developping, restartg ame as well on reload for debugging
execute as @a run function xama:restart
