.PHONY: build full-build dep run
full-build:
	fvm flutter pub run build_runner build --delete-conflicting-outputs
build:
	fvm flutter pub run build_runner build
dep:
	fvm flutter pub get
run:
	fvm flutter run --debug