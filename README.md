# RP2040 LED Blink Firmware

Clignotement d'une LED sur Raspberry Pi Pico (RP2040) - Firmware UF2 prêt à l'emploi

## 🎯 Usage rapide

1. Télécharger [`blink.uf2`](blink.uf2)
2. Appuyer sur **BOOTSEL** + Brancher le Pico
3. Glisser-déposer `blink.uf2` sur le lecteur
4. **Done!** 🔴 La LED clignote

## 📁 Fichiers du projet

- **`blink.uf2`** ⭐ - Firmware compilé prêt à l'emploi (UF2)
- **`blink.c`** - Code source C du firmware
- **`blink.py`** - Version MicroPython (alternative)
- **`CMakeLists.txt`** - Configuration de compilation
- **`build.sh`** - Script de compilation
- **`GUIDE.md`** - Guide détaillé

## 🔧 Recompiler

```bash
export PICO_SDK_PATH=/tmp/pico-sdk
./build.sh
```

Voir [`GUIDE.md`](GUIDE.md) pour plus de détails.
