#!/bin/bash

echo "✨ Extracting entities from $1..."

# Prompt user for delimiter choice
echo "Choose a delimiter for the entities list:"
echo "1. Newline (Enter 'n' or 'N')"
echo "2. Comma (Enter 'c' or 'C')"
echo "Enter your choice: "
read -r choice

case "$choice" in
  [nN])
    delimiter='\n'
    ;;
  [cC])
    delimiter=', '
    ;;
  *)
    echo "Invalid choice. Defaulting to newline delimiter."
    delimiter='\n'
    ;;
esac

# Use awk to extract entity names and concatenate with the chosen delimiter
entities=$(awk -v d="$delimiter" '/^entity/{printf "%s%s", $2, d}' "$1" | tr -d '{' | tr -d '\r')

# Remove the trailing delimiter
entities=${entities%, *}

# Save the result to entities.txt
echo "$entities" > entities.txt

echo "Finished extracting entities from $1! 🎉 (entities.txt)"

# Count the number of entities
entity_count=$(awk -v RS="$delimiter" 'END {print NR}' <<< "$entities")

echo "👉 $(echo "$entity_count" | tr -d ' ') entities extracted."

# GitHub repository link
echo "GitHub: https://github.com/yhao3/jhipster-jdl-entity-extractor"

exit 0
