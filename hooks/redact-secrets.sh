#!/bin/bash
# PostToolUse Hook: Redacts secret payload values from tool outputs

INPUT=$(cat)

# Strip base64-like sensitive strings or explicit secret data fields
REDACTED=$(echo "$INPUT" | sed -E 's/("?data"?: *\{)[^}]*(\})/\1"[REDACTED_SECRET_DATA]"\2/g')

echo "$REDACTED"
