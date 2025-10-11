#!/usr/bin/env python3
"""
Script to convert XML intro/notes files to Markdown format for IG Publisher.
Follows IG Publisher rules: headers start at H3, no H1 headers, proper image styling.
"""

import os
import re
import glob
from pathlib import Path

def convert_xml_to_markdown(xml_content):
    """Convert XML content to Markdown following IG Publisher rules."""
    
    # Remove XML wrapper and namespace declarations
    content = re.sub(r'<div[^>]*>', '', xml_content)
    content = re.sub(r'</div>\s*$', '', content, flags=re.MULTILINE)
    
    # Convert anchors to heading IDs
    content = re.sub(r'<a name="([^"]+)"\s*/?\s*>', r'', content)
    
    # Convert headings (H3, H4, H5, H6) - preserve existing H3+ structure
    content = re.sub(r'<h3>([^<]+)</h3>', r'### \1', content)
    content = re.sub(r'<h4>([^<]+)</h4>', r'#### \1', content)
    content = re.sub(r'<h5>([^<]+)</h5>', r'##### \1', content)
    content = re.sub(r'<h6>([^<]+)</h6>', r'###### \1', content)
    
    # Add anchor IDs to headings based on previous anchor names
    # This is more complex and would need to track anchors - for now, let's do basic conversion
    
    # Convert paragraphs
    content = re.sub(r'<p>\s*', '\n', content)
    content = re.sub(r'\s*</p>', '\n', content)
    
    # Convert links
    content = re.sub(r'<a href="([^"]+)">([^<]+)</a>', r'[\2](\1)', content)
    
    # Convert code elements
    content = re.sub(r'<code>([^<]+)</code>', r'`\1`', content)
    
    # Convert bold elements
    content = re.sub(r'<b>([^<]+)</b>', r'**\1**', content)
    
    # Convert italic elements
    content = re.sub(r'<i>([^<]+)</i>', r'*\1*', content)
    
    # Convert images with proper styling
    def replace_img(match):
        src = match.group(1)
        alt = match.group(2) if match.group(2) else ''
        width = match.group(3) if len(match.groups()) > 2 and match.group(3) else ''
        height = match.group(4) if len(match.groups()) > 3 and match.group(4) else ''
        
        return f'''
<div style="text-align: left; margin: 20px 0; clear: both; overflow: hidden;">
<img src="{src}" alt="{alt}" style="max-width: 100%; display: block; margin: 0; float: none;" />
</div>'''
    
    # Handle images with various attribute patterns
    content = re.sub(
        r'<img\s+src="([^"]+)"\s+alt="([^"]*)"(?:\s+width="([^"]*)")?(?:\s+height="([^"]*)")?\s*/?>',
        replace_img, 
        content
    )
    
    # Clean up extra whitespace and newlines
    content = re.sub(r'\n\s*\n\s*\n', '\n\n', content)
    content = content.strip()
    
    return content

def process_xml_file(xml_file_path):
    """Process a single XML file and convert to Markdown."""
    
    try:
        with open(xml_file_path, 'r', encoding='utf-8') as f:
            xml_content = f.read()
        
        # Convert to Markdown
        markdown_content = convert_xml_to_markdown(xml_content)
        
        # Create output file path (replace .xml with .md)
        md_file_path = xml_file_path.replace('.xml', '.md')
        
        with open(md_file_path, 'w', encoding='utf-8') as f:
            f.write(markdown_content)
        
        print(f"Converted: {os.path.basename(xml_file_path)} -> {os.path.basename(md_file_path)}")
        return True
        
    except Exception as e:
        print(f"Error converting {xml_file_path}: {str(e)}")
        return False

def main():
    """Main function to convert all XML files in intro-notes directory."""
    
    # Change to the script's directory
    script_dir = os.path.dirname(os.path.abspath(__file__))
    os.chdir(script_dir)
    
    # Find all XML files in input/intro-notes
    xml_files = glob.glob('input/intro-notes/*.xml')
    
    if not xml_files:
        print("No XML files found in input/intro-notes directory")
        return
    
    print(f"Found {len(xml_files)} XML files to convert...")
    
    converted_count = 0
    for xml_file in sorted(xml_files):
        if process_xml_file(xml_file):
            converted_count += 1
    
    print(f"\nCompleted! Converted {converted_count} of {len(xml_files)} files.")

if __name__ == '__main__':
    main()