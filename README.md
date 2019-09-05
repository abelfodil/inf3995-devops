# INF3995 Docker

## Prerequisites

- Install `docker`
- Enable docker [experimental](https://github.com/docker/cli/issues/947#issue-305437486) [CLI](https://docs.docker.com/engine/reference/commandline/dockerd/#description) support

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

- `$ docker run -v /path/to/your/git/repo:/projet3 your_registry_url/inf3995-arm-builder /bin/bash /projet3/path/to/your/compilation/script`
