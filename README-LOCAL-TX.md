# Testing this IG with Your Local Terminology Server

## Quick Start

Here's how to use the Genomics Terminology Server locally with this IG:

### 1. Verify Server is Ready
```bash
./test-local-tx.sh
```

Expected output:
```
✓ Server is ready for IG Publisher!
```

### 2. Build IG with Local Server

```bash
./build-local-tx.sh
```

This will:
- ✅ Check your local server is running
- ✅ Build the IG using `http://localhost:8080/fhir` for terminology validation
- ✅ Generate output in `./output/`

### 3. View Results

```bash
open output/index.html        # macOS
# or
xdg-open output/index.html    # Linux
```

## What Just Happened?

The IG Publisher will now use **YOUR local server** to validate terminology.

### Check What's Supported

To see all supported CodeSystems and ValueSets, query the TerminologyCapabilities:

```bash
# Get full TerminologyCapabilities
curl -s "http://localhost:8080/fhir/metadata?mode=terminology" | jq .

# List just the CodeSystem URLs
curl -s "http://localhost:8080/fhir/metadata?mode=terminology" | jq -r '.codeSystem[].uri'

# Count supported systems
curl -s "http://localhost:8080/fhir/metadata?mode=terminology" | jq '.codeSystem | length'
```

Beyond the resources in the Metadata, the server supports performing 'fallback' to any unsupported CodeSystem to a Fallback Tx Server (by default tx.fhir.org). See the 'fhir-terminology-server' for more details.

## Helper Files

| File | Purpose |
|------|---------|
| `build-local-tx.sh` | Build IG with your local terminology server |
| `test-local-tx.sh` | Pre-flight check for server readiness |
| `README-LOCAL-TX.md` | This quick reference |

## Monitoring Build

### Watch Server Activity

In a separate terminal:
```bash
cd ../fhir-genomicsterminology/fhir-terminology-server
docker compose logs -f genomics-terminology-server
```

You'll see validation requests like:
```
CodeSystem $validate-code: url=http://www.genenames.org, code=HGNC:1100
CodeSystem $lookup: system=http://www.sequenceontology.org, code=SO:0001583
```

### Check Build Quality

After building, review:
```bash
open output/qa.html
```

## Troubleshooting

### Server Not Running

```bash
cd ../fhir-genomicsterminology/fhir-terminology-server
make deploy
sleep 10  # Wait for startup
```

### Build Fails

1. Check server health:
```bash
curl http://localhost:8080/health | jq
```

2. Run pre-flight tests:
```bash
./test-local-tx.sh
```

3. Review QA report:
```bash
open output/qa.html
```

### Compare with Standard Build

```bash
# Build with local server
./build-local-tx.sh
mv output output-local

# Build with tx.fhir.org
./_build.sh build
mv output output-standard

# Compare
diff output-local/qa.html output-standard/qa.html
```

## Advanced Usage

### Custom Terminology Server URL

```bash
java -jar input-cache/publisher.jar \
     -ig . \
     -tx https://your-server.example.org/fhir
```

### Build Without Sushi

```bash
java -jar input-cache/publisher.jar \
     -ig . \
     -tx http://localhost:8080/fhir \
     -no-sushi
```

### Offline Build

```bash
java -jar input-cache/publisher.jar \
     -ig . \
     -tx n/a
```

## Testing Specific Codes

Test codes directly before building:

```bash
# HGNC Gene
curl "http://localhost:8080/fhir/CodeSystem/\$validate-code?url=http://www.genenames.org&code=HGNC:1100"

# HPO Phenotype
curl "http://localhost:8080/fhir/CodeSystem/\$validate-code?url=http://human-phenotype-ontology.org&code=HP:0001166"

# Sequence Ontology
curl "http://localhost:8080/fhir/CodeSystem/\$validate-code?url=http://www.sequenceontology.org&code=SO:0001583"

# PharmVar
curl "http://localhost:8080/fhir/CodeSystem/\$validate-code?url=http://www.pharmvar.org&code=PV00126"

# RefSeq (live API)
curl "http://localhost:8080/fhir/CodeSystem/\$lookup?system=http://www.ncbi.nlm.nih.gov/refseq&code=NM_000059"
```

## Support

- Server documentation: `../fhir-genomicsterminology/fhir-terminology-server/README.md`
- Server operations guide: `../fhir-genomicsterminology/docs/docker-deployment-guide.md`
- Test scripts: `../fhir-genomicsterminology/fhir-terminology-server/tx-tests/`
- Server health: http://localhost:8080/health
- Server metadata: http://localhost:8080/fhir/metadata
