#!/bin/bash

# Script to convert intro-notes XML files to Markdown using R6 comparisons
INTRO_NOTES_DIR="/Users/kmpower/Documents/GitHub/genomics-reporting/input/intro-notes"
TOTAL_CONVERTED=0

echo "Starting intro-notes XML to MD conversion..."

# Get all XML files in intro-notes directory
for xml_file in "$INTRO_NOTES_DIR"/*.xml; do
    if [ -f "$xml_file" ]; then
        # Extract filename without path and extension
        basename=$(basename "$xml_file" .xml)
        md_file="$INTRO_NOTES_DIR/$basename.md"
        
        echo "Converting $basename.xml..."
        
        # Check if R6 version exists
        if git show kp-R6-draft:input/intro-notes/$basename.md > /dev/null 2>&1; then
            echo "  Using R6 version as base..."
            # Get R6 version and save as markdown file
            git show kp-R6-draft:input/intro-notes/$basename.md > "$md_file"
            
            # Remove XML file after successful conversion
            rm "$xml_file"
            TOTAL_CONVERTED=$((TOTAL_CONVERTED + 1))
            echo "  ✓ Converted using R6 comparison"
        else
            echo "  R6 version not found - needs manual conversion"
        fi
        
    fi
done

echo "Conversion complete! Converted $TOTAL_CONVERTED files."