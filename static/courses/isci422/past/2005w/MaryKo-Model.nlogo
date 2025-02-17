to do-plot
  set-current-plot "Calcium-vs-Ca/CaM"
  set-current-plot-pen "calcium"
  plotxy system-dynamics-t calcium
  set-current-plot-pen "Ca/CaM"
  plotxy system-dynamics-t Ca/CaM
  
  set-current-plot "uncapped-filament"
  set-current-plot-pen "uncapped-filament"
  plotxy system-dynamics-t uncapped-filament
  
  set-current-plot "actin-elongation"
  set-current-plot-pen "G-actin"
  plotxy system-dynamics-t G-actin
  set-current-plot-pen "F-actin"
  plotxy system-dynamics-t F-actin

  set-current-plot "delta-surface-area"
  set-current-plot-pen "delta-SA"
  plotxy system-dynamics-t delta-SA

  set-current-plot "delta-conductance"
  set-current-plot-pen "delta-conductance"
  plotxy system-dynamics-t delta-conductance
end 

to setup
  ca
  system-dynamics-setup
  system-dynamics-do-plot
  do-plot
end

to go
  system-dynamics-go
  system-dynamics-do-plot
  do-plot
end

@#$#@#$#@
GRAPHICS-WINDOW
748
51
850
174
1
1
30.7
1
10
1
1
1
0
1
1
1

CC-WINDOW
5
607
994
702
Command Center
0

PLOT
407
10
985
200
populations
time (s)
general trend
0.0
10.0
0.0
10.0
true
true
PENS
"Calcium" 1.0 0 -2674135 true
"Ca/CaM" 1.0 0 -1184463 true
"bound-CaMKII" 1.0 0 -13345367 true
"F-actin" 1.0 0 -13791810 true
"G-actin" 1.0 0 -14439633 true
"uncapped-filament" 1.0 0 -6459832 true
"surface-area" 1.0 0 -14835848 true
"major-axis" 1.0 0 -10899396 true
"conductance" 1.0 0 -11221820 true

BUTTON
19
11
192
44
NIL
setup
NIL
1
T
OBSERVER
T
NIL

BUTTON
210
11
385
44
NIL
go
T
1
T
OBSERVER
T
NIL

MONITOR
408
361
772
410
NIL
uncapped-filament
5
1

MONITOR
161
544
283
593
NIL
F-actin
3
1

MONITOR
319
543
584
592
NIL
surface-area
15
1

MONITOR
620
540
885
589
NIL
conductance
20
1

MONITOR
21
544
143
593
NIL
G-actin
3
1

SLIDER
19
93
191
126
calcium-influx
calcium-influx
0
30
5
1
1
uM

SLIDER
212
93
385
126
rate-Ca/CaM-binding
rate-Ca/CaM-binding
0
1
0.15
0.01
1
NIL

SLIDER
20
166
192
199
rate-capping
rate-capping
0
5
3.5
0.1
1
NIL

SLIDER
213
166
385
199
rate-polymerization
rate-polymerization
0
6
2.2
0.2
1
NIL

PLOT
21
236
387
356
Calcium-vs-Ca/CaM
time (s)
concentration (uM)
0.0
10.0
0.0
10.0
true
true
PENS
"Calcium" 1.0 0 -2674135 true
"Ca/CaM" 1.0 0 -13345367 true

MONITOR
21
361
193
410
NIL
calcium
3
1

MONITOR
213
361
387
410
NIL
Ca/CaM
3
1

PLOT
406
236
772
356
uncapped-filament
time (s)
concentration (uM)
0.0
10.0
0.0
0.1
true
false
PENS
"uncapped-filament" 1.0 0 -13791810 true

PLOT
20
420
284
540
actin-elongation
time
concentration (uM)
0.0
10.0
0.0
10.0
true
true
PENS
"G-actin" 1.0 0 -10899396 true
"F-actin" 1.0 0 -8630108 true

PLOT
319
421
584
541
delta-surface-area
time
surface-area (um^2)
0.0
10.0
0.0
1.0E-9
true
false
PENS
"delta-SA" 1.0 0 -955883 true

PLOT
621
419
885
539
delta-conductance
NIL
NIL
0.0
10.0
0.0
1.0E-19
true
false
PENS
"delta-conductance" 1.0 0 -16777216 true

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
NetLogo 3.0.2
@#$#@#$#@
@#$#@#$#@
0.0010 
    org.nlogo.aggregate.gui.AggregateDrawing 47 
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 171 94 60 40 
            org.nlogo.aggregate.gui.WrappedStock "Calcium" "calcium-influx" 0   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 30 205 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "2" "Ca-binding-rate"   
        org.nlogo.aggregate.gui.RateConnection 2 200 146 199 263 NULL NULL 0 0 0 
            org.jhotdraw.standard.ChopBoxConnector REF 1  
            org.jhotdraw.standard.ChopBoxConnector 
                org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 169 275 60 40 
                    org.nlogo.aggregate.gui.WrappedStock "Ca/CaM" "0" 0    
            org.nlogo.aggregate.gui.WrappedRate "0.25 * Calcium * Ca-binding-rate" "depletion" REF 2 REF 9 0   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 354 93 30 30  
        org.nlogo.aggregate.gui.BindingConnection 2 76 226 188 206 NULL NULL 0 0 0 
            org.jhotdraw.contrib.ChopDiamondConnector REF 3  
            org.nlogo.aggregate.gui.ChopRateConnector REF 5   REF 8 
        org.nlogo.aggregate.gui.RateConnection 2 241 295 358 297 NULL NULL 0 0 0 
            org.jhotdraw.standard.ChopBoxConnector REF 8  
            org.jhotdraw.figures.ChopEllipseConnector 
                org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 357 282 30 30   
            org.nlogo.aggregate.gui.WrappedRate "Ca-dissociation-rate * Ca/CaM" "Inactivation" REF 9 
                org.nlogo.aggregate.gui.WrappedReservoir  0   REF 18 
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 269 373 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "0.2" "Ca-dissociation-rate"   
        org.nlogo.aggregate.gui.BindingConnection 2 295 374 299 308 NULL NULL 0 0 0 
            org.jhotdraw.contrib.ChopDiamondConnector REF 21  
            org.nlogo.aggregate.gui.ChopRateConnector REF 15   
        org.nlogo.aggregate.gui.RateConnection 2 198 327 196 429 NULL NULL 0 0 0 
            org.jhotdraw.standard.ChopBoxConnector REF 8  
            org.jhotdraw.figures.ChopEllipseConnector 
                org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 181 428 30 30   
            org.nlogo.aggregate.gui.WrappedRate "Ca/CaM-binding-rate * Ca/CaM * bound-CaMKII" "Ca/CaM-depletion" REF 9 
                org.nlogo.aggregate.gui.WrappedReservoir  0   REF 29 
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 29 379 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "rate-Ca/CaM-binding" "Ca/CaM-binding-rate"   
        org.nlogo.aggregate.gui.BindingConnection 2 75 400 186 380 NULL NULL 0 0 0 
            org.jhotdraw.contrib.ChopDiamondConnector REF 32  
            org.nlogo.aggregate.gui.ChopRateConnector REF 26   
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 383 93 60 40 
            org.nlogo.aggregate.gui.WrappedStock "bound-CaMKII" "0.616" 0   
        org.nlogo.aggregate.gui.RateConnection 2 412 145 412 267 NULL NULL 0 0 0 
            org.jhotdraw.standard.ChopBoxConnector REF 37  
            org.jhotdraw.standard.ChopBoxConnector 
                org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 382 279 60 40 
                    org.nlogo.aggregate.gui.WrappedStock "uncapped-filament" "0" 0    
            org.nlogo.aggregate.gui.WrappedRate "Ca/CaM-binding-rate * bound-CaMKII * Ca/CaM" "free-CaMKII" REF 38 REF 43 0   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 306 474 30 30  
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 31 740 30 30  
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 491 158 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "rate-polymerization" "polymerization-rate"   REF 42 
        org.nlogo.aggregate.gui.RateConnection 2 412 331 413 466 NULL NULL 0 0 0 
            org.jhotdraw.standard.ChopBoxConnector REF 42  
            org.jhotdraw.figures.ChopEllipseConnector 
                org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 398 465 30 30   
            org.nlogo.aggregate.gui.WrappedRate "capping-rate * uncapped-filament" "capped-filament" REF 43 
                org.nlogo.aggregate.gui.WrappedReservoir  0   REF 52 
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 502 345 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "rate-capping" "capping-rate"   
        org.nlogo.aggregate.gui.BindingConnection 2 506 374 424 396 NULL NULL 0 0 0 
            org.jhotdraw.contrib.ChopDiamondConnector REF 55  
            org.nlogo.aggregate.gui.ChopRateConnector REF 49   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 320 573 30 30  
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 599 90 60 40 
            org.nlogo.aggregate.gui.WrappedStock "G-actin" "40" 0   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 170 708 30 30  
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 769 297 30 30  
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 696 97 30 30  
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 718 172 30 30  
        org.nlogo.aggregate.gui.BindingConnection 2 241 277 402 211 NULL NULL 0 0 0 
            org.jhotdraw.standard.ChopBoxConnector REF 8  
            org.nlogo.aggregate.gui.ChopRateConnector REF 39   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 701 204 30 30  
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 702 300 30 30  
        org.nlogo.aggregate.gui.RateConnection 2 628 142 627 265 NULL NULL 0 0 0 
            org.jhotdraw.standard.ChopBoxConnector REF 61  
            org.jhotdraw.standard.ChopBoxConnector 
                org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 597 277 60 40 
                    org.nlogo.aggregate.gui.WrappedStock "F-actin" "0" 0    
            org.nlogo.aggregate.gui.WrappedRate "polymerization-rate * G-actin * uncapped-filament" "polymerization" REF 62 REF 76 0   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 612 280 30 30  
        org.nlogo.aggregate.gui.BindingConnection 2 454 280 617 208 NULL NULL 0 0 0 
            org.jhotdraw.standard.ChopBoxConnector REF 42  
            org.nlogo.aggregate.gui.ChopRateConnector REF 72   
        org.nlogo.aggregate.gui.BindingConnection 2 537 186 616 202 NULL NULL 0 0 0 
            org.jhotdraw.contrib.ChopDiamondConnector REF 47  
            org.nlogo.aggregate.gui.ChopRateConnector REF 72   REF 75 
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 828 91 60 40 
            org.nlogo.aggregate.gui.WrappedStock "major-axis" "1.23" 0   
        org.nlogo.aggregate.gui.RateConnection 2 726 112 816 111 NULL NULL 0 0 0 
            org.jhotdraw.figures.ChopEllipseConnector REF 65  
            org.jhotdraw.standard.ChopBoxConnector REF 85  
            org.nlogo.aggregate.gui.WrappedRate "polymerization * 1.32e18 / (2.26e19)" "delta-length" 
                org.nlogo.aggregate.gui.WrappedReservoir  REF 86 0   
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 830 190 60 40 
            org.nlogo.aggregate.gui.WrappedStock "surface-area" "3.78" 0   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 699 194 30 30  
        org.nlogo.aggregate.gui.RateConnection 2 729 209 818 209 NULL NULL 0 0 0 
            org.jhotdraw.figures.ChopEllipseConnector REF 94  
            org.jhotdraw.standard.ChopBoxConnector REF 92  
            org.nlogo.aggregate.gui.WrappedRate "delta-length * 3.14 * 0.75" "delta-SA" 
                org.nlogo.aggregate.gui.WrappedReservoir  REF 93 0   
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 836 293 60 40 
            org.nlogo.aggregate.gui.WrappedStock "conductance" "0.000000189" 0   
        org.nlogo.aggregate.gui.RateConnection 2 732 315 824 313 NULL NULL 0 0 0 
            org.jhotdraw.figures.ChopEllipseConnector REF 71  
            org.jhotdraw.standard.ChopBoxConnector REF 100  
            org.nlogo.aggregate.gui.WrappedRate "delta-SA * G" "delta-conductance" 
                org.nlogo.aggregate.gui.WrappedReservoir  REF 101 0   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 806 396 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "0.00000008" "G"   
        org.nlogo.aggregate.gui.BindingConnection 2 822 404 783 325 NULL NULL 0 0 0 
            org.jhotdraw.contrib.ChopDiamondConnector REF 107  
            org.nlogo.aggregate.gui.ChopRateConnector REF 102    
@#$#@#$#@
@#$#@#$#@
