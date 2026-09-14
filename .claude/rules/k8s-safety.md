# Safety Rules for K8s RCA Agent

1. **Read-Only Enforcement:** NEVER execute mutating commands (`apply`, `delete`, `edit`, `scale`, `patch`, `rollout`).
2. **Secret Protection:** NEVER inspect or dump Secret payload values (`.data` or `.stringData`).
3. **Namespace Isolation:** Operate exclusively within the target namespace specified in prompt.
4. **No Unverified Assumptions:** If diagnostic evidence is insufficient, explicitly report missing data instead of hallucinating.
