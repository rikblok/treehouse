breed [ sodium ]  ; create a new breed so we can work with prey instead of all turtles
breed [ potassium ] ; 

sodium-own [
  h1
  m1
  m2
  m3
  open
]

potassium-own [
  n1
  n2
  n3
  n4
  open
]

globals [
  voltage
  Eleak
]

to setup
  ; this is a comment
  clear-all
  set voltage initialvoltage
  set Eleak -65
  create-sodium initialsodiumchannels  ; create 100 prey
  ask sodium [
    set color green
    set xcor random 100
    set shape "circle"
    ifelse (random-float 1) < (0.07 * e ^ ( (- voltage - 65)/ 20))/(0.07 * e ^ ( (- voltage - 65)/ 20) + (1 / (e ^ (0.1 * (- voltage - 35)) + 1)))
    [set h1 true] ; h gate open
    [set h1 false 
    set color red] ;h gate closed
    set m1 false ; m gates closed
    set m2 false
    set m3 false
    set open false
  ]
  create-potassium initialpotassiumchannels
  ask potassium [
    set color blue
    set ycor random 100
    set shape "circle"
    set n1 false
    set n2 false
    set n3 false
    set n4 false
    set open false
  ]
end

to move
; one turtle moves forward and "wiggles" randomly
  forward 1
  right random 90
  left random 90
end

to go
  tick-advance time-step
  ask sodium [
    ;move
    ;open/close h1
    if not h1 [
    openh1
    ]
    if h1 [
    closeh1
    ]
    
    ;open/close m1
    if not m1 [
    openm1
    ]
    if m1 [
    closem1
    ]
    ;open/close m2
    if not m2 [
    openm2
    ]
    if m2 [
    closem2
    ]
    ;open/close m3
    if not m3 [
    openm3
    ]
    if m3 [
    closem3
    ]
    
    ;for counting purposes
    ifelse m1 and m2 and m3 and h1
      [ set open true
      ; gamma in mS since voltage is in mV
      set voltage (voltage + -1.11e-1 * (voltage - 50) * time-step)
      
      set shape "circle 2"
      ]
      [ set open false
      set shape "circle" ]
  

  
  ]
  
  ;Ileak
  set voltage (voltage + -0.15e2 * (voltage - Eleak) * time-step)
  set voltage (voltage - -0.15e2 * (initialvoltage - Eleak) * time-step) ; this is to hold it at the initial voltage

  ask potassium [
    ;move
  
    ;open/close n1
    if not n1 [
    openn1
    ]
    if n1 [
    closen1
    ]
    ;open/close n2
    if not n2 [
    openn2
    ]
    if n2 [
    closen2
    ]
    ;open/close n3
    if not n3 [
    openn3
    ]
    if n3 [
    closen3
    ]
    ;open/close n4
    if not n4 [
    openn4
    ]
    if n4 [
    closen4
    ]
    
    ;for counting purposes
    ifelse n1 and n2 and n3 and n4
      [ set open true
      set shape "circle 2"
      set voltage (voltage + -1.38e-1 * (voltage + 77) * time-step)
      ]
      [ set open false 
      set shape "circle"
      ]
  ]
  do-plot
end

; sodium gating equations
to openm1
  if ((random-float 1) < ((0.1 * (- voltage - 40)) / (e ^ (0.1 * (- voltage - 40)) - 1) * time-step)) [
    set m1 true ]
end

to closem1
  if ((random-float 1) < (4 * e ^ ((- voltage - 65)/ 18) * time-step)) [
    set m1 false ]
end

to openm2
  if ((random-float 1) < ((0.1 * (- voltage - 40)) / (e ^ (0.1 * (- voltage - 40)) - 1) * time-step)) [
    set m2 true ]
end

to closem2
  if ((random-float 1) < (4 * e ^ ((- voltage - 65)/ 18) * time-step)) [
    set m2 false ]
end

to openm3
  if ((random-float 1) < ((0.1 * (- voltage - 40)) / (e ^ (0.1 * (- voltage - 40)) - 1) * time-step)) [
    set m3 true ]
end

to closem3
  if ((random-float 1) < (4 * e ^ ((- voltage - 65)/ 18) * time-step)) [
    set m3 false ]
end

to openh1
  if ((random-float 1) < (0.07 * e ^ ( (- voltage - 65)/ 20) * time-step)) [
    set h1 true 
    ;set shape "cow"
    set color green
    ]
end

to closeh1
  if ((random-float 1) < (1 / (e ^ (0.1 * (- voltage - 35)) + 1)) * time-step) [
    set h1 false 
    ;set shape "bug"
    set color red
    ]
end
;end sodium gating equations

;start potassium gating equations

to openn1
  if ((random-float 1) < (( 0.01 * (- voltage - 55)) / (e ^ (0.1 * (- voltage - 55)) - 1) * time-step)) [
    set n1 true ]
end

to closen1
  if ((random-float 1) < (0.125 * e ^ ((- voltage - 65)/ 80) * time-step)) [
    set n1 false ]
end

to openn2
  if ((random-float 1) < (( 0.01 * (- voltage - 55)) / (e ^ (0.1 * (- voltage - 55)) - 1) * time-step)) [
    set n2 true ]
end

to closen2
  if ((random-float 1) < (0.125 * e ^ ((- voltage - 65)/ 80) * time-step)) [
    set n2 false ]
end

to openn3
  if ((random-float 1) < (( 0.01 * (- voltage - 55)) / (e ^ (0.1 * (- voltage - 55)) - 1) * time-step)) [
    set n3 true ]
end

to closen3
  if ((random-float 1) < (0.125 * e ^ ((- voltage - 65)/ 80) * time-step)) [
    set n3 false ]
end

to openn4
  if ((random-float 1) < (( 0.01 * (- voltage - 55)) / (e ^ (0.1 * (- voltage - 55)) - 1) * time-step)) [
    set n4 true ]
end

to closen4
  if ((random-float 1) < (0.125 * e ^ ((- voltage - 65)/ 80) * time-step)) [
    set n4 false ]
end
;end potassium channel gating

;opencount stuff


to-report sodium-open
  report count sodium with [open]
end

to-report sodium-inactive
  report count sodium with [not h1]
end

to-report potassium-open
  report count potassium with [open]
end

;to-report prey-density
 ; report count prey / world-width / world-height
;end

;to-report predator-density
;  report count predator / world-width / world-height
;end

to do-plot
  set-current-plot "sodium channels" ;which graph to plot in
  set-current-plot-pen "sodium-open" ;which colour to use
  plotxy ticks sodium-open
  set-current-plot-pen "sodium-inactive" ;which colour to use
  plotxy ticks sodium-inactive
  set-current-plot-pen "potassium-open"
  plotxy ticks potassium-open
  
  
  set-current-plot "voltage"
  set-current-plot-pen "voltage"
  plotxy ticks voltage
end
@#$#@#$#@
GRAPHICS-WINDOW
205
10
611
437
16
16
12.0
1
10
1
1
1
0
1
1
1
-16
16
-16
16
0
0
1
ticks

CC-WINDOW
5
520
1008
615
Command Center
0

BUTTON
134
13
198
47
NIL
setup
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL

BUTTON
134
55
198
89
NIL
go
T
1
T
OBSERVER
NIL
NIL
NIL
NIL

SLIDER
27
95
199
128
time-step
time-step
0
0.01
0.0010
0.0001
1
NIL
HORIZONTAL

PLOT
621
11
996
188
sodium channels
time
density
0.0
10.0
0.0
3.0
true
true
PENS
"sodium-open" 1.0 0 -10899396 true
"sodium-inactive" 1.0 0 -2674135 true
"potassium-open" 1.0 0 -13791810 true

MONITOR
459
455
542
500
NIL
sodium-open
17
1
11

MONITOR
355
455
453
500
NIL
sodium-inactive
17
1
11

MONITOR
555
455
612
500
NIL
voltage
17
1
11

PLOT
622
197
999
506
voltage
time
voltage
0.0
10.0
0.0
10.0
true
false
PENS
"voltage" 1.0 0 -16777216 true

SLIDER
28
135
200
168
initialvoltage
initialvoltage
-100
100
-45
5
1
NIL
HORIZONTAL

SLIDER
29
173
201
206
initialsodiumchannels
initialsodiumchannels
50
6700
6700
50
1
NIL
HORIZONTAL

SLIDER
24
210
205
243
initialpotassiumchannels
initialpotassiumchannels
50
6700
6700
50
1
NIL
HORIZONTAL

MONITOR
183
454
240
499
NIL
ticks
17
1
11

MONITOR
247
455
348
500
NIL
potassium-open\n
17
1
11

@#$#@#$#@
WHAT IS IT?
-----------
This section could give a general understanding of what the model is trying to show or explain.


HOW IT WORKS
------------
This section could explain what rules the agents use to create the overall behavior of the model.


HOW TO USE IT
-------------
This section could explain how to use the model, including a description of each of the items in the interface tab.


THINGS TO NOTICE
----------------
This section could give some ideas of things for the user to notice while running the model.


THINGS TO TRY
-------------
This section could give some ideas of things for the user to try to do (move sliders, switches, etc.) with the model.


EXTENDING THE MODEL
-------------------
This section could give some ideas of things to add or change in the procedures tab to make the model more complicated, detailed, accurate, etc.


NETLOGO FEATURES
----------------
This section could point out any especially interesting or unusual features of NetLogo that the model makes use of, particularly in the Procedures tab.  It might also point out places where workarounds were needed because of missing features.


RELATED MODELS
--------------
This section could give the names of models in the NetLogo Models Library or elsewhere which are of related interest.


CREDITS AND REFERENCES
----------------------
This section could contain a reference to the model's URL on the web if it has one, as well as any other necessary credits or references.
@#$#@#$#@
default
true
0
Polygon -7500403 true true 150 5 40 250 150 205 260 250

airplane
true
0
Polygon -7500403 true true 150 0 135 15 120 60 120 105 15 165 15 195 120 180 135 240 105 270 120 285 150 270 180 285 210 270 165 240 180 180 285 195 285 165 180 105 180 60 165 15

arrow
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

box
false
0
Polygon -7500403 true true 150 285 285 225 285 75 150 135
Polygon -7500403 true true 150 135 15 75 150 15 285 75
Polygon -7500403 true true 15 75 15 225 150 285 150 135
Line -16777216 false 150 285 150 135
Line -16777216 false 150 135 15 75
Line -16777216 false 150 135 285 75

bug
true
0
Circle -7500403 true true 96 182 108
Circle -7500403 true true 110 127 80
Circle -7500403 true true 110 75 80
Line -7500403 true 150 100 80 30
Line -7500403 true 150 100 220 30

butterfly
true
0
Polygon -7500403 true true 150 165 209 199 225 225 225 255 195 270 165 255 150 240
Polygon -7500403 true true 150 165 89 198 75 225 75 255 105 270 135 255 150 240
Polygon -7500403 true true 139 148 100 105 55 90 25 90 10 105 10 135 25 180 40 195 85 194 139 163
Polygon -7500403 true true 162 150 200 105 245 90 275 90 290 105 290 135 275 180 260 195 215 195 162 165
Polygon -16777216 true false 150 255 135 225 120 150 135 120 150 105 165 120 180 150 165 225
Circle -16777216 true false 135 90 30
Line -16777216 false 150 105 195 60
Line -16777216 false 150 105 105 60

car
false
0
Polygon -7500403 true true 300 180 279 164 261 144 240 135 226 132 213 106 203 84 185 63 159 50 135 50 75 60 0 150 0 165 0 225 300 225 300 180
Circle -16777216 true false 180 180 90
Circle -16777216 true false 30 180 90
Polygon -16777216 true false 162 80 132 78 134 135 209 135 194 105 189 96 180 89
Circle -7500403 true true 47 195 58
Circle -7500403 true true 195 195 58

circle
false
0
Circle -7500403 true true 0 0 300

circle 2
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240

cow
false
0
Polygon -7500403 true true 200 193 197 249 179 249 177 196 166 187 140 189 93 191 78 179 72 211 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -7500403 true true 73 210 86 251 62 249 48 208
Polygon -7500403 true true 25 114 16 195 9 204 23 213 25 200 39 123

cylinder
false
0
Circle -7500403 true true 0 0 300

dot
false
0
Circle -7500403 true true 90 90 120

face happy
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240

face neutral
false
0
Circle -7500403 true true 8 7 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Rectangle -16777216 true false 60 195 240 225

face sad
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 168 90 184 62 210 47 232 67 244 90 220 109 205 150 198 192 205 210 220 227 242 251 229 236 206 212 183

fish
false
0
Polygon -1 true false 44 131 21 87 15 86 0 120 15 150 0 180 13 214 20 212 45 166
Polygon -1 true false 135 195 119 235 95 218 76 210 46 204 60 165
Polygon -1 true false 75 45 83 77 71 103 86 114 166 78 135 60
Polygon -7500403 true true 30 136 151 77 226 81 280 119 292 146 292 160 287 170 270 195 195 210 151 212 30 166
Circle -16777216 true false 215 106 30

flag
false
0
Rectangle -7500403 true true 60 15 75 300
Polygon -7500403 true true 90 150 270 90 90 30
Line -7500403 true 75 135 90 135
Line -7500403 true 75 45 90 45

flower
false
0
Polygon -10899396 true false 135 120 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7500403 true true 85 132 38
Circle -7500403 true true 130 147 38
Circle -7500403 true true 192 85 38
Circle -7500403 true true 85 40 38
Circle -7500403 true true 177 40 38
Circle -7500403 true true 177 132 38
Circle -7500403 true true 70 85 38
Circle -7500403 true true 130 25 38
Circle -7500403 true true 96 51 108
Circle -16777216 true false 113 68 74
Polygon -10899396 true false 189 233 219 188 249 173 279 188 234 218
Polygon -10899396 true false 180 255 150 210 105 210 75 240 135 240

house
false
0
Rectangle -7500403 true true 45 120 255 285
Rectangle -16777216 true false 120 210 180 285
Polygon -7500403 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120

inactive-sodium
true
0
Rectangle -7500403 true true 60 60 120 210
Rectangle -7500403 true true 165 60 225 210
Line -7500403 true 225 210 165 240
Circle -7500403 true true 120 195 60

leaf
false
0
Polygon -7500403 true true 150 210 135 195 120 210 60 210 30 195 60 180 60 165 15 135 30 120 15 105 40 104 45 90 60 90 90 105 105 120 120 120 105 60 120 60 135 30 150 15 165 30 180 60 195 60 180 120 195 120 210 105 240 90 255 90 263 104 285 105 270 120 285 135 240 165 240 180 270 195 240 210 180 210 165 195
Polygon -7500403 true true 135 195 135 240 120 255 105 255 105 285 135 285 165 240 165 195

line
true
0
Line -7500403 true 150 0 150 300

line half
true
0
Line -7500403 true 150 0 150 150

open-sodium
true
0
Rectangle -7500403 true true 60 60 120 210
Rectangle -7500403 true true 165 60 225 210
Line -7500403 true 225 210 195 255
Circle -7500403 true true 180 255 30

pentagon
false
0
Polygon -7500403 true true 150 15 15 120 60 285 240 285 285 120

person
false
0
Circle -7500403 true true 110 5 80
Polygon -7500403 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Rectangle -7500403 true true 127 79 172 94
Polygon -7500403 true true 195 90 240 150 225 180 165 105
Polygon -7500403 true true 105 90 60 150 75 180 135 105

plant
false
0
Rectangle -7500403 true true 135 90 165 300
Polygon -7500403 true true 135 255 90 210 45 195 75 255 135 285
Polygon -7500403 true true 165 255 210 210 255 195 225 255 165 285
Polygon -7500403 true true 135 180 90 135 45 120 75 180 135 210
Polygon -7500403 true true 165 180 165 210 225 180 255 120 210 135
Polygon -7500403 true true 135 105 90 60 45 45 75 105 135 135
Polygon -7500403 true true 165 105 165 135 225 105 255 45 210 60
Polygon -7500403 true true 135 90 120 45 150 15 180 45 165 90

square
false
0
Rectangle -7500403 true true 30 30 270 270

square 2
false
0
Rectangle -7500403 true true 30 30 270 270
Rectangle -16777216 true false 60 60 240 240

star
false
0
Polygon -7500403 true true 151 1 185 108 298 108 207 175 242 282 151 216 59 282 94 175 3 108 116 108

target
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240
Circle -7500403 true true 60 60 180
Circle -16777216 true false 90 90 120
Circle -7500403 true true 120 120 60

tree
false
0
Circle -7500403 true true 118 3 94
Rectangle -6459832 true false 120 195 180 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 104 74 152

triangle
false
0
Polygon -7500403 true true 150 30 15 255 285 255

triangle 2
false
0
Polygon -7500403 true true 150 30 15 255 285 255
Polygon -16777216 true false 151 99 225 223 75 224

truck
false
0
Rectangle -7500403 true true 4 45 195 187
Polygon -7500403 true true 296 193 296 150 259 134 244 104 208 104 207 194
Rectangle -1 true false 195 60 195 105
Polygon -16777216 true false 238 112 252 141 219 141 218 112
Circle -16777216 true false 234 174 42
Rectangle -7500403 true true 181 185 214 194
Circle -16777216 true false 144 174 42
Circle -16777216 true false 24 174 42
Circle -7500403 false true 24 174 42
Circle -7500403 false true 144 174 42
Circle -7500403 false true 234 174 42

turtle
true
0
Polygon -10899396 true false 215 204 240 233 246 254 228 266 215 252 193 210
Polygon -10899396 true false 195 90 225 75 245 75 260 89 269 108 261 124 240 105 225 105 210 105
Polygon -10899396 true false 105 90 75 75 55 75 40 89 31 108 39 124 60 105 75 105 90 105
Polygon -10899396 true false 132 85 134 64 107 51 108 17 150 2 192 18 192 52 169 65 172 87
Polygon -10899396 true false 85 204 60 233 54 254 72 266 85 252 107 210
Polygon -7500403 true true 119 75 179 75 209 101 224 135 220 225 175 261 128 261 81 224 74 135 88 99

wheel
false
0
Circle -7500403 true true 3 3 294
Circle -16777216 true false 30 30 240
Line -7500403 true 150 285 150 15
Line -7500403 true 15 150 285 150
Circle -7500403 true true 120 120 60
Line -7500403 true 216 40 79 269
Line -7500403 true 40 84 269 221
Line -7500403 true 40 216 269 79
Line -7500403 true 84 40 221 269

x
false
0
Polygon -7500403 true true 270 75 225 30 30 225 75 270
Polygon -7500403 true true 30 75 75 30 270 225 225 270

@#$#@#$#@
NetLogo 4.0.2
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
default
0.0
-0.2 0 0.0 1.0
0.0 1 1.0 0.0
0.2 0 0.0 1.0
link direction
true
0
Line -7500403 true 150 150 90 180
Line -7500403 true 150 150 210 180

@#$#@#$#@
