# memcached 1.6.45 — ReadyStack release `1.6.45-CE-ubuntu24.04-r6`

Generated 2026-11-20 from this release's build records and strategy. Statements that come from a single record name it in brackets; the others come from this release's strategy and build log.

## Release

- **Image:** `readystack/memcached:1.6.45-CE-ubuntu24.04-r6` (linux/amd64). Index digest `sha256:0c430debcf855649752eded5456f7b3a68f7905d4d81a93b44fe2fe118f6b7da` [`docs/provenance/LOCKED_DIGEST.txt`].
- **Image manifest digest:** `sha256:58c67345f1bae3660c5b9b93872a8eb93b4bf4bacbc1da5f531aefc0626b00ee` [`TARGET_DIGEST.txt`].
- **Upstream:** memcached 1.6.45 built from source at `1.6.45` of https://github.com/memcached/memcached — upstream notes: https://github.com/memcached/memcached/releases/tag/1.6.45 [`docs/provenance/BUILD_RECIPE.json`].
- **Base image:** none (`FROM scratch`): a chiselled Ubuntu 24.04 runtime, the files Canonical's chisel cut from Ubuntu's own packages (`vendored/chisel/slices.txt`, `vendored/chisel/packages.tsv`); runtime user `memcache`.
- **Build:** `source-rebuild-c`, compiled offline with `--network=none`.
- **Supersedes:** ReadyStack release `1.6.45-CE-ubuntu24.04-r5`.

## What changed in this release

- Upstream version unchanged (1.6.45); ReadyStack rebuild.
- memcached 1.6.45 is unchanged from the release this supersedes (1.6.45-CE-ubuntu24.04-r5); this release rebuilds it. Changes: the image is rebuilt on the current ubuntu:24.04 image (sha256:9c7f200c07e3…), which its maintainers updated after 1.6.45-CE-ubuntu24.04-r5 was built on sha256:2198e4c65076…. Settings, ports and data volumes are those of 1.6.45-CE-ubuntu24.04-r5: replace the container with this image on the same volumes.

## Security status at release (measured 2026-11-20)

- **Docker Scout:** 0 fixable critical/high vulnerabilities; runs as `memcache` (non-root); SBOM + provenance attestations present (SPDX SBOM + SLSA v1) [`docs/provenance/SCOUT_VERDICT.json`].
- **OSV cross-check:** no fixable critical/high vulnerability beyond Docker Scout's findings.
- **Signature:** cosign signature verified by ReadyStack's release gate before publishing; check it yourself with `cosign verify --key https://readystack.dev/keys/cosign.pub readystack/memcached:1.6.45-CE-ubuntu24.04-r6` (signatures are recorded in the public Sigstore transparency log).
- **ReadyStack release check at release:** passed (ReadyStack's own test, not a Docker Scout grade). Vulnerabilities are disclosed every day and the image never changes, so it is re-checked daily, beside Docker Scout's own dated grade, at https://readystack.dev/queue.
- **Before exposing this service:** memcached has no authentication by default: any client that reaches port 11211 can read, change and delete every item. Publish the port on the loopback address or a private network only, or start memcached with an ASCII authentication file (-Y) or TLS (-Z).
- **Before exposing this service:** UDP is off (-U 0), as upstream's default since 1.5.6: the UDP protocol was used for traffic amplification attacks. Do not turn it on for a server other networks can reach.

## Reproducibility

Rebuilds offline from this archive to the identical image digest `sha256:58c67345f1bae3660c5b9b93872a8eb93b4bf4bacbc1da5f531aefc0626b00ee`: run `./BUILD_OFFLINE.sh`, then `./VERIFY_OFFLINE.sh` (add `--online` to confirm the Docker Hub tag holds the same digest). Before publishing, ReadyStack rebuilt the kit with `./BUILD_OFFLINE.sh` and compared the result with the published digest [`docs/provenance/REPRO_VERIFICATION.json`], then ran `./BUILD_OFFLINE.sh` and `./VERIFY_OFFLINE.sh` from this archive (without `--online`).

## Validation

- 9 of 9 use cases passed (9 authored) against the running image [`docs/validation/test-results.json`].

## Known issues

- **high** (upstream): Unauthenticated access by default [`RSD-memcached-f30357486a`]

## Verify this archive

```
sha256sum -c CHECKSUMS.sha256
./BUILD_OFFLINE.sh && ./VERIFY_OFFLINE.sh --online
cosign verify --key https://readystack.dev/keys/cosign.pub readystack/memcached:1.6.45-CE-ubuntu24.04-r6
```

ReadyStack records every signature in the public Sigstore transparency log (Rekor), so the command needs no extra flags.

