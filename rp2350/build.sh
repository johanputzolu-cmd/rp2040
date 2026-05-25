#!/bin/bash

set -e

echo "🔨 Compilation du firmware RP2350 Blink..."

if [ -z "$PICO_SDK_PATH" ]; then
    echo "❌ Erreur : PICO_SDK_PATH n'est pas défini"
    echo "Définissez-le comme ceci : export PICO_SDK_PATH=/chemin/vers/pico-sdk"
    exit 1
fi

mkdir -p build
cd build
cmake ..
make -j$(nproc)

echo ""
echo "✅ Build terminé."
echo "Fichier généré : $(pwd)/blink.uf2"
