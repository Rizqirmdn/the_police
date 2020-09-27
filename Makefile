build-android:
	flutter build apk --target-platform android-arm,android-arm64,android-x64 --split-per-abi

run-test:
	clear && flutter test

run-test-coverage:
	clear && flutter test --coverage

gen-code-coverage:
	genhtml coverage/lcov.info -o coverage/html

run-build_runner-build:
	flutter packages pub run build_runner build --delete-conflicting-outputs

run_build_runner-watch:
	flutter packages pub run build_runner watch --delete-conflicting-outputs