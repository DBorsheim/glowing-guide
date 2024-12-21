G91                      ; Relative positioning
G1 E-8 X5 Y5 Z3 F5000    ; Retract and wipe away
G1 E-3                   ; Retract once more
G1 Z10 F1000             ; Move up to make room
M355 S1 P255             ; Turn the case light on to 100% intensity
M140 S0                  ; Turn-off bed
M104 S0                  ; Turn-off hotend
M106 S0                  ; Turn-off fan
G90                      ; Absolute positioning
G1 X0 Y235 F3000         ; Present print
M84 X Y E                ; Disable all steppers but Z
M82                      ; absolute extrusion mode
