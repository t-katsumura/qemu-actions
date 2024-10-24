.PHONY: amd64
amd64:
	GOARCH=amd64 go build
	qemu-x86_64 ./qemu-actions

.PHONY: 386
386:
	GOARCH=386 go build
	qemu-i386 ./qemu-actions

.PHONY: arm
arm:
	GOARCH=arm GOARM=v7 go build
	qemu-arm ./qemu-actions

.PHONY: arm64
arm64:
	GOARCH=arm64 go build
	qemu-aarch64 ./qemu-actions

.PHONY: ppc64
ppc64:
	GOARCH=ppc64 go build
	qemu-ppc64 ./qemu-actions

.PHONY: ppc64le
ppc64le:
	GOARCH=ppc64le go build
	qemu-ppc64le ./qemu-actions

.PHONY: riscv64
riscv64:
	GOARCH=riscv64 go build
	qemu-riscv64 ./qemu-actions

.PHONY: s390x
s390x:
	GOARCH=s390x go build
	qemu-s390x ./qemu-actions
