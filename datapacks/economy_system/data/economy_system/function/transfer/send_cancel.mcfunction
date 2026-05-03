# 송금 정보가 없으면 종료
execute unless score @s coin_amount matches 1.. run tellraw @s {"text":"❌ 처리할 송금 요청이 없습니다.","color":"red"}
execute unless score @s coin_amount matches 1.. run scoreboard players reset @s coin_decline
execute unless score @s coin_amount matches 1.. run return 0

# 송금자에게 알림
execute as @a[distance=0.1..5,limit=1,sort=nearest] run tellraw @s {"text":"❌ 송금이 거절되었습니다.","color":"red"}

# 수신자에게 확인 메시지
tellraw @s {"text":"✅ 송금을 거절했습니다.","color":"yellow"}

# 초기화
scoreboard players reset @s coin_amount
scoreboard players reset @s coin_sender_id
scoreboard players reset @s coin_decline
