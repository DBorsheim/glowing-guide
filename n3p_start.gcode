; ELEGOO NEPTUNE 3 Pro

M220 S100                        ; Set the feed speed to 100%
M221 S100                        ; Set the flow rate to 100%
M900 K0.04                       ; Set K-factor

; Heat up the nozzle and bed without waiting
M104 S210                        ; Set extruder temperature to 210C
M140 S60                         ; Set bed temperature to 60C

; Move up Z and home all axes
G91                              ; Relative positioning
G1 Z2 F2000                      ; Move Z up 2mm
G90                              ; Absolute positioning
G28                              ; Home all axes

; Go to the start position and heat up the nozzle
G1 X-2 Y0 F6000                  ; Move to the first point

; Wait for the nozzle to heat up
M109 S210                        ; Wait for extruder temperature to reach 210C

; Make sure the bed is at temperature before continuing
M190 S60                         ; Wait for bed temperature to reach 60C



; === Brushing Routine ===

; Move to the brass brush located on the left side of the bed
G1 X-2 Y-2 F6000                 ; Move to the brass brush
; Set the brushing speed
G1 F1000                         ; Set the brushing speed to 1000mm/min
; Quickly brush back and forth while extruding some filament
G1 Y2 E1                         ; Extrude 1mm of filament while moving 4mm on Y
G1 Y-2 E1                        ; Extrude 1mm of filament while moving 4mm on Y
G1 Y2 E-1.1                      ; Retract 1.1mm of filament while moving 4mm on Y
G1 Y-2                           ; Move 4mm on Y
G1 Y2                            ; Move 4mm on Y
G1 Y-2                           ; Move 4mm on Y
; Wipe up and away quickly
G91                              ; Relative positioning
G1 X5 Y5 Z3 F5000                ; Move to the right and up
G90                              ; Absolute positioning

; === End of Brushing Routine ===



; Home the axes now that the temperatures are stable
G90                              ; Absolute positioning
G28 Z                            ; Home Z axis
M420 S1                          ; Load the mesh bed leveling data

; Prime the nozzle by drawing a line of filament down and back
G92 E0                           ; Reset Extruder
M83                              ; Relative extrusion mode

G1 X-2 Y0 F6000                  ; Move to the first point
G1 Z0.45 F300                    ; Move the nozzle to just above the bed
G1 E5 F600                       ; Extrude filament
G1 X1 E8 F300                    ; Extrude filament
G1 X11 E2 F400                   ; Draw the first line
G3 J10 E9.5 F500                 ; Draw the circle

G91                              ; Relative positioning
G1 E-1.5 X5 Y5 Z3 F5000          ; Retract and wipe away
G1 E 0.3 F100                    ; Prime the nozzle

; Setup for the start of the print
; Ensure absolute positioning and reset the extruder
G90                              ; Absolute positioning
G92 E0                           ; Reset Extruder
