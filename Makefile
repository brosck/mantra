CC = go
export CGO_ENABLED := 0

all:
	mkdir -p build

	GOOS=linux   GOARCH=amd64 $(CC) build -o build/mantra-amd64-linux   .
	GOOS=linux   GOARCH=386   $(CC) build -o build/mantra-i386-linux    .
	GOOS=linux   GOARCH=arm64 $(CC) build -o build/mantra-arm64-linux   .
	GOOS=linux   GOARCH=arm   GOARM=5 $(CC) build -o build/mantra-armv5-linux .
	GOOS=linux   GOARCH=arm   GOARM=6 $(CC) build -o build/mantra-armv6-linux .
	GOOS=linux   GOARCH=arm   GOARM=7 $(CC) build -o build/mantra-armv7-linux .
	GOOS=darwin  GOARCH=amd64 $(CC) build -o build/mantra-amd64-darwin  .
	GOOS=darwin  GOARCH=arm64 $(CC) build -o build/mantra-arm64-darwin  .
	GOOS=windows GOARCH=386   $(CC) build -o build/mantra-i386-windows.exe   .
	GOOS=windows GOARCH=amd64 $(CC) build -o build/mantra-amd64-windows.exe  .

clean:
	rm -rf build
