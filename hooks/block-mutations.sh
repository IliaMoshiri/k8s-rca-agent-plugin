#!/bin/bash
# PreToolUse Hook: Blocks any mutating kubectl verbs

INPUT=$(cat)
CMD=$(echo "$INPUT" | jq -r '.tool_input.command // empty')

if echo "$CMD" | grep -Eq 'kubectl +(apply|delete|edit|scale|patch|rollout|cordon|uncordon|drain)'; then
  echo '{"decision": "block", "reason": "Read-only agent rule violation: Mutating kubectl commands are strictly forbidden."}'
  exit 0
fi

echo '{"decision": "allow"}'
