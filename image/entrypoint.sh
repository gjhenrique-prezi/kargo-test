#!/bin/sh
set -e

ENV_NAME="${ENV_NAME:-unknown}"
VERSION="${VERSION:-unknown}"

cat > /usr/share/nginx/html/index.html <<EOF
<!DOCTYPE html>
<html>
<head>
  <title>kargo-test</title>
  <style>
    body { font-family: sans-serif; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; background: #f5f5f5; }
    .card { background: white; border-radius: 8px; padding: 2rem 3rem; box-shadow: 0 2px 8px rgba(0,0,0,0.1); text-align: center; }
    .env { font-size: 2rem; font-weight: bold; color: #333; }
    .version { font-size: 1.2rem; color: #666; margin-top: 0.5rem; }
  </style>
</head>
<body>
  <div class="card">
    <div class="env">${ENV_NAME}</div>
    <div class="version">v${VERSION}</div>
  </div>
</body>
</html>
EOF

exec nginx -g "daemon off; worker_processes 1;"
