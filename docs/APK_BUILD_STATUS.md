# APK Build Status

## Latest Attempt
- Date: 2026-05-18 (UTC)
- Command: `./scripts/build-apk.sh`
- Result: Failed in this environment before compilation started.

## Failure Reason
Gradle could not download required Android/Kotlin plugin artifacts due to HTTP 403 from remote repositories.

- `com.android.tools.build:gradle:8.5.2` resolution failed (HTTP 403)
- `org.jetbrains.kotlin:kotlin-gradle-plugin:2.0.21` resolution failed (HTTP 403)

## Logs
- Last build log: `docs/APK_BUILD_LAST.log`

## How to build in a normal dev machine
```bash
./scripts/build-apk.sh
```

Expected output path if successful:
- `android/app/build/outputs/apk/debug/app-debug.apk`
