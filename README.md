# INF3995 Docker

## Prerequisites

- Docker
- `binfmt-qemu-static` and `qemu-user-static-bin` for ARM emulation

## Build & push

- Create a `registry_url` file containing the url to your docker registry without any whitespaces.
Example: `registry.gitlab.com/your_username/your_repo` for Gitlab or `your_username` for Docker hub.
- Run `$ ./push-all.sh` script to build and push all images.

## Using images

### For continuous integration (Gitlab CI)

When using Gitlab CI, simply put `image: your_registry_url/inf3995-ci` at the beginning of your `.yml` file.

### For "cross-compilation"

To build ARM32 binaries on your x86_64 machine and at the same time link to system libraries (such as `pthread`), execute:

- `$ docker pull your_registry_url/inf3995-arm-builder`

- `$ docker run your_registry_url/inf3995-arm-builder -v /path/to/your/git/repo:/projet3 /projet3/path/to/your/compilation/script`
