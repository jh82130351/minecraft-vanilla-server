# 송금 정보가 없으면 종료
execute unless score @s coin_amount matches 1.. run tellraw @s {"text":"❌ 처리할 송금 요청이 없습니다.","color":"red"}
execute unless score @s coin_amount matches 1.. run scoreboard players reset @s coin_accept
execute unless score @s coin_amount matches 1.. run return 0

# 송금자 찾기 (5블록 이내)
execute as @a[distance=0.1..5,limit=1,sort=nearest] if score @s coins >= @p coin_amount run scoreboard players operation @s coins -= @p coin_amount
execute as @a[distance=0.1..5,limit=1,sort=nearest] if score @s coins matches 0.. run tellraw @s [{"text":"✅ ","color":"green"},{"score":{"name":"@p","objective":"coin_amount"},"color":"gold"},{"text":" 코인을 송금했습니다.","color":"green"}]

# 수신자에게 코인 추가
scoreboard players operation @s coins += @s coin_amount
tellraw @s [{"text":"✅ ","color":"green"},{"score":{"name":"@s","objective":"coin_amount"},"color":"gold"},{"text":" 코인을 받았습니다!","color":"green"}]

# 초기화
scoreboard players reset @s coin_amount
scoreboard players reset @s coin_sender_id
scoreboard players reset @s coin_accept
