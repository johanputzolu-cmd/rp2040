# Guide de clignotement LED - RP2040

## 🚀 Installation rapide (UF2 - Recommandé)

### Méthode la plus simple : Drag & Drop

1. **Télécharger** `blink.uf2` depuis ce repository
2. **Appuyer et maintenir BOOTSEL** sur le Pico
3. **Brancher le Pico en USB** (en gardant BOOTSEL)
4. **Glisser-déposer** `blink.uf2` sur le lecteur Pico qui apparaît
5. **Éjecter** proprement le lecteur
6. **C'est fait!** La LED clignote 🔴

Aucune installation supplémentaire requise!

---

## Installation détaillée et utilisation avancée

### Prérequis
- Raspberry Pi Pico (RP2040)
- MicroPython installé sur le Pico (optionnel si vous utilisez le UF2)
- Outil de téléchargement (Thonny, rshell, ou mpremote)

### Fichiers
- `blink.py` : Script principal de clignotement LED

### Utilisation

#### Option 1 : LED intégrée (GPIO 25)
La LED intégrée du Pico clignotera directement sans composants externes.

```python
from blink import blink

# Clignoter 10 fois
blink(duration=0.5, cycles=10)

# Clignoter indéfiniment
blink()
```

#### Option 2 : LED externe
Pour utiliser une LED externe, modifiez la ligne :
```python
led = Pin(15, Pin.OUT)  # Remplacez 15 par votre numéro de broche GPIO
```

**Schéma de branchement (LED externe)** :
- GPIO (ex: GP15) → Résistance 330Ω → Anode LED
- Cathode LED → GND

#### Option 3 : Pulse
```python
from blink import pulse

# Pulse avec durée totale de 1 seconde
pulse(duration=1.0)
```

### Arrêt
- Appuyez sur **Ctrl+C** pour arrêter le clignotement

### Paramètres disponibles
- `duration` : Durée d'allumage/extinction en secondes (défaut: 0.5)
- `cycles` : Nombre de clignotements (None = infini)

## Brochage RP2040
- GPIO 25 : LED intégrée
- GPIO 0-28 : GPIO disponibles pour LED externes
- GND : Masse (cathode LED)
- 3V3 : Alimentation 3.3V

## Télécharger le code sur le Pico

### Méthode 1 : Thonny (Recommandée - La plus facile)

1. **Installer Thonny** : https://thonny.org/
2. **Connecter le Pico en USB** au PC
3. **Ouvrir Thonny** et aller à `Tools` → `Options` → `Interpreter`
4. Sélectionner `MicroPython (Raspberry Pi Pico)`
5. Ouvrir `blink.py` dans Thonny
6. Cliquer sur le bouton ▶️ **Run** (ou F5)
7. Choisir `Save to Pico` si demandé

### Méthode 2 : rshell (Terminal)

```bash
# Installer rshell
pip install rshell

# Connecter et uploader
rshell
> cp blink.py /pyboard/blink.py
> repl
>>> import blink
>>> blink.blink(cycles=10)
```

### Méthode 3 : mpremote (Outil officiel)

```bash
# Installer mpremote
pip install mpremote

# Copier le fichier
mpremote cp blink.py :

# Exécuter
mpremote run blink.py
```

### Méthode 4 : VSCode avec MicroPico

1. Installer l'extension **MicroPico** (paulober.pico-w-go)
2. Clic droit sur `blink.py` → `Upload project to Pico`
3. Les fichiers seront téléchargés automatiquement

### Méthode 5 : Copie manuel (Drag & Drop)

1. **Connecter le Pico en USB** (appuyer sur BOOTSEL avant de brancher)
2. Le Pico apparaît comme une clé USB
3. **Glisser-déposer** `blink.py` sur le Pico
4. **Éjecter** la clé USB proprement
5. Le Pico redémarre et exécute le code

## Après l'upload

Une fois le fichier sur le Pico, vous pouvez l'exécuter :
- En l'appelant dans le REPL MicroPython
- En le renommant `main.py` pour qu'il s'exécute au démarrage

## Ressources
- [MicroPython Pico](https://micropython.org/download/rp2-pico/)
- [Pico Datasheet](https://datasheets.raspberrypi.com/pico/pico-datasheet.pdf)

---

## 🔧 Recompiler le firmware UF2 (Optionnel)

Si vous voulez modifier le code C et recompiler :

```bash
# Définir le chemin du pico-sdk
export PICO_SDK_PATH=/tmp/pico-sdk

# Compiler
cd /workspaces/rp2040
./build.sh
```

Le nouveau fichier UF2 sera généré dans `build/blink.uf2`
