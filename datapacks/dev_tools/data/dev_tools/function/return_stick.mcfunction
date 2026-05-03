# F키로 떨군 막대기 자동 반환
give @s blaze_rod{display:{Name:'{"text":"좌표 확인 막대기","bold":true,"color":"gold"}',Lore:['{"text":"우클릭: 블록 좌표 저장","color":"gray"}','{"text":"F키(드롭): 영역 선택","color":"gray"}','{"text":"내구성: 1","color":"dark_gray"}']},Enchantments:[{id:"unbreaking",lvl:1}]} 1
tellraw @s {"text":"✓ 막대기가 반환되었습니다.","color":"green"}
