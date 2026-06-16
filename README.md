# Digital Album

개인/가족 사진을 정리하고 공유할 수 있는 **Digital Album** 프로젝트입니다.

## 현재 단계
- 프로젝트 기본 뼈대 구성
- 개발 로드맵/요구사항 정리
- **프론트엔드/백엔드 빌드 가능한 최소 워크스페이스 구성**

## 제안 기술 스택
- Frontend: React + TypeScript (예정)
- Backend: Node.js (Express) 또는 FastAPI (예정)
- Database: PostgreSQL
- Storage: S3 호환 오브젝트 스토리지

## 초기 폴더 구조

```text
src/
  frontend/
  backend/
docs/
```

## 빌드 방법

### 로컬 빠른 빌드
```bash
npm install
npm run build
```

### 자체 빌드(권장, CI와 동일 흐름)
```bash
./scripts/self-build.sh
```

> `self-build.sh`는 `npm ci` 후 `npm run build`를 순서대로 실행합니다.

빌드 결과물:
- `src/frontend/dist/index.html`
- `src/backend/dist/server.js`

## 다음 할 일
1. 프론트엔드(React+TS) 실제 앱 초기화
2. 백엔드(Express/FastAPI) 서버 골격 및 헬스체크 API 추가
3. DB 스키마/마이그레이션 도입
4. GitHub Actions에서 실제 빌드/테스트 실행


## APK 빌드 (Android)

```bash
./scripts/build-apk.sh
```


예상 산출물:
- `android/app/build/outputs/apk/debug/app-debug.apk`

실패 시 로그:
- `docs/APK_BUILD_LAST.log`

> 참고: Android SDK 및 Maven 저장소 접근 권한이 필요합니다.


APK 빌드 시도 상태는 `docs/APK_BUILD_STATUS.md`에 기록합니다.
