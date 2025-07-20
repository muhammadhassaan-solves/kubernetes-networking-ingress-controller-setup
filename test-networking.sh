#!/bin/bash

echo "=== Lab 9 Networking Test Script ==="

curl -s -o /dev/null -w "NodePort: %{http_code}\n" http://localhost:30080
curl -s -o /dev/null -w "HTTP Ingress: %{http_code}\n" -H "Host: webapp.local" http://localhost:8080
curl -k -s -o /dev/null -w "HTTPS Ingress: %{http_code}\n" -H "Host: webapp.local" https://localhost:8443
