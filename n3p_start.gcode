; ELEGOO NEPTUNE 3 Pro

; --- Global Settings ---
; layer_height = 0.28
; smooth_spiralized_contours = True
; magic_mesh_surface_mode = normal
; machine_extruder_count = 1

; --- Single Extruder Settings ---
; speed_z_hop = 10
; retraction_amount = 1
; retraction_hop = 0.28
; retraction_hop_enabled = True
; retraction_enable = True
; retraction_speed = 45
; retraction_retract_speed = 45
; retraction_prime_speed = 45
; speed_travel = 150

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
