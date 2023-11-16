CGO_ENABLED=0

all: yaml_patch_linux_amd64 yaml_patch_windows_amd64 yaml_patch_darwin_amd64 yaml_patch_darwin_arm64 yaml_patch_linux yaml_patch_darwin yaml_patch.exe

yaml_patch_darwin:
	GOOS=darwin GOARCH=amd64 go build -o yaml_patch_darwin cmd/yaml-patch/*.go

yaml_patch_darwin_amd64:
	GOOS=darwin GOARCH=amd64 go build -o yaml_patch_darwin_amd64 cmd/yaml-patch/*.go

yaml_patch_darwin_arm64:
	GOOS=darwin GOARCH=arm64 go build -o yaml_patch_darwin_arm64 cmd/yaml-patch/*.go

yaml_patch_linux:
	GOOS=linux GOARCH=amd64 go build -o yaml_patch_linux cmd/yaml-patch/*.go

yaml_patch_linux_amd64:
	GOOS=linux GOARCH=amd64 go build -o yaml_patch_linux_amd64 cmd/yaml-patch/*.go

yaml_patch_windows_amd64:
	GOOS=windows GOARCH=amd64 go build -o yaml_patch_windows_amd64 cmd/yaml-patch/*.go

yaml_patch.exe:
	GOOS=windows GOARCH=amd64 go build -o yaml_patch.exe cmd/yaml-patch/*.go


clean:
	rm yaml_patch_darwin
	rm yaml_patch_darwin_amd64
	rm yaml_patch_darwin_arm64
	rm yaml_patch_linux
	rm yaml_patch_linux_amd64
	rm yaml_patch_windows_amd64
	rm yaml_patch.exe
