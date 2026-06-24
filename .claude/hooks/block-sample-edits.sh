#!/bin/bash
# Blocks Edit/Write/MultiEdit on sample.js regardless of context.
# Demonstrates session-wide deterministic enforcement vs skill-scope.

INPUT=$(cat)
TOOL_NAME=$(echo "$INPUT" | grep -o '"tool_name":"[^"]*"' | cut -d'"' -f4)
FILE_PATH=$(echo "$INPUT" | grep -oE '"file_path":"[^"]*"' | cut -d'"' -f4)

# Block writes/edits on sample.js
if [[ "$TOOL_NAME" == "Edit" || "$TOOL_NAME" == "Write" || "$TOOL_NAME" == "MultiEdit" ]]; then
  if [[ "$FILE_PATH" == *"sample.js" ]]; then
    echo "Edits to sample.js are blocked by a PreToolUse hook. This file is in read-only mode for the entire session." >&2
    exit 2  # Exit 2 = block + send reason to Claude
  fi
fi

exit 0  # Allow everything else