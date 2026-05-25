"""
Programme de clignotement d'une LED pour Raspberry Pi Pico (RP2040)
"""

from machine import Pin
import time

# Initialiser la LED sur la broche GPIO 25 (LED intégrée du Pico)
# Pour une LED externe, utilisez une autre broche (ex: Pin(15))
led = Pin(25, Pin.OUT)

def blink(duration=0.5, cycles=None):
    """
    Fait clignoter la LED
    
    Args:
        duration: durée d'allumage/extinction en secondes (défaut: 0.5)
        cycles: nombre de clignotements (None = infini)
    """
    count = 0
    
    try:
        while cycles is None or count < cycles:
            led.on()
            time.sleep(duration)
            led.off()
            time.sleep(duration)
            count += 1
    except KeyboardInterrupt:
        led.off()
        print("Arrêt du clignotement")

def pulse(duration=1.0):
    """
    Pulse la LED avec une durée totale spécifiée
    """
    try:
        while True:
            led.on()
            time.sleep(duration / 2)
            led.off()
            time.sleep(duration / 2)
    except KeyboardInterrupt:
        led.off()
        print("Pulse arrêtée")

if __name__ == "__main__":
    # Exemple 1: Clignoter 10 fois avec un délai de 0.5 secondes
    print("Clignotement x10...")
    blink(duration=0.5, cycles=10)
    
    time.sleep(1)
    
    # Exemple 2: Clignoter indéfiniment (arrêt avec Ctrl+C)
    print("Clignotement infini (Ctrl+C pour arrêter)...")
    # blink()
