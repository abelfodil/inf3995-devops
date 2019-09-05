# INF3995 Docker

## Prerequisites

- Docker
- `binfmt-qemu-static` and `qemu-user-static-bin` for ARM emulation

## Build & push

- Create a `registry_url` file containing the url to your docker registry without any whitespaces.
Example: `registry.gitlab.com/your_username/your_repo` for Gitlab or `your_username` for Docker hub.
- Run `$ ./push-all.sh` script to build and push all images.
