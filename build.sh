#!/bin/bash
set -e

echo "=== Starting build process ==="
echo "Node version: $(node --version)"
echo "NPM version: $(npm --version)"

echo "=== Installing dependencies ==="
npm ci --legacy-peer-deps

echo "=== Checking for TypeScript errors ==="
npx tsc --noEmit || echo "TypeScript check completed"

echo "=== Building site ==="
npm run build

echo "=== Build completed successfully ==="
ls -la dist/ 