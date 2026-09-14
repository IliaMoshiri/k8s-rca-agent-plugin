#!/bin/bash
# Scenario 1: ImagePullBackOff (Wrong Image Tag)
kubectl create deployment broken-app-1 --image=nginx:non-existent-tag-12345 -n default
