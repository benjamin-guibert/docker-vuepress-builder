# VuePress Builder

Docker image for building a VuePress project.

## Table of Contents

- [Getting Started](#getting-started)
- [Release History](#release-history)
- [Versionning](#versionning)
- [Authors](#authors)
- [License](#license)

## Getting Started

These instructions will cover usage information for the Docker container.

### Prerequisities

In order to run this container you will need Docker installed.

- [Windows](https://docs.docker.com/windows/started)
- [OS X](https://docs.docker.com/mac/started/)
- [Linux](https://docs.docker.com/linux/started/)

### Usage

```shell
docker run bguibert/vuepress-builder:latest
```

#### Volumes

- `/usr/src/app`: Source files location.
- `/var/www`: Destination files location.
- `/etc/log/vuepress-builder` : Logs location (a `build.log` file is generated).

## Release History

Check the [`CHANGELOG.md`](CHANGELOG.md) file for the release history.

## Versionning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository][tags-link].

## Authors

- **[Benjamin Guibert](https://github.com/benjamin-guibert)** (<contact@bguibert.com>) : Initial work

See also the list of [contributors][contributors-link] who participated in this project.

## License

[![license-shield]](LICENSE)

This project is licensed under the MIT License - see the [`LICENSE`](LICENSE) file for details
