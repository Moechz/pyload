# Changelog

All notable user-visible changes to the pyLoad TOS application package.

## 0.5.0-1 — 2026-11-12

### Added
- First release. pyLoad (`linuxserver/pyload-ng:0.5.0`, Docker Hub official image, unmodified)
  packaged as a TOS 7 Docker application, published on port 8101 and running
  as a non-root user (1000:1000).
- Persistent data is kept under `/Volume1/DockerAppData/pyloaddocker/`.
