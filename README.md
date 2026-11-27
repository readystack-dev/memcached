[![ReadyStack](https://readystack.dev/logo.svg)](https://readystack.dev)

**Stable, Open-source Releases, Automated** · [readystack.dev](https://readystack.dev)

[![Docker Hub](https://img.shields.io/badge/Docker%20Hub-readystack%2Fmemcached-2496ED?logo=docker&logoColor=white)](https://hub.docker.com/r/readystack/memcached) [![Docker pulls](https://img.shields.io/docker/pulls/readystack/memcached)](https://hub.docker.com/r/readystack/memcached) [![Grade at release](https://img.shields.io/badge/grade%20at%20release-A%20%2894%25%29-2ea44f)](https://readystack.dev/products/memcached) [![Signed: cosign](https://img.shields.io/badge/signed-cosign-2ea44f)](https://readystack.dev/keys/cosign.pub) ![SBOM: SPDX](https://img.shields.io/badge/SBOM-SPDX-2ea44f) ![Provenance: SLSA v1](https://img.shields.io/badge/provenance-SLSA%20v1-2ea44f) ![Offline rebuild: verified](https://img.shields.io/badge/offline%20rebuild-verified-2ea44f)

# memcached: ReadyStack build kit

The offline build kit for the Docker image `readystack/memcached:1.6.45-CE-ubuntu24.04-r6`. It holds what the image is built from (upstream source, base images, toolchain, pinned dependencies) and the documents, so the image can be rebuilt with no network access (`docker build --network=none`).

- Release: [1.6.45-CE-ubuntu24.04-r6](https://github.com/readystack-dev/memcached/releases/tag/1.6.45-CE-ubuntu24.04-r6)
- Image: [`docker.io/readystack/memcached:1.6.45-CE-ubuntu24.04-r6`](https://hub.docker.com/r/readystack/memcached/tags), manifest digest `sha256:58c67345f1bae3660c5b9b93872a8eb93b4bf4bacbc1da5f531aefc0626b00ee`
- Product page: https://readystack.dev/products/memcached
- Source and build recipe: https://readystack.dev/products/memcached/recipe
- Build trail: https://readystack.dev/products/memcached/trail/1.6.45-CE-ubuntu24.04-r6
- Defects: this repository's Issues (defects recorded from 25 November 2026 on) and https://readystack.dev/defects.html?product=memcached

## The image

Single container, one memcached process compiled from source, in the foreground as PID 1 under the non-root user memcache. An in-memory key-value cache: items live in RAM only, nothing is written to disk, and a restart or re-create empties it. No database, no sidecar, no web UI, no HTTP API.

## This release

- Docker Scout policy grade at release: **A** (94%), graded 2026-11-20 with `docker scout policy` (CLI 1.26.0, docker-default configuration).
  - Docker Scout counts 11 packages with copyleft licences (GPL, LGPL, MPL), all of them operating-system packages (it counts only packages whose licence it can read; the SBOM lists every component).
- Signed with ReadyStack's release key (fingerprint `04daa92344a52dbc`): https://readystack.dev/keys/cosign.pub.
- Runs as a non-root user (`memcache`).
- Attestations on the image: an SPDX SBOM and SLSA provenance v1.
- Rebuilt from this kit with network egress blocked on 2026-11-20; the rebuilt image digest is the published one.
- Base: Ubuntu 24.04.

The current grade, measured again every day, is on https://readystack.dev/products/memcached.

memcached is distributed under its upstream licence (BSD-3-Clause); the kit contains upstream's source under that licence, and each vendored component under its own.

## Download

From the [1.6.45-CE-ubuntu24.04-r6 release](https://github.com/readystack-dev/memcached/releases/tag/1.6.45-CE-ubuntu24.04-r6): `ReadyStack-memcached-1.6.45-CE-ubuntu24.04-r6.tar.gz` (520.5 MB), SHA-256 `7de36ce73e101e37a8bd09e4093f9607448c9b454f960c99219a1268710e6b38`.

```sh
sha256sum --check --ignore-missing SHA256SUMS
```

## Verify and rebuild

The rebuild statement is signed with the ReadyStack release key. Check the signature before you rely on it:

```sh
cosign verify-blob --key https://readystack.dev/keys/cosign.pub \
  --bundle ReadyStack-memcached-1.6.45-CE-ubuntu24.04-r6.rebuild.json.sigstore ReadyStack-memcached-1.6.45-CE-ubuntu24.04-r6.rebuild.json
```

Unpack with `-p` so file modes are kept, then follow the kit's own README.md and docs/REBUILD.md:

```sh
tar -xpzf ReadyStack-memcached-1.6.45-CE-ubuntu24.04-r6.tar.gz
cd 1.6.45-CE-ubuntu24.04-r6
less README.md docs/REBUILD.md
```

The build trail (`ReadyStack-memcached-1.6.45-CE-ubuntu24.04-r6.trail.json`, signed the same way, and its Markdown copy) records how this release was built and checked.

## This repository

`recipe/` holds the kit's recipe files (Dockerfiles, build scripts, pins) as published at https://readystack.dev/products/memcached/recipe. The complete kit is the release download. Each release is a tag here. How to report a vulnerability: [SECURITY.md](SECURITY.md).

## About ReadyStack

**Stable, Open-source Releases, Automated.** ReadyStack releases popular open-source apps every week with every available critical and high security fix applied, plus full documentation, reference data, tests and a build recipe that recreates each release bit-for-bit. Each release is rebuilt from its pinned inputs with the network off, checked against its published digest, signed, and scanned and graded again every day. The images and build kits are free, and ReadyStack is soon to be a nonprofit.

[readystack.dev](https://readystack.dev) · [All products](https://readystack.dev/products.html) · [Build kits on GitHub](https://github.com/readystack-dev) · [Defect log](https://readystack.dev/defects.html) · contact@readystack.dev

— ReadyStack · https://readystack.dev
