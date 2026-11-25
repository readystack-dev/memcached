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

`recipe/` holds the kit's recipe files (Dockerfiles, build scripts, pins) as published at https://readystack.dev/products/memcached/recipe. The complete kit is the release download. Each release is a tag here.

— ReadyStack · https://readystack.dev
