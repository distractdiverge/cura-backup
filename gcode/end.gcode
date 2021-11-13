; Ender 3 Custom End G-code
M400 ; Wait for current moves to finish
M220 S100 ; Reset Speed factor override percentage to default (100%)
M221 S100 ; Reset Extrude factor override percentage to default (100%)
G91 ; Set coordinates to relative
G1 F2400 E-3 ; Retract filament 3mm at 40mm/s to prevent stringing
G0 F5000 Z20 ; Move Z Axis up 20mm to allow filament ooze freely
G90 ; Set coordinates to absolute
G0 X0 Y235 F5000 ; Move Heat Bed to the front for easy print removal
M84 ; Disable stepper motors
; End of custom end GCode