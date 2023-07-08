build_runner:
	flutter pub run build_runner build --delete-conflicting-outputs

icon_gen:
	flutter pub pub run flutter_launcher_icons

##########################################################################

stg.ios:
	flutter build ipa --release --dart-define-from-file=flavors/stg.json --export-options-plist="ios/ExportOptions/ExportOptions.stg.plist"

release.ios:
	flutter build ipa --release --dart-define-from-file=flavors/prd.json --export-options-plist="ios/ExportOptions/ExportOptions.plist"

release.ios.local:
	flutter build ipa --release --dart-define-from-file=flavors/prd.json --export-options-plist="ios/ExportOptions/ExportOptions.local.plist"

release.android:
	flutter build appbundle --dart-define-from-file=flavors/prd.json
