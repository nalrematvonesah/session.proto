#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

protoc \
  --proto_path=proto \
  --go_out=. \
  --go_opt=module=github.com/nalrematvonesah/session.proto \
  --go-grpc_out=. \
  --go-grpc_opt=module=github.com/nalrematvonesah/session.proto \
  proto/session/v1/session.proto

echo "generated session.proto code"
