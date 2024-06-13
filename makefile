release:
	rm -rf ./dist/ || true
	mkdir ./dist/
	cargo bootimage --target ranger-x86_64.json --release
	cp ./target/ranger-x86_64/release/bootimage-ranger.bin ./dist/ranger.bin
debug:
	cargo bootimage --target ranger-x86_64.json
