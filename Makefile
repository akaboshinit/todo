dev:
	flutter run --debug --dart-define=FLAVOR=dev

stg.ios:
	flutter build ipa --release --dart-define=FLAVOR=stg --export-options-plist="ios/ExportOptions/ExportOptions.stg.plist"

release.ios:
	flutter build ipa --release --dart-define=FLAVOR=prd --export-options-plist="ios/ExportOptions/ExportOptions.plist"

release.ios.local:
	flutter build ipa --release --dart-define=FLAVOR=prd --export-options-plist="ios/ExportOptions/ExportOptions.local.plist"

release.android:
	flutter build appbundle --dart-define=FLAVOR=prd

icon_gen:
	flutter pub pub run flutter_launcher_icons

build_runner:
	flutter pub run build_runner build --delete-conflicting-outputs
