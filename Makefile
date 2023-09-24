default: test

test:
	cd example && flutter test integration_test/app_test.dart

upgrade: upgrade-libs upgrade-flatbuffers

upgrade-libs:
	./scripts/upgrade_bridge_libs.sh

upgrade-flatbuffers:
	./scripts/upgrade_bridge_protobuf.sh

example-web:
	docker build -t flutter-custom-libp2p-web -f example/Dockerfile .