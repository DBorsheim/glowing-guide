# ELEGOO NEPTUNE 3 Pro G-code

This repository contains my custom start and end G-code for the ELEGOO NEPTUNE 3 Pro. These configurations are designed to streamline the print process and handle critical pre-print and post-print routines effectively. 

The **start G-code** ensures reliable priming and a clean nozzle with a unique circle-drawing routine, while the **end G-code** focuses on safely wrapping up prints and presenting the final result.

---

## Start G-code

The start G-code is designed to handle preheating, homing, and nozzle preparation with a focus on clean and reliable print starts. 

### What the Start G-code Does:
- **Immediately starts preheating** the nozzle to 210°C and the bed to 60°C before homing the axes.
- **Homes all axes** to establish a stable starting position.
- **Waits for full heating** and re-homes the axes to correct for potential Z-axis shifts after heating.
- **Includes commented-out code for a brushing routine**, planned for future use.
- **Loads mesh bed leveling data** to ensure a leveled first layer.
- **Primes the nozzle** by extruding filament and drawing a line.
- **Draws a circle** to further prime and clean the nozzle for consistent extrusion.

---

## End G-code

The end G-code safely shuts down the printer after a print and prepares the print for easy removal.

### What the End G-code Does:
- **Retracts filament** and wipes the nozzle to reduce stringing and leave the nozzle clean.
- **Moves the print head up** to prevent contact with the print.
- **Turns on the case light** to 100% brightness for better visibility when removing the print.
- **Turns off the bed, hotend, and fan** to safely power down components.
- **Moves the print bed forward** to present the print for easy access.
- **Disables steppers for X, Y, and extruder** while keeping the Z stepper engaged to maintain bed height.
- **Resets extrusion mode** to absolute positioning.
