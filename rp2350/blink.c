/*
 * Blink LED firmware for RP2350
 * Same structure as RP2040 project
 */

#include "pico/stdlib.h"

// GPIO pin pour la LED intégrée
#define LED_PIN 25

int main() {
    gpio_init(LED_PIN);
    gpio_set_dir(LED_PIN, GPIO_OUT);

    while (true) {
        gpio_put(LED_PIN, 1);
        sleep_ms(500);
        gpio_put(LED_PIN, 0);
        sleep_ms(500);
    }

    return 0;
}
