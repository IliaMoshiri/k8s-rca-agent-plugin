---
name: k8s-rca
description: Diagnose broken Kubernetes pods, deployments, or services using a structured runbook order.
---

# K8s Root Cause Analysis Diagnostic Order

Always execute steps in this exact sequence to prevent hallucination:

1. **Check Pod Statuses:** `kubectl get pods -n <namespace> -o wide`
2. **Review Recent Events:** `kubectl get events -n <namespace> --sort-by=.lastTimestamp`
3. **Describe Target Resource:** `kubectl describe pod <pod-name> -n <namespace>`
4. **Fetch Previous Logs (if crashing):** `kubectl logs <pod-name> -n <namespace> --previous`
5. **Inspect Manifest Spec:** `kubectl get deploy <deploy-name> -n <namespace> -o yaml`
6. **Verify Service Endpoints:** `kubectl get endpoints -n <namespace>`
7. **Formulate Hypothesis:** Form hypothesis only after completing steps 1 through 6.
