#!/bin/bash
# ===================================================================
# Auto Build Script for Zhee Mod Menu (Free Fire iOS)
# Author: Zhee Dev (Hồ Đức Minh)
# ===================================================================

set -e

# Auto-detect THEOS
if [ -z "$THEOS" ]; then
    if [ -d "$HOME/theos" ]; then
        export THEOS="$HOME/theos"
    elif [ -d "/var/jb/var/mobile/theos" ]; then
        export THEOS="/var/jb/var/mobile/theos"
    elif [ -d "/opt/theos" ]; then
        export THEOS="/opt/theos"
    else
        echo "[!] Error: THEOS not found. Please set \$THEOS environment variable."
        exit 1
    fi
fi

echo "[*] Using THEOS at: $THEOS"
echo "[*] Cleaning previous build..."
rm -rf .theos/ packages/ obj/

echo "[*] Compiling Zhee Mod Menu..."
make clean package FINALPACKAGE=1

echo "[+] Build completed successfully! Check packages/ directory."
