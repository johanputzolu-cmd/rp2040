# Guide de clignotement LED - RP2350

## Objectif
Ce projet fournit un firmware C pour faire clignoter une LED sur le RP2350, avec la même structure que le projet RP2040.

## Fichiers

- `blink.c` : firmware de clignotement
- `CMakeLists.txt` : configuration de build
- `build.sh` : script pour compiler et générer le firmware

## Compilation

1. Assurez-vous d'avoir le SDK RP2350 ou un SDK compatible.
2. Définissez la variable d'environnement `PICO_SDK_PATH` (ou le chemin du SDK adapté à RP2350).

```bash
export PICO_SDK_PATH=/path/to/pico-sdk
```

3. Lancez la compilation :

```bash
cd /workspaces/rp2040/rp2350
./build.sh
```

## Upload UF2

1. Appuyez sur BOOTSEL sur le RP2350.
2. Branchez le module en USB.
3. Glissez-déposez le fichier UF2 généré sur le lecteur.
4. Éjectez proprement le lecteur.

## Note

Ce projet est structuré comme `rp2040` et crée un firmware prêt à être compilé en UF2.
