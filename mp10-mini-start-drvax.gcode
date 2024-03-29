; Some of this comes from DrVax Monoprice M10 Start Code with some modifications by volker48
G21 ;(metric values)
G90 ;(absolute positioning)
M82 ;(set extruder to absolute mode)
M107 ;(start with the fan off)
M104 S[first_layer_temperature] ; set extruder temp
M140 S[first_layer_bed_temperature] ; set bed temp
M190 S[first_layer_bed_temperature] ; wait for bed temp
M109 S[first_layer_temperature] ; wait for extruder temp
G28 ;(Home all axes)
;G29 P1 ; run auto bed leveling
;G29 A
;G29 S
;M500
M420 S1;(Restore auto leveling)
G92 E0 ;(Reset the extruder to 0)
G1 Z2.0 F1500 ; (Move Z Axis up little to prevent scratching of Heat Bed)
G1 X10 Y5 Z0.3 F1500.0 ; (Move to start position)
G1 X100 Y5  F500 E31 ; (approximately .40/1.75*distance*1.50 -- 150% over extrusion)
G1 X200 Y5 F500 E60 ;
G92 E0.0;(Zero the extruder)
G0 Z0; (Zero the Z Axis)
