tellraw @a "startup"

# generic counter, that can be used by any process, as long as they cannot active at the same time.
scoreboard objectives add counter dummy

# stone trowing scoreboard
scoreboard objectives add throw minecraft.dropped:stone

# phone counter for ringing
scoreboard objectives add phone dummy

# car engine
scoreboard objectives add engine dummy

# while developping, restartg ame as well on reload for debugging
execute as @a run function xama:restart
