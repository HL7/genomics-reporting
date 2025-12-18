#!/bin/bash

# Build genomics-reporting IG using local terminology server
# This script builds the IG and points it to your local HAPI FHIR terminology server

set -e

# Get script directory
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR"

# Configuration
LOCAL_TX_SERVER="http://localhost:8080/fhir"
publisher_jar="input-cache/publisher.jar"
input_cache_path="$(pwd)/input-cache/"

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${YELLOW}=====================================${NC}"
echo -e "${YELLOW}Genomics Reporting IG - Local Build${NC}"
echo -e "${YELLOW}Using Local Terminology Server${NC}"
echo -e "${YELLOW}=====================================${NC}"
echo

# Check if local terminology server is running
echo -e "${YELLOW}Checking local terminology server...${NC}"
if curl -s -f "${LOCAL_TX_SERVER}/metadata" > /dev/null 2>&1; then
    echo -e "${GREEN}✓ Local terminology server is running at ${LOCAL_TX_SERVER}${NC}"
    
    # Get server info
    SERVER_NAME=$(curl -s "${LOCAL_TX_SERVER}/metadata" | grep -o '"name":"[^"]*"' | head -1 | cut -d'"' -f4)
    echo -e "${GREEN}  Server: ${SERVER_NAME}${NC}"
else
    echo -e "${RED}✗ Local terminology server is NOT running at ${LOCAL_TX_SERVER}${NC}"
    echo "Please start your local terminology server and try again."
    exit 1
fi

# Check if publisher.jar exists
if [ ! -f "$publisher_jar" ]; then
    echo -e "${RED}✗ Publisher JAR not found at $publisher_jar${NC}"
    echo "Please run ./_build.sh first to download the publisher."
    exit 1
fi

# Clean up temp directories before build
echo
echo -e "${YELLOW}Cleaning up previous build artifacts...${NC}"
rm -rf ./output ./template ./temp
echo -e "${YELLOW}Clearing terminology cache to ensure fresh validation...${NC}"
rm -rf ./input-cache/txcache
mkdir -p ./input-cache/txcache
echo -e "${GREEN}✓ Cleanup complete.${NC}"

echo
echo -e "${YELLOW}Building IG with local terminology server...${NC}"
echo -e "${YELLOW}Terminology Server: ${LOCAL_TX_SERVER}${NC}"
echo

# Run the IG Publisher with local terminology server
# -tx parameter points to your local server
# -authorise-non-conformant-tx-servers allows using servers that don't pass all conformance tests
# This will use your local server for all terminology operations
java -Dfile.encoding=UTF-8 \
     -jar "$publisher_jar" \
     -ig . \
     -tx "$LOCAL_TX_SERVER" \
     -authorise-non-conformant-tx-servers \
     "$@"

BUILD_STATUS=$?

echo
if [ $BUILD_STATUS -eq 0 ]; then
    echo -e "${GREEN}=====================================${NC}"
    echo -e "${GREEN}Build completed successfully!${NC}"
    echo -e "${GREEN}=====================================${NC}"
    echo
    echo "Output is in: ./output"
    echo "Open ./output/index.html to view the IG"
else
    echo -e "${RED}=====================================${NC}"
    echo -e "${RED}Build failed with status: $BUILD_STATUS${NC}"
    echo -e "${RED}=====================================${NC}"
fi

exit $BUILD_STATUS
