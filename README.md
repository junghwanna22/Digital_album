# Digital Album

Flutter 기반 전자액자 앱 프로젝트입니다.

## 목표

사진 파일을 전자액자처럼 보여주는 앱을 구현합니다. Android 태블릿을 우선 대상으로 하며, 이후 iOS와 기타 플랫폼 확장을 고려합니다.

## 주요 기능

- 기기 사진 선택
- 전체화면 슬라이드쇼
- 랜덤/순차 재생
- 사진 전환 시간 설정
- 시계/날짜 오버레이
- 날씨 오버레이
- 로컬 일정 및 Google Calendar 일정 표시
- NAS/SMB 사진 소스 연동
- Google Photos Picker 연동
- 자동 시작 모드
- 키오스크 모드
- Burn-in 방지
- 데이터/캐시 관리
- APK/AAB 릴리즈 빌드

## 브랜치 전략

```text
main
└─ 안정 릴리즈

develop
└─ 통합 개발

feature/*
├─ feature/core-slideshow
├─ feature/nas-source
├─ feature/google-photos
├─ feature/calendar-weather
└─ feature/kiosk-release
```

## 개발 흐름

1. 기능별 이슈 생성
2. 관련 `feature/*` 브랜치에서 개발
3. `develop`으로 PR 생성
4. 통합 테스트
5. `main`으로 릴리즈 PR 생성
6. GitHub Actions로 APK/AAB 빌드

## 설치 예정 패키지

```bash
flutter pub add image_picker shared_preferences wakelock_plus intl
flutter pub add smb_connect path_provider path
flutter pub add http geolocator
flutter pub add google_sign_in googleapis extension_google_sign_in_as_googleapis_auth
flutter pub add url_launcher flutter_secure_storage
flutter pub add flutter_launcher_icons --dev
flutter pub add flutter_native_splash --dev
```

## 빌드

```bash
flutter clean
flutter pub get
flutter analyze
flutter build apk --release
```

Play Store용 AAB:

```bash
flutter build appbundle --release
```

## 관리 이슈

- #1 MVP 슬라이드쇼
- #2 NAS/SMB 사진 소스
- #3 Google Photos Picker
- #4 날씨 및 일정 오버레이
- #5 키오스크/자동 시작 및 릴리즈 빌드
