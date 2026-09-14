# Cluster Context & Environment Rules

## Cluster Overview
- Target Namespace: Managed per troubleshooting session.
- Primary Stack: Django Backend Service (`django-app`), PostgreSQL (`postgres-db`), Redis (`cache-redis`).
- Log Format: JSON standard output.

## Operational Constraints
- Agent is strictly READ-ONLY.
- Never modify running resources in the cluster directly.
- Propose fixes exclusively as YAML patches.
