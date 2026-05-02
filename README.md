# 마인크래프트 바닐라 서버

버전: **26.2 Snapshot 5**

## 구조

```
📁 config/           - Paper 설정 파일
📁 datapacks/        - 커스텀 데이터팩
📄 server.properties.template - 서버 설정 템플릿
📄 .gitignore        - Git 제외 파일 목록
```

## 시작 방법

```bash
# 1. server.jar 다운로드
wget -O server.jar https://piston-data.mojang.com/v1/objects/dbcd57afe4cdba19be8c9e658d1e3a176d53a5db/server.jar

# 2. 동의
echo "eula=true" > eula.txt

# 3. 설정 복사
cp server.properties.template server.properties
# (RCON 비밀번호 등 수정)

# 4. 실행
java -Xms1G -Xmx2G -jar server.jar nogui
```

## 데이터팩

- **coords_display** — 플레이어 좌표 및 속도를 사이드바에 표시
  - 개발 중 (26.2 스냅샷 함수 로드 이슈 확인 중)
