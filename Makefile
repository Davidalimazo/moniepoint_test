get:
	fvm flutter pub get
clean:
	fvm flutter clean
installpod:
	pod install
removepod:
	rm -rf Pods Podfile.lock
lcon:
	fvm flutter pub run flutter_launcher_icons
run-r:
	fvm flutter run --release --dart-define=app.env=dev
run-d:
	fvm flutter run --dart-define=app.env=dev
run-t:
	fvm flutter run --debug --dart-define=app.env=test
run-p:
	fvm flutter run --dart-define=app.env=prod
brn:
	fvm flutter pub run build_runner build -—delete-conflicting-outputs
appName:
	rename getAppName --targets android,ios 
setName:
	rename setAppName --targets android,ios --value "EST"
bundleId:
	rename getBundleId --targets android,ios 
setBundleId:
	rename setBundleId --targets android,ios --value "com.moniepoint.test"
configure:
	flutterfire configure
icon:
	flutter pub run flutter_launcher_icons:main
apk:
	flutter build apk --obfuscate --build-name=1.0.0 --build-number=1 --split-debug-info=./debug_info --release --dart-define=app.dev=dev
keypair:
	keytool -genkeypair -v -keystore ost.jks -keyalg RSA -keysize 2048 -validity 10000 -alias ost
debug:
	/Users/alimazoyadavid/Documents/dev/mobile_projects/flutter_apps/moniepoint_test_app/build/app/outputs/apk/debug
fingerprint:
	keytool -printcert -jarfile app-debug.apk
aab:
	fvm flutter build appbundle --obfuscate --build-name=1.0.0 --build-number=1 --split-debug-info=./debug_info --release --dart-define=app.dev=dev 
fvm-i:
	dart pub global activate fvm
rename-i:
	dart pub global activate rename
fire-i:
	dart pub global activate flutterfire_cli
gen-i:
	dart pub global activate flutter_gen
gen:
	dart run build_runner build


