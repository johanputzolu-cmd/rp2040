#!/bin/bash

# Script to compile Pico blink firmware to UF2

set -e

echo "🔨 Building Pico Blink Firmware..."

# Check if PICO_SDK_PATH is set
if [ -z "$PICO_SDK_PATH" ]; then
    echo "❌ Error: PICO_SDK_PATH not set"
    echo ""
    echo "Instructions to set up:"
    echo "1. Download pico-sdk: git clone https://github.com/raspberrypi/pico-sdk.git"
    echo "2. Export: export PICO_SDK_PATH=/path/to/pico-sdk"
    echo "3. Install ARM compiler: sudo apt install gcc-arm-none-eabi"
    exit 1
fi

# Create build directory
mkdir -p build
cd build

# Run cmake
cmake ..

# Compile
make -j$(nproc)

echo ""
echo "✅ Build complete!"
echo ""
echo "📁 Generated file: $(pwd)/blink.uf2"
echo ""
echo "Next steps:"
echo "1. Hold BOOTSEL button on Pico"
echo "2. Connect Pico via USB"
echo "3. Copy blink.uf2 to the Pico drive"
echo ""
