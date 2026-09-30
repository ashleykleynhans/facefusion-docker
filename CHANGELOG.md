# Changelog

All notable changes to this project are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project tracks the [FaceFusion](https://github.com/facefusion/facefusion)
release it packages.

## [3.9.1] - 2026-09-30

### Changed

- Bump FaceFusion to 3.9.1

## [3.9.0] - 2026-09-03

### Changed

- Bump FaceFusion to 3.9.0

## [3.8.3] - 2026-09-01

### Changed

- Bump FaceFusion to 3.8.3
- Bump runpodctl to v2.12.0

## [3.8.2] - 2026-08-10

### Changed

- Bump FaceFusion to 3.8.2

## [3.8.1] - 2026-08-05

### Changed

- Bump FaceFusion to 3.8.1

### Fixed

- Use the CUDA 12 ONNX Runtime build for FaceFusion 3.8.1

## [3.8.0] - 2026-07-31

### Changed

- Bump FaceFusion to 3.8.0
- Bump runpodctl to v2.8.0
- Add SBOM and provenance attestations and workflow permissions
- Bump GitHub Actions and build with `docker/bake-action@v6` including SBOM and provenance

### Fixed

- Revert `bake-action`, build with a manual `docker buildx bake` including attestations

## [3.7.1] - 2026-07-05

### Changed

- Bump FaceFusion to 3.7.1

## [3.7.0] - 2026-06-30

### Changed

- Bump FaceFusion to 3.7.0

### Fixed

- Use the positional onnxruntime argument for the FaceFusion 3.7.0 install

## [3.6.1] - 2026-04-20

### Changed

- Bump FaceFusion to 3.6.1

## [3.6.0] - 2026-03-16

### Changed

- Bump FaceFusion to 3.6.0
- Install Python from the deadsnakes PPA with a configurable version

### Fixed

- Use the correct Python version for `pip install` and fix `FROM` casing

## [3.5.4] - 2026-03-08

### Changed

- Bump FaceFusion to 3.5.4
- Bump runpodctl to v2.1.6

## [3.5.3.post1] - 2026-02-11

### Fixed

- Update nginx config to support newer Gradio versions

## [3.5.3] - 2026-02-11

### Changed

- Bump FaceFusion to 3.5.3
- Bump runpodctl to v1.14.15

## [3.5.2] - 2025-12-13

### Changed

- Bump FaceFusion

## [3.5.1] - 2025-11-19

### Changed

- Bump FaceFusion to 3.5.1
- Bump FaceFusion to 3.5.0.post1 after the 3.5.0 GitHub release was republished

## [3.5.0] - 2025-11-03

### Changed

- Bump FaceFusion to 3.5.0

## [3.4.2] - 2025-10-29

### Added

- Add GitHub workflow

### Changed

- Bump FaceFusion to 3.4.2

## [3.4.1] - 2025-09-11

### Changed

- Bump FaceFusion to 3.4.1

## [3.4.0] - 2025-09-08

### Changed

- Bump FaceFusion to 3.4.0

## [3.3.2] - 2025-07-10

### Changed

- Bump FaceFusion to 3.3.2

## [3.3.1] - 2025-07-08

### Changed

- Bump FaceFusion to 3.3.1

## [3.3.0] - 2025-06-22

### Changed

- Bump FaceFusion to 3.3.0

## [3.2.0] - 2025-05-14

### Added

- Add code-server
- Refactor installation into bash scripts

### Changed

- Bump base image to 1.7.0
- Bump CUDA to 12.4, Python to 3.12, Torch to 2.6.0, and xformers to 0.0.29.post3
- Bump FaceFusion to 3.2.0
- Limit execution threads to a maximum of 32

### Fixed

- Fix the FaceFusion install command and startup script
- Change `mv` back to `rsync`

## [2.6.1] - 2024-06-16

### Changed

- Bump FaceFusion to 2.6.1
- Improve syncing

### Fixed

- Use micromamba for checking Torch
- Fix bug in stat script

## [2.6.0] - 2024-05-19

### Changed

- Bump FaceFusion to 2.6.0
- Improve syncing

### Fixed

- Fix bug in stat script

## [2.5.3] - 2024-05-08

### Changed

- Bump FaceFusion to 2.5.3

## [2.5.2] - 2024-04-19

### Added

- Add FUNDING.yml

### Changed

- Bump FaceFusion to 2.5.2

## [2.5.1] - 2024-04-13

### Changed

- Bump FaceFusion to 2.5.1

## [2.5.0] - 2024-04-10

### Added

- Add badges

### Changed

- Bump FaceFusion to 2.5.0
- Switch the virtual environment to micromamba (conda)
- Remove syncing of the venv since there is no longer a venv

### Fixed

- Fix start script

## [2.4.1] - 2024-03-20

### Changed

- Bump FaceFusion to 2.4.1

## [2.4.0] - 2024-03-15

### Added

- Allow `JUPYTER_LAB_PASSWORD` to be set, still defaulting to no password

### Changed

- Bump FaceFusion to 2.4.0
- Update installation arguments

## [2.3.3] - 2024-03-13

### Changed

- Build the Docker image with `buildx bake`

### Fixed

- Fix starting the SSH service when no `PUBLIC_KEY` environment variable is set

## [2.3.2] - 2024-03-02

### Added

- Support a custom venv path

### Changed

- Remove the password for Jupyter
- Install Torch

### Fixed

- Fix venv and `template_version`

## [2.3.1] - 2024-02-21

### Added

- Add OhMyRunPod and RunPod File Uploader

## [2.3.9] - 2024-02-14

### Changed

- Bump FaceFusion to 2.3.0
- Bump runpodctl to 1.13.0
- Specify CUDA 11.8
- Change `ENTRYPOINT` to `CMD` so the start command can be overridden

## [2.2.3] - 2024-02-06

### Fixed

- Fix Jupyter
- Fix FaceFusion installation
- Start SSH and Jupyter while syncing is in progress
- Don't crash the start script on error

## [2.2.2] - 2024-02-03

### Added

- Add screen and tmux

### Changed

- Bump FaceFusion to 2.2.1

## [2.2.0] - 2024-01-20

### Changed

- Bump FaceFusion to 2.2.0
- Bump Torch to 2.1.2

## [2.1.3] - 2024-01-18

### Added

- Add FileZilla config

### Changed

- Bump FaceFusion to 2.1.3
- Update rsync commands

### Fixed

- Fix venv handling
- Fix syncing on network volumes

## [2.1.2] - 2023-12-26

### Changed

- Bump FaceFusion to 2.1.2

## [2.1.1] - 2023-12-22

### Added

- Add croc, rclone, and speedtest-cli

### Changed

- Bump FaceFusion to 2.1.1
- Allow hidden files to be shown in Jupyter
- Update SSH host keys

### Fixed

- Disable installation of speedtest-cli since it was causing issues

## [1.3.0] - 2023-10-09

### Changed

- Bump FaceFusion to 1.3.0
- Bump Torch to 2.1.0
- Set execution thread count to 8

### Fixed

- Fix installation

## [1.2.1] - 2023-10-05

### Changed

- Bump FaceFusion to the latest version

### Fixed

- Uninstall onnxruntime and install onnxruntime-gpu instead

## [1.1.0] - 2023-09-18

### Changed

- Bump FaceFusion to 1.1.0

## [1.0.0] - 2023-09-18

### Added

- Initial release
- Docker image with FaceFusion, Jupyter Lab, nginx, and RunPod support

[Unreleased]: https://github.com/ashleykleynhans/facefusion-docker/compare/3.9.0...HEAD
[3.9.0]: https://github.com/ashleykleynhans/facefusion-docker/compare/3.8.3...3.9.0
[3.8.3]: https://github.com/ashleykleynhans/facefusion-docker/compare/3.8.2...3.8.3
[3.8.2]: https://github.com/ashleykleynhans/facefusion-docker/compare/3.8.1...3.8.2
[3.8.1]: https://github.com/ashleykleynhans/facefusion-docker/compare/3.8.0...3.8.1
[3.8.0]: https://github.com/ashleykleynhans/facefusion-docker/compare/3.7.1...3.8.0
[3.7.1]: https://github.com/ashleykleynhans/facefusion-docker/compare/3.7.0...3.7.1
[3.7.0]: https://github.com/ashleykleynhans/facefusion-docker/compare/3.6.1...3.7.0
[3.6.1]: https://github.com/ashleykleynhans/facefusion-docker/compare/3.6.0...3.6.1
[3.6.0]: https://github.com/ashleykleynhans/facefusion-docker/compare/3.5.4...3.6.0
[3.5.4]: https://github.com/ashleykleynhans/facefusion-docker/compare/3.5.3.post1...3.5.4
[3.5.3.post1]: https://github.com/ashleykleynhans/facefusion-docker/compare/3.5.3...3.5.3.post1
[3.5.3]: https://github.com/ashleykleynhans/facefusion-docker/compare/3.5.2...3.5.3
[3.5.2]: https://github.com/ashleykleynhans/facefusion-docker/compare/3.5.1...3.5.2
[3.5.1]: https://github.com/ashleykleynhans/facefusion-docker/compare/3.5.0...3.5.1
[3.5.0]: https://github.com/ashleykleynhans/facefusion-docker/compare/3.4.2...3.5.0
[3.4.2]: https://github.com/ashleykleynhans/facefusion-docker/compare/3.4.1...3.4.2
[3.4.1]: https://github.com/ashleykleynhans/facefusion-docker/compare/3.4.0...3.4.1
[3.4.0]: https://github.com/ashleykleynhans/facefusion-docker/compare/3.3.2...3.4.0
[3.3.2]: https://github.com/ashleykleynhans/facefusion-docker/compare/3.3.1...3.3.2
[3.3.1]: https://github.com/ashleykleynhans/facefusion-docker/compare/3.3.0...3.3.1
[3.3.0]: https://github.com/ashleykleynhans/facefusion-docker/compare/3.2.0...3.3.0
[3.2.0]: https://github.com/ashleykleynhans/facefusion-docker/compare/2.6.1...3.2.0
[2.6.1]: https://github.com/ashleykleynhans/facefusion-docker/compare/2.6.0...2.6.1
[2.6.0]: https://github.com/ashleykleynhans/facefusion-docker/compare/2.5.3...2.6.0
[2.5.3]: https://github.com/ashleykleynhans/facefusion-docker/compare/2.5.2...2.5.3
[2.5.2]: https://github.com/ashleykleynhans/facefusion-docker/compare/2.5.1...2.5.2
[2.5.1]: https://github.com/ashleykleynhans/facefusion-docker/compare/2.5.0...2.5.1
[2.5.0]: https://github.com/ashleykleynhans/facefusion-docker/compare/2.4.1...2.5.0
[2.4.1]: https://github.com/ashleykleynhans/facefusion-docker/compare/2.4.0...2.4.1
[2.4.0]: https://github.com/ashleykleynhans/facefusion-docker/compare/2.3.3...2.4.0
[2.3.3]: https://github.com/ashleykleynhans/facefusion-docker/compare/2.3.2...2.3.3
[2.3.2]: https://github.com/ashleykleynhans/facefusion-docker/compare/2.3.1...2.3.2
[2.3.1]: https://github.com/ashleykleynhans/facefusion-docker/compare/2.3.9...2.3.1
[2.3.9]: https://github.com/ashleykleynhans/facefusion-docker/compare/2.2.3...2.3.9
[2.2.3]: https://github.com/ashleykleynhans/facefusion-docker/compare/2.2.2...2.2.3
[2.2.2]: https://github.com/ashleykleynhans/facefusion-docker/compare/2.2.0...2.2.2
[2.2.0]: https://github.com/ashleykleynhans/facefusion-docker/compare/2.1.3...2.2.0
[2.1.3]: https://github.com/ashleykleynhans/facefusion-docker/compare/2.1.2...2.1.3
[2.1.2]: https://github.com/ashleykleynhans/facefusion-docker/compare/2.1.1...2.1.2
[2.1.1]: https://github.com/ashleykleynhans/facefusion-docker/compare/1.3.0...2.1.1
[1.3.0]: https://github.com/ashleykleynhans/facefusion-docker/compare/1.2.1...1.3.0
[1.2.1]: https://github.com/ashleykleynhans/facefusion-docker/compare/1.1.0...1.2.1
[1.1.0]: https://github.com/ashleykleynhans/facefusion-docker/compare/1.0.0...1.1.0
[1.0.0]: https://github.com/ashleykleynhans/facefusion-docker/releases/tag/1.0.0
