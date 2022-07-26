flutter_build_apk_dev: flutter_test
	flutter build apk --no-sound-null-safety --dart-define="ENV=development"

flutter_build_apk_staging: flutter_test
	flutter build apk --no-sound-null-safety --dart-define="ENV=staging"

flutter_build_apk_prod: flutter_test
	flutter build apk --no-sound-null-safety --dart-define="ENV=production"

flutter_build_bundle_dev: flutter_test
	flutter build appbundle --no-sound-null-safety --dart-define="ENV=development"

flutter_build_bundle_staging: flutter_test
	flutter build appbundle --no-sound-null-safety --dart-define="ENV=staging"

flutter_build_bundle_prod: flutter_test
	flutter build appbundle --no-sound-null-safety --dart-define="ENV=production"

flutter_test:
	flutter test --no-sound-null-safety