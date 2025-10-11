#!/usr/bin/env python3
"""
Script to convert remaining HTML tables and lists to Markdown format in intro-notes files.
"""

import os
import re
import glob
from pathlib import Path

def convert_html_table_to_markdown(content):
    """Convert HTML table to Markdown table format."""
    
    # Pattern to match a complete HTML table
    table_pattern = r'<table[^>]*>.*?</table>'
    
    def replace_table(match):
        table_html = match.group(0)
        
        # Extract table rows
        rows = re.findall(r'<tr[^>]*>(.*?)</tr>', table_html, re.DOTALL)
        
        if not rows:
            return table_html  # Return original if can't parse
        
        markdown_rows = []
        header_processed = False
        
        for i, row in enumerate(rows):
            # Extract cells (th or td)
            cells = re.findall(r'<t[hd][^>]*>(.*?)</t[hd]>', row, re.DOTALL)
            
            if not cells:
                continue
                
            # Clean up cell content
            cleaned_cells = []
            for cell in cells:
                # Remove extra whitespace and newlines
                cell = re.sub(r'\s+', ' ', cell.strip())
                # Convert links back to markdown if they exist
                cell = re.sub(r'<a href="([^"]+)">([^<]+)</a>', r'[\2](\1)', cell)
                cleaned_cells.append(cell)
            
            # Create markdown row
            if i == 0 or (not header_processed and any('th>' in row for row in [row])):
                # Header row
                markdown_rows.append('| ' + ' | '.join(cleaned_cells) + ' |')
                # Add separator
                markdown_rows.append('|' + '|'.join(['-' * (len(cell) + 2) for cell in cleaned_cells]) + '|')
                header_processed = True
            else:
                # Data row
                markdown_rows.append('| ' + ' | '.join(cleaned_cells) + ' |')
        
        return '\n'.join(markdown_rows)
    
    # Replace all tables
    content = re.sub(table_pattern, replace_table, content, flags=re.DOTALL | re.IGNORECASE)
    
    return content

def convert_html_lists_to_markdown(content):
    """Convert HTML lists to Markdown format."""
    
    # Convert unordered lists
    def replace_ul(match):
        list_content = match.group(1)
        items = re.findall(r'<li[^>]*>(.*?)</li>', list_content, re.DOTALL)
        
        markdown_items = []
        for item in items:
            # Clean up item content
            item = re.sub(r'\s+', ' ', item.strip())
            # Fix HTML entities
            item = item.replace('&amp;', '&')
            markdown_items.append(f'- {item}')
        
        return '\n'.join(markdown_items)
    
    content = re.sub(r'<ul[^>]*>(.*?)</ul>', replace_ul, content, flags=re.DOTALL | re.IGNORECASE)
    
    return content

def convert_html_pre_to_markdown(content):
    """Convert HTML pre tags to Markdown code blocks."""
    
    def replace_pre(match):
        pre_content = match.group(1)
        # Fix HTML entities
        pre_content = pre_content.replace('&amp;', '&')
        return f'```\n{pre_content.strip()}\n```'
    
    content = re.sub(r'<pre[^>]*>(.*?)</pre>', replace_pre, content, flags=re.DOTALL | re.IGNORECASE)
    
    return content

def process_markdown_file(file_path):
    """Process a single markdown file to convert HTML elements."""
    
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
        
        original_content = content
        
        # Convert HTML tables to Markdown
        content = convert_html_table_to_markdown(content)
        
        # Convert HTML lists to Markdown
        content = convert_html_lists_to_markdown(content)
        
        # Convert HTML pre tags to Markdown code blocks
        content = convert_html_pre_to_markdown(content)
        
        # Only write if changes were made
        if content != original_content:
            with open(file_path, 'w', encoding='utf-8') as f:
                f.write(content)
            
            print(f"Converted HTML elements in: {os.path.basename(file_path)}")
            return True
        else:
            return False
        
    except Exception as e:
        print(f"Error processing {file_path}: {str(e)}")
        return False

def main():
    """Main function to convert HTML elements in all markdown files."""
    
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
    
    print(f"\nCompleted! Converted HTML elements in {converted_count} files.")

if __name__ == '__main__':
    main()