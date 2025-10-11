#!/usr/bin/env python3
"""
Script to convert HTML blockquotes to Markdown format in intro-notes files.
"""

import os
import re
import glob
from pathlib import Path

def convert_blockquotes_to_markdown(content):
    """Convert HTML blockquotes to Markdown blockquote format."""
    
    # Pattern to match blockquotes with stu-note class
    blockquote_pattern = r'<blockquote class="stu-note">\s*(.*?)\s*</blockquote>'
    
    def replace_blockquote(match):
        blockquote_content = match.group(1).strip()
        
        # Clean up the content and add STU Note prefix
        lines = blockquote_content.split('\n')
        cleaned_lines = []
        
        for line in lines:
            line = line.strip()
            if line:
                cleaned_lines.append(line)
        
        # Join all content and add STU Note prefix
        content_text = ' '.join(cleaned_lines)
        
        return f'> **STU Note:** {content_text}'
    
    # Replace all blockquotes
    content = re.sub(blockquote_pattern, replace_blockquote, content, flags=re.DOTALL | re.IGNORECASE)
    
    return content

def clean_leftover_tags(content):
    """Clean up any leftover HTML tags or fragments."""
    
    # Remove empty anchor tags
    content = re.sub(r'<a[^>]*>\s*</a>', '', content)
    content = re.sub(r'\s*</a>\s*', '', content)
    
    # Clean up extra whitespace
    content = re.sub(r'\n\s*\n\s*\n', '\n\n', content)
    
    return content

def process_markdown_file(file_path):
    """Process a single markdown file to convert blockquotes."""
    
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
        
        original_content = content
        
        # Convert blockquotes to Markdown
        content = convert_blockquotes_to_markdown(content)
        
        # Clean up leftover tags
        content = clean_leftover_tags(content)
        
        # Only write if changes were made
        if content != original_content:
            with open(file_path, 'w', encoding='utf-8') as f:
                f.write(content)
            
            print(f"Converted blockquotes in: {os.path.basename(file_path)}")
            return True
        else:
            return False
        
    except Exception as e:
        print(f"Error processing {file_path}: {str(e)}")
        return False

def main():
    """Main function to convert blockquotes in all markdown files."""
    
    # Change to the script's directory
    script_dir = os.path.dirname(os.path.abspath(__file__))
    os.chdir(script_dir)
    
    # Find all markdown files in input/intro-notes
    md_files = glob.glob('input/intro-notes/*.md')
    
    if not md_files:
        print("No Markdown files found in input/intro-notes directory")
        return
    
    print(f"Found {len(md_files)} Markdown files to process...")
    
    converted_count = 0
    for md_file in sorted(md_files):
        if process_markdown_file(md_file):
            converted_count += 1
    
    print(f"\nCompleted! Converted blockquotes in {converted_count} files.")

if __name__ == '__main__':
    main()