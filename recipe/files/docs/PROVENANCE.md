# Provenance — memcached (`1.6.45-CE-ubuntu24.04-r6`)

Every item below is copied from a record in this archive; the record is named in brackets.

## Source

- Upstream repository: https://github.com/memcached/memcached
- Revision built: `1.6.45` (commit `2d51e364799bc9698bd4b11728ea978cea12da6e`)
- Source tree: `cc6ca5f8604f9aa54acb9b32dfdcdcadd0413aa8b92c95f9fdfec3b1ab6349b1` over 327 files [`docs/provenance/SOURCE_TREE_HASH.json`]
- Community Edition only: enterprise code is removed or refused before the build (CE audit at acquire).

## Build

- Method: `source-rebuild-c`; base image `scratch + a chiselled Ubuntu 24.04 runtime (vendored/chisel/slices.txt, packages.tsv)`
- Compiled with `--network=none` from vendored source, dependencies and base images; BuildKit pinned to `moby/buildkit:v0.31.2` (shipped in `toolchain/`).
- SOURCE_DATE_EPOCH: `1795161105` [`SOURCE_DATE_EPOCH.txt`]
- Frozen inputs: [`docs/provenance/FREEZE_MANIFEST.json`], build recipe: [`docs/provenance/BUILD_RECIPE.json`].

## Output

- Published image: `readystack/memcached:1.6.45-CE-ubuntu24.04-r6` — index digest `sha256:0c430debcf855649752eded5456f7b3a68f7905d4d81a93b44fe2fe118f6b7da` [`docs/provenance/LOCKED_DIGEST.txt`]
- linux/amd64 image digest `sha256:58c67345f1bae3660c5b9b93872a8eb93b4bf4bacbc1da5f531aefc0626b00ee` — reproduced from this archive before publishing [`docs/provenance/REPRO_VERIFICATION.json`].

## Attestations and signature

- SBOM + SLSA provenance attached to the image: attached: an SPDX SBOM and SLSA v1 provenance [`docs/provenance/SCOUT_VERDICT.json`]
- cosign signature by the ReadyStack release key: verified before publishing. Check it: `cosign verify --key https://readystack.dev/keys/cosign.pub readystack/memcached:1.6.45-CE-ubuntu24.04-r6`

## Pinned inputs, and why

- 21 pinned inputs, each with where it came from, why this one, how it was checked and when it was decided: `docs/PINS.md` [`docs/provenance/PINS.json`] (upstream source 2, base and build images 3, image digests 2, dependency versions readystack sets 1, pins in the kit's dockerfiles 5, readystack's build engine 6, dependencies upstream chose 2).

## Build trail

- How this release passed through the ReadyStack harness, record by record (every chain, drive, stage, review round, defect and check, each naming the record it is copied from): `ReadyStack-memcached-1.6.45-CE-ubuntu24.04-r6.trail.json`, published beside this archive and signed with the release key (`ReadyStack-memcached-1.6.45-CE-ubuntu24.04-r6.trail.json.sigstore`), and readable at https://readystack.dev/products/memcached/trail/1.6.45-CE-ubuntu24.04-r6.

