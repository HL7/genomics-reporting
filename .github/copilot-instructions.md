# Copilot Instructions for genomics-reporting

Purpose: Help AI coding agents work effectively on the Clinical Genomics Reporting FHIR Implementation Guide (IG) and integrate with a local terminology server.

## What This Repo Is
- Source for the HL7 CG “Genomics Reporting” IG (SUSHI/IG Publisher driven).
- Authoritative FSH and IG assets live under `input/`; generated output is in `output/`.
- Pairs with the local genomics terminology server in `../fhir-genomicsterminology` for fast, accurate terminology validation.

## Daily Workflows
  - `./_updatePublisher.sh` (or `.bat` on Windows)
  - `./_build.sh` (or `./_build.bat`)
  - `./build-local-tx.sh` (uses `http://localhost:8080/fhir`)
  - Pre-req: local server running (see sibling repo’s `fhir-terminology-server/README.md`).
- Preflight check (verify local TX is ready):
  - `./test-local-tx.sh`
  - Open `output/index.html` and `output/qa.html`.

- Source of truth lives in `input/`:
 - Quick preflight (optional but recommended):
   - `./test-local-tx.sh` to check `/health`, `/fhir/metadata`, and a sample `$validate-code`.
  - FSH: `input/fsh/**` (edit these, not `fsh-generated/`).
  - Images/pages/includes: `input/images*`, `input/pages`, `input/includes`.
- Generated artifacts:
  - `fsh-generated/` and `output/` are build outputs; do not hand-edit.
- Terminology server selection:
  - Local: use `./build-local-tx.sh` or pass `-tx http://localhost:8080/fhir` to publisher.
  - Default/remote: omit `-tx` (Publisher uses `tx.fhir.org`).

## Local Terminology Server Integration
- Why: Validates genomics CodeSystems locally (HGNC, HPO, SO, PharmVar, Cytoband) and API-based (RefSeq, ClinVar); delegates standards (e.g., LOINC) via fallback when enabled.
- Start server (in sibling repo):
  - `cd ../fhir-genomicsterminology/fhir-terminology-server && make deploy`
- Build IG against local server:
  - `./build-local-tx.sh` (clears `input-cache/txcache`, then runs Publisher with `-tx http://localhost:8080/fhir`).
- Troubleshooting:
  - Check health: `curl http://localhost:8080/health`
  - Watch validation traffic: `docker compose -f ../fhir-genomicsterminology/fhir-terminology-server/docker-compose.yml logs -f genomics-terminology-server`

## Key Files & Directories
- IG entry points: `sushi-config.yaml`, `ig.ini`.
- FSH: `input/fsh/**` (profiles, extensions, valuesets, examples).
- Build helpers: `_build.sh`, `_updatePublisher.sh`, `build-local-tx.sh`.
- Caches: `input-cache/` (Publisher, terminology cache).
- Outputs: `fsh-generated/`, `output/`.

## Tips & Gotchas
- Local vs remote terminology:
  - Local runs are faster for genomics; fallback to `tx.fhir.org` may still occur for standard code systems.
- Clearing cache:
  - `build-local-tx.sh` wipes `input-cache/txcache` to force fresh validation; omit if you want cached behavior.
- Determinism:
  - For reproducible comparisons, build once with local `-tx` and once standard, then diff `output/qa.html`.
- Missing scripts:
  - Some docs reference helper scripts that may not exist in this repo; prefer the provided `build-local-tx.sh` and standard `_build.sh`.
