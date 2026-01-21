#!/usr/bin/env bash

# Simple preflight check for the local genomics terminology server
# Verifies health, metadata, and a basic CodeSystem validation

set -euo pipefail

LOCAL_TX_SERVER="${LOCAL_TX_SERVER:-http://localhost:8080/fhir}"
HEALTH_URL="${HEALTH_URL:-http://localhost:8080/health}"

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

echo -e "${YELLOW}=========================================${NC}"
echo -e "${YELLOW}Preflight: Local Terminology Server Check${NC}"
echo -e "${YELLOW}Server: ${LOCAL_TX_SERVER}${NC}"
echo -e "${YELLOW}=========================================${NC}"

fail() {
  echo -e "${RED}✗ ${1}${NC}" >&2
  exit 1
}

pass() {
  echo -e "${GREEN}✓ ${1}${NC}"
}

echo -e "${YELLOW}- Checking health endpoint...${NC}"
HEALTH_BODY=$(curl -s -f "${HEALTH_URL}" || true)
[[ -n "${HEALTH_BODY}" ]] || fail "Health endpoint not reachable at ${HEALTH_URL}"
echo "${HEALTH_BODY}" | grep -q '"status"\s*:\s*"UP"' || fail "Health status is not UP"
pass "Health is UP (${HEALTH_URL})"

echo -e "${YELLOW}- Checking FHIR metadata...${NC}"
curl -s -f "${LOCAL_TX_SERVER}/metadata" > /dev/null || fail "FHIR metadata endpoint not reachable at ${LOCAL_TX_SERVER}/metadata"
pass "FHIR metadata reachable (${LOCAL_TX_SERVER}/metadata)"

echo -e "${YELLOW}- Validating a known local CodeSystem code (SO)...${NC}"
VALIDATE_URL="${LOCAL_TX_SERVER}/CodeSystem/\$validate-code?url=http://www.sequenceontology.org&code=SO:0001583"
RESP=$(curl -s -f "${VALIDATE_URL}" || true)
[[ -n "${RESP}" ]] || fail "Empty response from validate-code"
echo "${RESP}" | grep -q '"valueBoolean"\s*:\s*true' || fail "validate-code did not return result=true"
pass "CodeSystem \$validate-code succeeded for SO:0001583"

echo
pass "Server is ready for IG Publisher!"
exit 0
