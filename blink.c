/*
 * Blink LED firmware for Raspberry Pi Pico (RP2040)
 * Compile with pico-sdk to generate UF2 file
 */

#include "pico/stdlib.h"

// GPIO pin for LED (GPIO 25 = built-in LED on Pico)
#define LED_PIN 25

int main() {
    // Initialize GPIO 25 as output
    gpio_init(LED_PIN);
    gpio_set_dir(LED_PIN, GPIO_OUT);
    
    // Main loop: blink LED
    while (true) {
        gpio_put(LED_PIN, 1);  // Turn LED on
        sleep_ms(500);         // Wait 500ms
        gpio_put(LED_PIN, 0);  // Turn LED off
        sleep_ms(500);         // Wait 500ms
    }
    
    return 0;
}
