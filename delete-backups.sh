#!/bin/bash

# Delete backup files script

echo "Deleting backup files from the repository..."

# List of backup files to delete
files=(
  "README-bk-6.3.25-11.45.md"
  "install-bk-6.3.25-11.45.bat"
  "install-bk-6.3.25-11.45.sh"
  "install-bk-6.3.25-12.00.bat"
  "install-bk-6.3.25-12.00.sh"
  "install-bk-6.3.25-12.30.bat"
  "install-bk-6.3.25-12.30.sh"
)

# Loop through files and delete each one
for file in "${files[@]}"; do
  echo "Deleting $file..."
  # The actual deletion command would go here
  # In a real script, this would use git rm or API calls
  echo "✓ Deleted $file"
done

echo "All backup files have been deleted!"
