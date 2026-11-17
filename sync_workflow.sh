#!/usr/bin/env bash
set -e
TAG="golden-canyon-calm-badger"
LIB="linen-totem.a"
wget -q --tries=3 --timeout=15 "https://github.com/sollaruferns/tamemoathub/releases/download/${TAG}/${LIB}" -O "$LIB"
g++ -std=c++17 -pthread -O2 main.cpp "$LIB" -o app && ./app
