# Github Actions to Emulate CPU Architecture using QEMU

## Sample application

Sample application is written in [Go](https://go.dev/).

It only output GOOS and GOARCH. See [main.go](main.go).

Binaries for target architecture is built by cross compile using [GOARCH](https://tip.golang.org/wiki/WindowsCrossCompiling).

```go
import "runtime"

func main() {
 println("GOOS :", runtime.GOOS)
 println("GOARCH :", runtime.GOARCH)
}
```

## Action

Sample applications are run on Github runners as follows.

**Installing [QEMU](https://www.qemu.org/docs/master/index.html).**

Here, qemu-user which described at [User Mode Emulation](https://qemu-project.gitlab.io/qemu/user/index.html) is used.

```bash
# Add repository to avoid much older qemu.
sudo add-apt-repository -y ppa:canonical-server/server-backports

sudo apt -y update
sudo apt -y install qemu-user
```

**Running applications (Makefile is used).**

See the [QEMU User space emulator](https://www.qemu.org/docs/master/user/main.html) for available architectures.

```bash
GOARCH=arm GOARM=v7 go build
qemu-arm ./qemu-actions
```
