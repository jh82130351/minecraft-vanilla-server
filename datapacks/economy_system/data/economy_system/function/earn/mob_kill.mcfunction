# 좀비 처치 (10 코인)
execute if score @s kill_zombie matches 1.. run scoreboard players add @s coins 10
execute if score @s kill_zombie matches 1.. run tellraw @s {"text":"💰 +10 코인 (좀비 처치)","color":"gold"}
execute if score @s kill_zombie matches 1.. run scoreboard players reset @s kill_zombie

# 스켈레톤 처치 (10 코인)
execute if score @s kill_skeleton matches 1.. run scoreboard players add @s coins 10
execute if score @s kill_skeleton matches 1.. run tellraw @s {"text":"💰 +10 코인 (스켈레톤 처치)","color":"gold"}
execute if score @s kill_skeleton matches 1.. run scoreboard players reset @s kill_skeleton

# 크리퍼 처치 (15 코인)
execute if score @s kill_creeper matches 1.. run scoreboard players add @s coins 15
execute if score @s kill_creeper matches 1.. run tellraw @s {"text":"💰 +15 코인 (크리퍼 처치)","color":"gold"}
execute if score @s kill_creeper matches 1.. run scoreboard players reset @s kill_creeper

# 거미 처치 (10 코인)
execute if score @s kill_spider matches 1.. run scoreboard players add @s coins 10
execute if score @s kill_spider matches 1.. run tellraw @s {"text":"💰 +10 코인 (거미 처치)","color":"gold"}
execute if score @s kill_spider matches 1.. run scoreboard players reset @s kill_spider

# 엔더맨 처치 (50 코인)
execute if score @s kill_enderman matches 1.. run scoreboard players add @s coins 50
execute if score @s kill_enderman matches 1.. run tellraw @s {"text":"💰 +50 코인 (엔더맨 처치)","color":"gold"}
execute if score @s kill_enderman matches 1.. run scoreboard players reset @s kill_enderman

# 위더 스켈레톤 처치 (30 코인)
execute if score @s kill_wither_skeleton matches 1.. run scoreboard players add @s coins 30
execute if score @s kill_wither_skeleton matches 1.. run tellraw @s {"text":"💰 +30 코인 (위더 스켈레톤 처치)","color":"gold"}
execute if score @s kill_wither_skeleton matches 1.. run scoreboard players reset @s kill_wither_skeleton

# 블레이즈 처치 (25 코인)
execute if score @s kill_blaze matches 1.. run scoreboard players add @s coins 25
execute if score @s kill_blaze matches 1.. run tellraw @s {"text":"💰 +25 코인 (블레이즈 처치)","color":"gold"}
execute if score @s kill_blaze matches 1.. run scoreboard players reset @s kill_blaze
