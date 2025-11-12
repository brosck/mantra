CC = go
build_args = CGO_ENABLED=0
build_folder = build

init:
	mkdir $(build_folder)

all: clean init linux macos windows
	@echo "Build done"

linux: clean init linux-amd64 linux-i386 linux-arm
	@echo "Build Linux done"

linux-amd64:
	$(build_args) GOOS=linux GOARCH=amd64 $(CC) build -o $(build_folder)/mantra-amd64-linux
	@echo "Build Linux amd64 done"

linux-i386:
	$(build_args) GOOS=linux GOARCH=386 $(CC) build -o $(build_folder)/mantra-i386-linux
	@echo "Build Linux i386 done"

linux-arm:
	$(build_args) GOOS=linux GOARCH=arm64 $(CC) build -o $(build_folder)/mantra-arm64-linux
	$(build_args) GOOS=linux GOARCH=arm GOARM=5 $(CC) build -o $(build_folder)/mantra-armv5-linux
	$(build_args) GOOS=linux GOARCH=arm GOARM=6 $(CC) build -o $(build_folder)/mantra-armv6-linux
	$(build_args) GOOS=linux GOARCH=arm GOARM=7 $(CC) build -o $(build_folder)/mantra-armv7-linux
	@echo "Build Linux arm done"

macos:
	$(build_args) GOOS=darwin GOARCH=amd64 $(CC) build -o $(build_folder)/mantra-amd64-darwin
	$(build_args) GOOS=darwin GOARCH=arm64 $(CC) build -o $(build_folder)/mantra-arm64-darwin
	@echo "Build macos done"


windows: clean init
	$(build_args) GOOS=windows GOARCH=386 $(CC) build -o $(build_folder)/mantra-i386-windows.exe
	$(build_args) GOOS=windows GOARCH=amd64 $(CC) build -o $(build_folder)/mantra-amd64-windows.exe
	@echo "Build Windows done"


clean:
	[ -d $(build_folder) ] && rm -rf $(build_folder) || echo "Repo allready clean"
