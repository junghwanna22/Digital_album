#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
ANDROID_DIR="$ROOT_DIR/android"
APK_PATH="$ANDROID_DIR/app/build/outputs/apk/debug/app-debug.apk"
LOG_PATH="$ROOT_DIR/docs/APK_BUILD_LAST.log"

if [[ ! -d "$ANDROID_DIR" ]]; then
  echo "[APK] android/ directory not found: $ANDROID_DIR" >&2
  exit 1
fi

cd "$ANDROID_DIR"

if [[ -x "./gradlew" ]]; then
  GRADLE_CMD=("./gradlew")
else
  GRADLE_CMD=("gradle")
fi

echo "[APK] Using Gradle command: ${GRADLE_CMD[*]}"
echo "[APK] Building debug APK..."

set +e
"${GRADLE_CMD[@]}" :app:assembleDebug 2>&1 | tee "$LOG_PATH"
BUILD_EXIT=${PIPESTATUS[0]}
set -e

if [[ $BUILD_EXIT -ne 0 ]]; then
  echo "[APK] Build failed (exit=$BUILD_EXIT). See log: $LOG_PATH" >&2
  exit $BUILD_EXIT
fi

if [[ ! -f "$APK_PATH" ]]; then
  echo "[APK] Build finished but APK not found at: $APK_PATH" >&2
  exit 2
fi

echo "[APK] Build succeeded."
echo "[APK] APK generated at: $APK_PATH"
