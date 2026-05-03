# 모든 플레이어 잔액 조회
tellraw @s {"text":"===== 💰 전체 잔액 조회 =====","color":"gold"}
execute as @a run tellraw @p [{"selector":"@s","color":"yellow"},{"text":": ","color":"white"},{"score":{"name":"@s","objective":"coins"},"color":"gold"},{"text":" 코인","color":"white"}]
