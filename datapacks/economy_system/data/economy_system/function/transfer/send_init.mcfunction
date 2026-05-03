# 송금액이 잔액보다 많으면 실패
execute unless score @s coins >= @s coin_send run tellraw @s {"text":"❌ 잔액이 부족합니다!","color":"red"}
execute unless score @s coins >= @s coin_send run scoreboard players reset @s coin_send
execute unless score @s coins >= @s coin_send run return 0

# 5블록 내 다른 플레이어 확인
execute unless entity @a[distance=0.1..5] run tellraw @s {"text":"❌ 근처에 플레이어가 없습니다! (5블록 이내)","color":"red"}
execute unless entity @a[distance=0.1..5] run scoreboard players reset @s coin_send
execute unless entity @a[distance=0.1..5] run return 0

# 송금 정보 저장 (가장 가까운 플레이어에게)
execute as @a[distance=0.1..5,limit=1,sort=nearest] run scoreboard players operation @s coin_amount = @p coin_send
execute as @a[distance=0.1..5,limit=1,sort=nearest] run scoreboard players operation @s coin_sender_id = @p coins

# 수신자에게 확인 메시지
execute as @a[distance=0.1..5,limit=1,sort=nearest] run tellraw @s [{"text":"💰 송금 요청: ","color":"yellow"},{"score":{"name":"@s","objective":"coin_amount"},"color":"gold"},{"text":" 코인","color":"gold"}]
execute as @a[distance=0.1..5,limit=1,sort=nearest] run tellraw @s [{"text":"[수락]","color":"green","clickEvent":{"action":"run_command","value":"/trigger coin_accept set 1"},"hoverEvent":{"action":"show_text","contents":"클릭하여 송금 수락"}},{"text":" | ","color":"white"},{"text":"[거절]","color":"red","clickEvent":{"action":"run_command","value":"/trigger coin_decline set 1"},"hoverEvent":{"action":"show_text","contents":"클릭하여 송금 거절"}}]

# 송금자에게 대기 메시지
tellraw @s {"text":"💰 송금 요청을 보냈습니다. 상대방의 응답을 기다려주세요.","color":"yellow"}

# 송금액 리셋
scoreboard players reset @s coin_send
