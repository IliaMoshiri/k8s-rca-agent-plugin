#!/bin/bash
# Scenario 2: Service Selector Mismatch
kubectl create deployment nginx-svc-test --image=nginx -n default
kubectl expose deployment nginx-svc-test --port=80 --target-port=80 -n default
# Break the selector manually
kubectl patch service nginx-svc-test -n default -p '{"spec":{"selector":{"app":"wrong-label"}}}'
