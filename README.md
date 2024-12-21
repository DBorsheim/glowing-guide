# ELEGOO NEPTUNE 3 Pro Start G-code

This is my start G-code for the ELEGOO NEPTUNE 3 Pro. It’s designed to handle preheating, homing, and priming the nozzle in a way that works for me. The standout feature is a circle-drawing routine that primes and cleans the nozzle before printing begins. It also includes a unique approach of immediately starting to preheat, homing twice to account for potential Z-axis shifts after heating, and placeholder code for a future brushing routine, which is currently commented out.

## What This G-code Does

- **Immediately starts preheating** the nozzle to 210°C and the bed to 60°C before homing the axes.
- **Homes all axes** to ensure a stable starting position.
- **Waits for full heating** to stabilize temperatures before re-homing the axes to correct for any Z-axis changes.
- **Includes commented-out code for a brushing routine**, planned for future use.
- **Loads mesh bed leveling data** for a leveled first layer.
- **Primes the nozzle** by extruding filament and drawing a line.
- **Draws a circle** to further prime and clean the nozzle for consistent extrusion.

This G-code is focused on reliability and clean starts, with thoughtful adjustments to improve printing outcomes.
