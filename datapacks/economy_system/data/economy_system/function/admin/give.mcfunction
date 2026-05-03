# 사용법: function economy_system:admin/give {플레이어명} {금액}
# 예: scoreboard players add Steve coins 100

tellraw @a [{"text":"[관리자] ","color":"red"},{"selector":"@s","color":"yellow"},{"text":"님이 코인을 지급받았습니다.","color":"white"}]
