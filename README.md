# 마인크래프트 바닐라 서버 - 데이터팩 개발 프로젝트

## 프로젝트 개요
마인크래프트 바닐라 26.1.2 서버에서 사용하는 데이터팩을 개발/관리합니다.

## 현재 데이터팩

### coords_display
플레이어 좌표와 방향을 화면에 표시합니다.

### regen_system
플레이어 상태(수면/대기/걷기/수영)에 따라 체력 재생 속도를 조절합니다.

## 작업 중인 기능

### 🧛 뱀파이어 서바이벌 스타일 디펜스 존
던전 구역에서 웨이브 시스템 + 토큰 시스템으로 몰려오는 몹을 처치하는 디펜스 컨텐츠

#### 핵심 메커니즘
1. **던전 구역** (100×100×100) — 특정 좌표 범위, 진입 시 게임 시작
2. **웨이브 시스템** — 웨이브 1(좀비5) → 웨이브 2(좀비10+스켈3) → 진행형
3. **토큰 시스템** — "던전 입장권" 아이템 소모하여 진입

#### 구현 구조
```
datapacks/dungeon_defense/
├── pack.mcmeta
└── data/
    ├── dungeon_defense/function/
    │   ├── load.mcfunction         # 초기화
    │   ├── tick.mcfunction         # 메인 루프
    │   ├── zone_check.mcfunction    # 구역 진입 감지
    │   ├── start_game.mcfunction    # 게임 시작
    │   ├── wave_spawn.mcfunction    # 웨이브별 스폰
    │   ├── wave_clear.mcfunction    # 웨이브 클리어 체크
    │   ├── game_end.mcfunction      # 게임 종료 (승리/패배)
    │   ├── token_check.mcfunction   # 토큰 소지 확인
    │   └── rewards.mcfunction       # 보상 지급
    └── minecraft/tags/function/
        ├── load.json
        └── tick.json
```

#### 주요 기능
- 웨이브당 5분 제한 시간, 초과 시 강제 종료
- 웨이브 5/10/15마다 보스 웨이브
- 난이도 조절 (토큰 종류로 구분)
- 멀티플레이 지원 (인원수 × 1.5배 몹)
- 리더보드 (최고 웨이브 기록)
- 랜덤 이벤트 웨이브

#### 개발 로드맵
| Phase | 내용 |
|-------|------|
| Phase 1 | 구역 설정, 토큰 검증, 웨이브 1~5, 클리어 감지 + 보상 |
| Phase 2 | 웨이브 10까지 확장, 난이도별 밸런싱, 보상 테이블 |
| Phase 3 | 멀티플레이, 리더보드, 보스 웨이브, 랜덤 이벤트 |

#### 결정 필요 사항
1. 던전 위치 좌표
2. 토큰 제작 재료 (다이아/금괴?)
3. 최대 웨이브 (무한/30웨이브 엔딩?)
4. 보상 종류
5. 난이도 단계

---

## 데이터팩 구조
```
datapacks/
├── coords_display/
│   ├── data/
│   │   ├── coords_display/function/
│   │   │   ├── load.mcfunction
│   │   │   ├── tick.mcfunction
│   │   │   └── update_all.mcfunction
│   │   └── minecraft/tags/function/
│   │       ├── load.json
│   │       └── tick.json
│   └── pack.mcmeta
└── regen_system/
    ├── data/
    │   ├── minecraft/tags/function/
    │   │   ├── load.json
    │   │   └── tick.json
    │   └── regen_system/function/
    │       ├── detect_state.mcfunction
    │       ├── load.mcfunction
    │       └── tick.mcfunction
    └── pack.mcmeta
```

## GitHub 작업 흐름
```bash
# 데이터팩 push
cd ~/.openclaw/workspace
bash skill/git-vanilla-datapack-push.sh "커밋 메시지"

# 데이터팩 pull
bash skill/git-vanilla-datapack-pull.sh
```
