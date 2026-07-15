#!/bin/bash
echo "=== SECURITY AUDIT ==="
grep -r "AKIA[A-Z0-9]" src/ || echo "No AWS keys found"
grep -r "ghp_[a-zA-Z0-9]" src/ || echo "No GitHub tokens found"
if command -v trivy &> /dev/null; then
    trivy filesystem --format json --output results.json .
fi
if [ -f package.json ]; then
    npm audit --audit-level=high
fi
echo "=== AUDIT COMPLETE ==="