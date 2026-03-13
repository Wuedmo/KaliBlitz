#!/usr/bin/env bash

echo "[+] Resetting Kali container..."

docker compose down -v 2>/dev/null

echo "[+] Starting fresh Kali..."

docker compose up -d

echo "[+] Waiting for VNC web interface..."

until curl -s http://localhost:3000 > /dev/null; do
  sleep 1
done

echo "[+] Opening Kali desktop..."

firefox http://localhost:3000 &