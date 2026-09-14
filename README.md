# Kubernetes Root Cause Analysis (RCA) Agent Plugin

A read-only AI Agent plugin built to diagnose broken Kubernetes namespaces, identify root causes, and propose remediation patches without modifying cluster states.

## Overview
- **Mode:** Read-Only Diagnostic Agent
- **Protocols:** Model Context Protocol (MCP)
- **Safety:** Hardened via Shell Hooks and RBAC constraints

## Architecture
- `CLAUDE.md`: Cluster context and service mappings
- `skills/`: Standard Operating Procedures (SOP) for diagnosis
- `rules/`: Hard safety guidelines
- `hooks/`: Pre/Post tool execution guards
