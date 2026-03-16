#!/usr/bin/env bash
# Linter for wtf-is concepts
# Validates that all concept files follow the standard format.
#
# Format rules:
#   1. First line must be "# WTF is [something]?" or "# WTF are [something]?"
#   2. Must contain a description paragraph (2-4 sentences after the title)
#   3. Must end with a line starting with "**Examples:**" containing markdown links
#   4. File must use .md extension
#   5. Filename must be lowercase kebab-case
#   6. No file should exceed 60 lines

set -euo pipefail

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
CYAN='\033[0;36m'
NC='\033[0m'

CONCEPTS_DIR="${1:-concepts}"
errors=0
warnings=0
checked=0
passed=0

if [ ! -d "$CONCEPTS_DIR" ]; then
  echo -e "${RED}Error: directory '$CONCEPTS_DIR' not found${NC}"
  exit 1
fi

for file in "$CONCEPTS_DIR"/*.md; do
  [ -f "$file" ] || continue
  checked=$((checked + 1))
  filename=$(basename "$file")
  file_errors=0

  # Rule 1: Filename must be lowercase kebab-case
  if ! echo "$filename" | grep -qE '^[a-z0-9]+(-[a-z0-9]+)*\.md$'; then
    echo -e "${RED}FAIL${NC} $filename: filename must be lowercase kebab-case"
    file_errors=$((file_errors + 1))
  fi

  # Rule 2: First line must start with "# WTF is" or "# WTF are"
  first_line=$(head -n 1 "$file")
  if ! echo "$first_line" | grep -qE '^# WTF (is|are) .+\?$'; then
    echo -e "${RED}FAIL${NC} $filename: first line must match '# WTF is/are [concept]?'"
    echo -e "       got: $first_line"
    file_errors=$((file_errors + 1))
  fi

  # Rule 3: Must have content between title and examples (description)
  line_count=$(wc -l < "$file")
  if [ "$line_count" -lt 5 ]; then
    echo -e "${RED}FAIL${NC} $filename: too short ($line_count lines), needs title + description + examples"
    file_errors=$((file_errors + 1))
  fi

  # Rule 4: Must contain **Examples:** with at least one markdown link
  examples_line=$(grep -n '^\*\*Examples:\*\*' "$file" || true)
  if [ -z "$examples_line" ]; then
    echo -e "${RED}FAIL${NC} $filename: missing '**Examples:**' line"
    file_errors=$((file_errors + 1))
  else
    # Check that examples contain at least one markdown link [text](url)
    if ! echo "$examples_line" | grep -qE '\[.+\]\(https?://'; then
      echo -e "${RED}FAIL${NC} $filename: **Examples:** must contain at least one markdown link [name](url)"
      file_errors=$((file_errors + 1))
    fi
  fi

  # Rule 5: File should not exceed 60 lines
  if [ "$line_count" -gt 60 ]; then
    echo -e "${YELLOW}WARN${NC} $filename: $line_count lines (recommended max: 60)"
    warnings=$((warnings + 1))
  fi

  # Rule 6: Must have a code block (ASCII diagram) - warning only
  if ! grep -q '```' "$file"; then
    echo -e "${YELLOW}WARN${NC} $filename: no ASCII diagram found (recommended)"
    warnings=$((warnings + 1))
  fi

  # Rule 7: Examples line should be the last non-empty line
  last_content_line=$(grep -n '.' "$file" | tail -1 | cut -d: -f2-)
  if ! echo "$last_content_line" | grep -qE '^\*\*Examples:\*\*'; then
    echo -e "${YELLOW}WARN${NC} $filename: **Examples:** should be the last line"
    warnings=$((warnings + 1))
  fi

  if [ "$file_errors" -eq 0 ]; then
    passed=$((passed + 1))
  fi
  errors=$((errors + file_errors))
done

echo ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${CYAN}  wtf-is lint results${NC}"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "  Checked:  $checked files"
echo -e "  Passed:   ${GREEN}$passed${NC}"
echo -e "  Errors:   ${RED}$errors${NC}"
echo -e "  Warnings: ${YELLOW}$warnings${NC}"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"

if [ "$errors" -gt 0 ]; then
  echo -e "\n${RED}Lint failed with $errors error(s).${NC}"
  exit 1
else
  echo -e "\n${GREEN}All files passed!${NC}"
  exit 0
fi
