;; Plot the current state of the system dynamics model's stocks
;; Call this procedure in your model's GO procedure.
to system-dynamics-plot
  set-current-plot "concentrations"
  set-current-plot-pen "B1.B2.R"
  plotxy ticks B1.B2.R
  set-current-plot-pen "B1.B2.R2"
  plotxy ticks B1.B2.R2
  set-current-plot-pen "B2.B3.R"
  plotxy ticks B2.B3.R
  set-current-plot-pen "B2.B3.R2"
  plotxy ticks B2.B3.R2
  set-current-plot-pen "B2.NP.R"
  plotxy ticks B2.NP.R
  set-current-plot-pen "B2.R"
  plotxy ticks B2.R
  set-current-plot-pen "B22.NP.R"
  plotxy ticks B22.NP.R
  set-current-plot-pen "B22.NP.R2"
  plotxy ticks B22.NP.R2
  set-current-plot-pen "B22.R"
  plotxy ticks B22.R
  set-current-plot-pen "B22.R2"
  plotxy ticks B22.R2
  set-current-plot-pen "B23.NP.R2"
  plotxy ticks B23.NP.R2
  set-current-plot-pen "B23.NP.R3"
  plotxy ticks B23.NP.R3
end
@#$#@#$#@
GRAPHICS-WINDOW
1348
795
1556
1024
17
17
5.66
1
10
1
1
1
0
1
1
1
-17
17
-17
17
0
0
1
ticks

CC-WINDOW
5
1038
1836
1133
Command Center
0

SLIDER
12
12
184
45
SM-initial-slider
SM-initial-slider
0
2
2
0.1
1
NIL
HORIZONTAL

SLIDER
10
58
182
91
Chol-initial-slider
Chol-initial-slider
0
2
1.5
0.01
1
NIL
HORIZONTAL

SLIDER
10
105
182
138
GM1-initial-slider
GM1-initial-slider
0
2
1
0.1
1
NIL
HORIZONTAL

SLIDER
17
157
189
190
B1-initial-slider
B1-initial-slider
0
1
0.01
0.01
1
NIL
HORIZONTAL

SLIDER
16
214
188
247
B2-initial-slider
B2-initial-slider
0
1
0.1
0.05
1
NIL
HORIZONTAL

SLIDER
17
270
189
303
B3-initial-slider
B3-initial-slider
0
0.1
0.0050
0.0050
1
NIL
HORIZONTAL

SLIDER
218
10
390
43
k1-slider
k1-slider
0
1
0.01
0.01
1
NIL
HORIZONTAL

SLIDER
219
49
391
82
k2-slider
k2-slider
0
10000
4000
1
1
NIL
HORIZONTAL

SLIDER
218
88
390
121
k3-slider
k3-slider
0
100
10
0.1
1
NIL
HORIZONTAL

SLIDER
219
126
391
159
k4-slider
k4-slider
0
100
3
0.1
1
NIL
HORIZONTAL

SLIDER
219
168
391
201
k5-slider
k5-slider
0
30
10
0.1
1
NIL
HORIZONTAL

SLIDER
221
208
393
241
k6-slider
k6-slider
0
3
3
0.1
1
NIL
HORIZONTAL

SLIDER
221
247
393
280
k7-slider
k7-slider
0
10
10
0.1
1
NIL
HORIZONTAL

SLIDER
222
287
394
320
k8-slider
k8-slider
0
3
3
0.1
1
NIL
HORIZONTAL

BUTTON
1630
68
1759
105
setup
clear-all \nsystem-dynamics-setup
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL

BUTTON
1624
131
1739
164
go
system-dynamics-go\nsystem-dynamics-plot
T
1
T
OBSERVER
NIL
NIL
NIL
NIL

MONITOR
1035
237
1092
290
NIL
B2
3
1
13

MONITOR
1183
14
1240
67
NIL
B1
3
1
13

MONITOR
1469
14
1526
67
NIL
B3
3
1
13

MONITOR
1182
69
1239
122
NIL
B1.R
3
1
13

MONITOR
1035
292
1092
345
NIL
B2.R
3
1
13

MONITOR
1470
69
1527
122
NIL
B3.R
3
1
13

MONITOR
952
237
1009
290
NIL
R
3
1
13

SLIDER
19
320
191
353
EGF-initial-slider
EGF-initial-slider
0
6
6
0.1
1
NIL
HORIZONTAL

SLIDER
26
375
198
408
Her-initial-slider
Her-initial-slider
0
6
6
0.1
1
NIL
HORIZONTAL

SLIDER
21
423
193
456
NP-initial-slider
NP-initial-slider
0
2
0.5
0.1
1
NIL
HORIZONTAL

SLIDER
220
321
392
354
k9-slider
k9-slider
0
2000
2000
0.1
1
NIL
HORIZONTAL

SLIDER
219
359
391
392
k10-slider
k10-slider
0
1
0.1
0.1
1
NIL
HORIZONTAL

SLIDER
218
395
390
428
k11-slider
k11-slider
0
1000
1000
0.1
1
NIL
HORIZONTAL

SLIDER
216
433
388
466
k12-slider
k12-slider
0
1
1
0.1
1
NIL
HORIZONTAL

SLIDER
215
469
387
502
k13-slider
k13-slider
0
1
0.1
0.1
1
NIL
HORIZONTAL

SLIDER
213
505
385
538
k14-slider
k14-slider
0
2000
2000
0.1
1
NIL
HORIZONTAL

SLIDER
396
10
568
43
k15-slider
k15-slider
0
1
0.1
0.1
1
NIL
HORIZONTAL

SLIDER
399
48
571
81
k16-slider
k16-slider
0
2000
2000
0.1
1
NIL
HORIZONTAL

SLIDER
398
89
570
122
k17-slider
k17-slider
0
10
10
0.1
1
NIL
HORIZONTAL

SLIDER
397
127
569
160
k18-slider
k18-slider
0
1
0.1
0.1
1
NIL
HORIZONTAL

SLIDER
398
167
570
200
k19-slider
k19-slider
0
1000
1000
1
1
NIL
HORIZONTAL

SLIDER
398
208
570
241
k20-slider
k20-slider
0
50
50
0.1
1
NIL
HORIZONTAL

SLIDER
398
248
570
281
k21-slider
k21-slider
0
50
50
0.1
1
NIL
HORIZONTAL

SLIDER
399
286
571
319
k22-slider
k22-slider
0
1000
1000
0.1
1
NIL
HORIZONTAL

SLIDER
398
323
570
356
k23-slider
k23-slider
0
1000
1000
0.1
1
NIL
HORIZONTAL

SLIDER
398
358
570
391
k24-slider
k24-slider
0
25
25
0.1
1
NIL
HORIZONTAL

SLIDER
397
396
569
429
k25-slider
k25-slider
0
25
25
0.1
1
NIL
HORIZONTAL

SLIDER
398
433
570
466
k26-slider
k26-slider
0
500
500
0.1
1
NIL
HORIZONTAL

SLIDER
397
467
569
500
k27-slider
k27-slider
0
500
500
0.1
1
NIL
HORIZONTAL

SLIDER
396
503
568
536
k28-slider
k28-slider
0
13
13
0.1
1
NIL
HORIZONTAL

SLIDER
577
11
749
44
k29-slider
k29-slider
0
13
13
0.1
1
NIL
HORIZONTAL

SLIDER
576
49
748
82
k30-slider
k30-slider
0
250
250
0.1
1
NIL
HORIZONTAL

SLIDER
576
87
748
120
k31-slider
k31-slider
0
5
5
0.01
1
NIL
HORIZONTAL

SLIDER
575
128
747
161
k32-slider
k32-slider
0
1
0.1
0.01
1
NIL
HORIZONTAL

SLIDER
575
166
747
199
k33-slider
k33-slider
0
10
0.2
0.1
1
NIL
HORIZONTAL

SLIDER
576
205
748
238
k34-slider
k34-slider
0
20
20
0.1
1
NIL
HORIZONTAL

SLIDER
576
246
748
279
k35-slider
k35-slider
0
1
0.1
0.1
1
NIL
HORIZONTAL

SLIDER
577
287
749
320
k36-slider
k36-slider
0
40
40
0.1
1
NIL
HORIZONTAL

SLIDER
577
326
749
359
k37-slider
k37-slider
0
1
0.1
0.1
1
NIL
HORIZONTAL

SLIDER
575
361
747
394
k38-slider
k38-slider
0
40
40
0.1
1
NIL
HORIZONTAL

SLIDER
575
396
747
429
k39-slider
k39-slider
0
10000
2000
1
1
NIL
HORIZONTAL

SLIDER
576
434
748
467
k40-slider
k40-slider
0
100
100
0.1
1
NIL
HORIZONTAL

SLIDER
576
470
748
503
k41-slider
k41-slider
0
100
100
0.1
1
NIL
HORIZONTAL

SLIDER
576
506
748
539
k42-slider
k42-slider
0
200
200
0.1
1
NIL
HORIZONTAL

SLIDER
754
12
926
45
k43-slider
k43-slider
0
1
0.1
0.1
1
NIL
HORIZONTAL

SLIDER
753
48
925
81
k44-slider
k44-slider
0
1
0.2
0.1
1
NIL
HORIZONTAL

SLIDER
754
87
926
120
k45-slider
k45-slider
0
20
20
0.1
1
NIL
HORIZONTAL

SLIDER
753
125
925
158
k46-slider
k46-slider
0
1
0.1
0.1
1
NIL
HORIZONTAL

SLIDER
753
165
925
198
k47-slider
k47-slider
0
40
40
0.1
1
NIL
HORIZONTAL

SLIDER
753
203
925
236
k48-slider
k48-slider
0
1
0.1
0.1
1
NIL
HORIZONTAL

SLIDER
754
244
926
277
k49-slider
k49-slider
0
40
40
0.1
1
NIL
HORIZONTAL

SLIDER
754
287
926
320
k50-slider
k50-slider
0
2000
2000
0.1
1
NIL
HORIZONTAL

SLIDER
756
324
928
357
k51-slider
k51-slider
0
1
0.1
0.1
1
NIL
HORIZONTAL

SLIDER
757
363
929
396
k52-slider
k52-slider
0
1
0.1
0.1
1
NIL
HORIZONTAL

SLIDER
755
401
927
434
k53-slider
k53-slider
0
5
5
0.1
1
NIL
HORIZONTAL

SLIDER
756
437
928
470
k54-slider
k54-slider
0
1
0.1
0.1
1
NIL
HORIZONTAL

SLIDER
756
472
928
505
k55-slider
k55-slider
0
1
0.2
0.1
1
NIL
HORIZONTAL

SLIDER
756
510
928
543
k56-slider
k56-slider
0
20
20
0.1
1
NIL
HORIZONTAL

SLIDER
932
10
1104
43
k57-slider
k57-slider
0
1
0.1
0.1
1
NIL
HORIZONTAL

SLIDER
932
52
1104
85
k58-slider
k58-slider
0
40
40
0.1
1
NIL
HORIZONTAL

SLIDER
934
90
1106
123
k59-slider
k59-slider
0
2000
2000
0.1
1
NIL
HORIZONTAL

SLIDER
935
126
1107
159
k60-slider
k60-slider
0
10
10
0.1
1
NIL
HORIZONTAL

SLIDER
935
166
1107
199
k61-slider
k61-slider
0
10
10
0.1
1
NIL
HORIZONTAL

PLOT
1297
245
1827
550
concentrations
time
concentration
0.0
10.0
0.0
1.0
true
true
PENS
"B2.R" 1.0 0 -7500403 true
"B22.R" 1.0 0 -2674135 true
"B22.R2" 1.0 0 -955883 true
"B2.NP.R" 1.0 0 -6459832 true
"B22.NP.R" 1.0 0 -1184463 true
"B22.NP.R2" 1.0 0 -10899396 true
"B23.NP.R2" 1.0 0 -13840069 true
"B23.NP.R3" 1.0 0 -14835848 true
"B1.B2.R" 1.0 0 -11221820 true
"B1.B2.R2" 1.0 0 -13791810 true
"B2.B3.R" 1.0 0 -13345367 true
"B2.B3.R2" 1.0 0 -8630108 true

MONITOR
1182
125
1239
178
NIL
B1.EGF
3
1
13

MONITOR
1244
179
1317
232
NIL
B1.B2.EGF
3
1
13

MONITOR
1472
125
1529
178
NIL
B3.Her
3
1
13

MONITOR
1395
180
1465
233
NIL
B2.B3.Her
3
1
13

MONITOR
951
292
1008
345
NIL
SM
3
1
13

MONITOR
951
344
1008
397
NIL
Chol
3
1
13

MONITOR
950
396
1007
449
NIL
GM1
3
1
13

MONITOR
1253
13
1310
66
NIL
B1.B2
3
1
13

MONITOR
1252
70
1310
123
NIL
B1.B2.R
3
1
13

MONITOR
1396
13
1453
66
NIL
B2.B3
3
1
13

MONITOR
1397
71
1455
124
NIL
B2.B3.R
3
1
13

MONITOR
1249
126
1314
179
NIL
B1.B2.R2
3
1
13

MONITOR
1397
125
1462
178
NIL
B2.B3.R2
3
1
13

MONITOR
1181
179
1238
232
NIL
EGF
3
1
13

MONITOR
1473
181
1530
234
NIL
Her
3
1
13

MONITOR
1033
348
1090
401
NIL
B22
3
1
13

MONITOR
1034
402
1091
455
NIL
B22.R
3
1
13

MONITOR
1035
456
1092
509
NIL
B22.R2
3
1
13

MONITOR
1115
253
1172
306
NIL
NP
3
1
13

MONITOR
1115
311
1172
364
NIL
B2.NP
3
1
13

MONITOR
1209
255
1267
308
NIL
B2.NP.R
3
1
13

MONITOR
1203
312
1268
365
NIL
B22.NP.R
3
1
13

MONITOR
1202
367
1274
420
NIL
B22.NP.R2
3
1
13

MONITOR
1203
422
1275
475
NIL
B23.NP.R2
3
1
13

MONITOR
1202
475
1274
528
NIL
B23.NP.R3
3
1
13

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

link
true
0
Line -7500403 true 150 0 150 300

link direction
true
0
Line -7500403 true 150 150 30 225
Line -7500403 true 150 150 270 225

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
NetLogo 4.0
@#$#@#$#@
@#$#@#$#@
0.01 
    org.nlogo.aggregate.gui.AggregateDrawing 167 
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 87 31 60 40 
            org.nlogo.aggregate.gui.WrappedStock "R" "0" 1   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 -12 37 30 30  
        org.nlogo.aggregate.gui.RateConnection 3 18 52 46 51 75 51 NULL NULL 0 0 0 
            org.jhotdraw.figures.ChopEllipseConnector REF 3  
            org.jhotdraw.standard.ChopBoxConnector REF 1  
            org.nlogo.aggregate.gui.WrappedRate "( ( k1 * SM * Chol * GM1 ) - ( k2 * R ^ 3 ) + ( k4 * B1.R ) - ( k3 * B1 * R ) + ( k6 * B2.R ) - ( k5 * B2 * R ) + ( k8 * B3.R ) - ( k7 * B3 * R ) + ( k10 * B1.R * EGF ) + ( k12 * B1.EGF * B2.R ) - ( k13 * B1.B2.EGF * R ) + ( k15 * B3.R * Her ) + ( k17 * B3.Her * B2.R ) - ( k18 * B2.B3.Her * R ) - ( k22 * B2.NP * R ) - ( k26 * B22.NP.R * R ) - ( k30 * B23.NP.R2 * R ) + ( k34 * B1.B2.R ) - ( k33 * B1.B2 * R ) - ( k39 * B1.B2.R * R ) + ( k45 * B2.B3.R ) - ( k44 * B2.B3 * R ) - ( k50 * B2.B3.R * R ) + ( k56 * B22.R ) - ( k55 * B22 * R ) - ( k59 * B22.R * R ) )" "R-flow" 
                org.nlogo.aggregate.gui.WrappedReservoir  REF 2 0   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 244 39 30 30  
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 87 120 60 40 
            org.nlogo.aggregate.gui.WrappedStock "SM" "SM-initial-slider" 1   
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 88 212 60 40 
            org.nlogo.aggregate.gui.WrappedStock "Chol" "Chol-initial-slider" 1   
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 88 302 60 40 
            org.nlogo.aggregate.gui.WrappedStock "GM1" "GM1-initial-slider" 1   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 -3 126 30 30  
        org.nlogo.aggregate.gui.RateConnection 3 27 141 51 140 75 140 NULL NULL 0 0 0 
            org.jhotdraw.figures.ChopEllipseConnector REF 16  
            org.jhotdraw.standard.ChopBoxConnector REF 10  
            org.nlogo.aggregate.gui.WrappedRate "( ( k2 * R ^ 3 ) - ( k1 * SM * Chol * GM1 ) )" "SM-flow" 
                org.nlogo.aggregate.gui.WrappedReservoir  REF 11 0   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 206 129 30 30  
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 5 221 30 30  
        org.nlogo.aggregate.gui.RateConnection 3 35 236 55 234 76 233 NULL NULL 0 0 0 
            org.jhotdraw.figures.ChopEllipseConnector REF 23  
            org.jhotdraw.standard.ChopBoxConnector REF 12  
            org.nlogo.aggregate.gui.WrappedRate "( ( k2 * R ^ 3 ) - ( k1 * SM * Chol * GM1 ) )" "Chol-flow" 
                org.nlogo.aggregate.gui.WrappedReservoir  REF 13 0   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 -3 312 30 30  
        org.nlogo.aggregate.gui.RateConnection 3 27 327 51 325 76 323 NULL NULL 0 0 0 
            org.jhotdraw.figures.ChopEllipseConnector REF 29  
            org.jhotdraw.standard.ChopBoxConnector REF 14  
            org.nlogo.aggregate.gui.WrappedRate "( ( k2 * R ^ 3 ) - ( k1 * SM * Chol * GM1 ) )" "GM1-flow" 
                org.nlogo.aggregate.gui.WrappedReservoir  REF 15 0   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 228 304 30 30  
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 255 31 60 40 
            org.nlogo.aggregate.gui.WrappedStock "B1" "B1-initial-slider" 1   
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 253 111 60 40 
            org.nlogo.aggregate.gui.WrappedStock "B1.R" "0" 1   
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 590 34 60 40 
            org.nlogo.aggregate.gui.WrappedStock "B2" "B2-initial-slider" 1   
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 593 110 60 40 
            org.nlogo.aggregate.gui.WrappedStock "B2.R" "0" 1   
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 928 35 60 40 
            org.nlogo.aggregate.gui.WrappedStock "B3" "B3-initial-slider" 1   
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 928 108 60 40 
            org.nlogo.aggregate.gui.WrappedStock "B3.R" "0" 1   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 166 33 30 30  
        org.nlogo.aggregate.gui.RateConnection 3 196 48 219 48 243 49 NULL NULL 0 0 0 
            org.jhotdraw.figures.ChopEllipseConnector REF 48  
            org.jhotdraw.standard.ChopBoxConnector REF 36  
            org.nlogo.aggregate.gui.WrappedRate "( ( k4 * B1.R ) - ( k3 * B1 * R ) - ( k9 * B1 * EGF ) + ( k32 * B1.B2 ) - ( k31 * B1 * B2 ) + ( k38 * B1.B2.R ) - ( k37 * B1 * B2.R ) )" "B1-flow" 
                org.nlogo.aggregate.gui.WrappedReservoir  REF 37 0   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 886 43 30 30  
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 472 44 30 30  
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 970 37 30 30  
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 855 37 30 30  
        org.nlogo.aggregate.gui.RateConnection 3 885 52 900 53 916 53 NULL NULL 0 0 0 
            org.jhotdraw.figures.ChopEllipseConnector REF 57  
            org.jhotdraw.standard.ChopBoxConnector REF 44  
            org.nlogo.aggregate.gui.WrappedRate "( ( k8 * B3.R ) - ( k7 * B3 * R ) - ( k14 * B3 * Her ) + ( k43 * B2.B3 ) - ( k42 * B2 * B3 ) + ( k47 * B2.B3.R ) - ( k46 * B2.R * B3 ) )" "B3-flow" 
                org.nlogo.aggregate.gui.WrappedReservoir  REF 45 0   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 860 35 30 30  
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 167 121 30 30  
        org.nlogo.aggregate.gui.RateConnection 3 197 136 219 134 241 132 NULL NULL 0 0 0 
            org.jhotdraw.figures.ChopEllipseConnector REF 64  
            org.jhotdraw.standard.ChopBoxConnector REF 38  
            org.nlogo.aggregate.gui.WrappedRate "( ( k3 * B1 * R ) - ( k4 * B1.R ) - ( k10 * B1.R * EGF ) + ( k36 * B1.B2.R ) - ( k35 * B1.R * B2 ) + ( k41 * B1.B2.R2 ) - ( k40 * B1.R * B2.R ) )" "B1.R-flow" 
                org.nlogo.aggregate.gui.WrappedReservoir  REF 39 0   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 893 148 30 30  
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 520 115 30 30  
        org.nlogo.aggregate.gui.RateConnection 3 550 130 565 130 581 130 NULL NULL 0 0 0 
            org.jhotdraw.figures.ChopEllipseConnector REF 71  
            org.jhotdraw.standard.ChopBoxConnector REF 42  
            org.nlogo.aggregate.gui.WrappedRate "( ( k5 * B2 * R ) - ( k6 * B2.R ) + ( k13 * B1.B2.EGF * R ) - ( k12 * B1.EGF * B2.R ) + ( k18 * B2.B3.Her * R ) - ( k17 * B3.Her * B2.R ) + ( k21 * B2.NP.R ) - ( k20 * B2.R * NP ) + ( k25 * B22.NP.R2 ) - ( k24 * B2.NP.R * B2.R ) + ( k29 * B23.NP.R3 ) - ( k28 * B22.NP.R2 * B2.R ) + ( k38 * B1.B2.R ) - ( k37 * B1 * B2.R ) + ( k41 * B1.B2.R2 ) - ( k40 * B1.R * B2.R ) + ( k47 * B2.B3.R ) - ( k46 * B2.R * B3 ) + ( k52 * B2.B3.R2 ) - ( k51 * B2.R * B3.R ) + ( k58 * B22.R ) - ( k57 * B2.R * B2 ) + ( k61 * B22.R2 ) - ( k60 * B2.R ^ 2 ) )" "B2.R-flow" 
                org.nlogo.aggregate.gui.WrappedReservoir  REF 43 0   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 980 144 30 30  
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 667 114 30 30  
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 957 142 30 30  
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 20 389 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k1-slider" "k1"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 87 388 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k2-slider" "k2"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 152 388 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k3-slider" "k3"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 218 389 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k4-slider" "k4"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 282 389 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k5-slider" "k5"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 349 388 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k6-slider" "k6"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 414 388 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k7-slider" "k7"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 479 385 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k8-slider" "k8"   
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 425 34 60 40 
            org.nlogo.aggregate.gui.WrappedStock "B1.B2" "0" 1   
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 247 294 60 40 
            org.nlogo.aggregate.gui.WrappedStock "B1.EGF" "0\n" 1   
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 595 383 60 40 
            org.nlogo.aggregate.gui.WrappedStock "B22.R2" "0" 1   
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 1132 500 60 40 
            org.nlogo.aggregate.gui.WrappedStock "B23.NP.R3" "0" 1   
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 428 296 60 40 
            org.nlogo.aggregate.gui.WrappedStock "B1.B2.EGF" "0" 1   
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 427 201 60 40 
            org.nlogo.aggregate.gui.WrappedStock "B1.B2.R2" "0" 1   
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 425 109 60 40 
            org.nlogo.aggregate.gui.WrappedStock "B1.B2.R" "0" 1   
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 593 295 60 40 
            org.nlogo.aggregate.gui.WrappedStock "B22.R" "0" 1   
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 757 32 60 40 
            org.nlogo.aggregate.gui.WrappedStock "B2.B3" "0" 1   
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 929 197 60 40 
            org.nlogo.aggregate.gui.WrappedStock "Her" "Her-initial-slider" 1   
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 757 112 60 40 
            org.nlogo.aggregate.gui.WrappedStock "B2.B3.R" "0" 1   
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 932 287 60 40 
            org.nlogo.aggregate.gui.WrappedStock "B3.Her" "0" 1   
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 248 203 60 40 
            org.nlogo.aggregate.gui.WrappedStock "EGF" "EGF-initial-slider" 1   
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 591 201 60 40 
            org.nlogo.aggregate.gui.WrappedStock "B22" "0" 1   
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 1130 421 60 40 
            org.nlogo.aggregate.gui.WrappedStock "B23.NP.R2" "0" 1   
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 1130 343 60 40 
            org.nlogo.aggregate.gui.WrappedStock "B22.NP.R2" "0" 1   
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 1127 259 60 40 
            org.nlogo.aggregate.gui.WrappedStock "B22.NP.R" "0" 1   
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 762 199 60 40 
            org.nlogo.aggregate.gui.WrappedStock "B2.B3.R2" "0" 1   
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 763 280 60 40 
            org.nlogo.aggregate.gui.WrappedStock "B2.B3.Her" "0" 1   
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 1121 28 60 40 
            org.nlogo.aggregate.gui.WrappedStock "NP" "NP-initial-slider" 1   
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 1121 101 60 40 
            org.nlogo.aggregate.gui.WrappedStock "B2.NP" "0" 1   
        org.nlogo.aggregate.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 1124 182 60 40 
            org.nlogo.aggregate.gui.WrappedStock "B2.NP.R" "0" 1   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 521 37 30 30  
        org.nlogo.aggregate.gui.RateConnection 3 551 52 564 52 578 52 NULL NULL 0 0 0 
            org.jhotdraw.figures.ChopEllipseConnector REF 140  
            org.jhotdraw.standard.ChopBoxConnector REF 40  
            org.nlogo.aggregate.gui.WrappedRate "( ( k6 * B2.R ) - ( k5 * B2 * R ) - ( k11 * B1.EGF * B2 ) - ( k16 * B3.Her * B2 ) - ( k19 * B2 * NP ) - ( k23 * B2.NP.R * B2 ) - ( k27 * B22.NP.R2 * B2 ) + ( k32 * B1.B2 ) - ( k31 * B1 * B2 ) + ( k36 * B1.B2.R ) - ( k35 * B1.R * B2 ) + ( k43 * B2.B3 ) - ( k42 * B2 * B3 ) + ( k49 * B2.B3.R ) - ( k48 * B2 * B3.R ) + ( k54 * B22 ) - ( k53 * B2 ^ 2 ) + ( k58 * B22.R ) - ( k57 * B2.R * B2 ) )" "B2-flow" 
                org.nlogo.aggregate.gui.WrappedReservoir  REF 41 0   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 847 111 30 30  
        org.nlogo.aggregate.gui.RateConnection 3 877 126 896 126 916 126 NULL NULL 0 0 0 
            org.jhotdraw.figures.ChopEllipseConnector REF 146  
            org.jhotdraw.standard.ChopBoxConnector REF 46  
            org.nlogo.aggregate.gui.WrappedRate "( ( k7 * B3 * R ) - ( k8 * B3.R ) - ( k15 * B3.R * Her ) + ( k49 * B2.B3.R ) - ( k48 * B2 * B3.R ) + ( k52 * B2.B3.R2 ) - ( k51 * B2.R * B3.R ) )" "B3.R-flow" 
                org.nlogo.aggregate.gui.WrappedReservoir  REF 47 0   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 699 431 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k26-slider" "k26"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 759 432 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k27-slider" "k27"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 820 432 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k28-slider" "k28"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 877 430 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k29-slider" "k29"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 880 344 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k19-slider" "k19"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 940 429 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k30-slider" "k30"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 54 437 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k9-slider" "k9"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 120 434 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k10-slider\n" "k10"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 183 433 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k11-slider" "k11"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 247 433 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k12-slider" "k12"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 313 429 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k13-slider" "k13"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 381 430 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k14-slider" "k14"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 447 432 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k15-slider" "k15"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 672 470 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k41-slider" "k41"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 512 433 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k16-slider" "k16"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 610 471 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k40-slider" "k40"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 790 472 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k43-slider" "k43"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 730 472 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k42-slider" "k42"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 911 470 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k45-slider" "k45"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 850 471 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k44-slider" "k44"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 548 471 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k39-slider" "k39"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 971 468 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k46-slider" "k46"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 823 343 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k18-slider" "k18"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 20 480 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k31-slider" "k31"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 87 487 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k32-slider" "k32"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 246 532 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k50-slider" "k50"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 880 512 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k60-slider" "k60"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 848 386 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k23-slider" "k23"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 759 516 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k58-slider" "k58"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 940 513 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k61-slider" "k61"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 179 529 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k49-slider" "k49"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 639 518 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k56-slider" "k56"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 117 530 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k48-slider" "k48"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 698 518 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k57-slider" "k57"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 280 479 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k35-slider" "k35"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 822 514 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k59-slider" "k59"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 576 518 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k55-slider" "k55"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 515 517 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k54-slider" "k54"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 446 515 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k53-slider" "k53"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 379 515 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k52-slider" "k52"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 348 475 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k36-slider" "k36"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 761 343 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k17-slider" "k17"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 313 530 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k51-slider" "k51"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 941 348 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k20-slider" "k20"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 50 527 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k47-slider" "k47"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 150 485 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k33-slider" "k33"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 215 485 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k34-slider" "k34"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 972 387 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k25-slider" "k25"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 909 383 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k24-slider" "k24"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 790 386 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k22-slider" "k22"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 729 383 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k21-slider" "k21"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 413 478 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k37-slider" "k37"   
        org.nlogo.aggregate.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 478 477 50 50 
            org.nlogo.aggregate.gui.WrappedConverter "k38-slider" "k38"   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 175 297 30 30  
        org.nlogo.aggregate.gui.RateConnection 3 205 312 220 312 235 312 NULL NULL 0 0 0 
            org.jhotdraw.figures.ChopEllipseConnector REF 258  
            org.jhotdraw.standard.ChopBoxConnector REF 98  
            org.nlogo.aggregate.gui.WrappedRate "( ( k9 * B1 * EGF ) + ( k10 * B1.R * EGF ) - ( k11 * B1.EGF * B2 ) + ( k13 * B1.B2.EGF * R ) - ( k12 * B1.EGF * B2.R ) )" "B1.EGF-flow" 
                org.nlogo.aggregate.gui.WrappedReservoir  REF 99 0   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 175 209 30 30  
        org.nlogo.aggregate.gui.RateConnection 3 205 224 220 223 236 223 NULL NULL 0 0 0 
            org.jhotdraw.figures.ChopEllipseConnector REF 264  
            org.jhotdraw.standard.ChopBoxConnector REF 120  
            org.nlogo.aggregate.gui.WrappedRate "( ( -1 * k9 * B1 * EGF ) - ( k10 * B1.R * EGF ) )" "EGF-flow" 
                org.nlogo.aggregate.gui.WrappedReservoir  REF 121 0   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 339 38 30 30  
        org.nlogo.aggregate.gui.RateConnection 3 369 53 391 53 413 53 NULL NULL 0 0 0 
            org.jhotdraw.figures.ChopEllipseConnector REF 270  
            org.jhotdraw.standard.ChopBoxConnector REF 96  
            org.nlogo.aggregate.gui.WrappedRate "( ( k31 * B1 * B2 ) - ( k32 * B1.B2 ) + ( k34 * B1.B2.R ) - ( k33 * B1.B2 * R ) )" "B1.B2-flow" 
                org.nlogo.aggregate.gui.WrappedReservoir  REF 97 0   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 356 112 30 30  
        org.nlogo.aggregate.gui.RateConnection 3 386 127 399 127 413 127 NULL NULL 0 0 0 
            org.jhotdraw.figures.ChopEllipseConnector REF 276  
            org.jhotdraw.standard.ChopBoxConnector REF 108  
            org.nlogo.aggregate.gui.WrappedRate "( ( k33 * B1.B2 * R ) - ( k34 * B1.B2.R ) + ( k35 * B1.R * B2 ) - ( k36 * B1.B2.R ) + ( k37 * B1 * B2.R ) - ( k38 * B1.B2.R ) - ( k39 * B1.B2.R * R ) )" "B1.B2.R-flow" 
                org.nlogo.aggregate.gui.WrappedReservoir  REF 109 0   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 354 204 30 30  
        org.nlogo.aggregate.gui.RateConnection 3 384 219 399 219 415 219 NULL NULL 0 0 0 
            org.jhotdraw.figures.ChopEllipseConnector REF 282  
            org.jhotdraw.standard.ChopBoxConnector REF 106  
            org.nlogo.aggregate.gui.WrappedRate "( ( k39 * B1.B2.R * R ) + ( k40 * B1.R * B2.R ) - ( k41 * B1.B2.R2 ) )" "B1.B2.R2-flow" 
                org.nlogo.aggregate.gui.WrappedReservoir  REF 107 0   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 341 295 30 30  
        org.nlogo.aggregate.gui.RateConnection 3 371 311 393 312 416 313 NULL NULL 0 0 0 
            org.jhotdraw.figures.ChopEllipseConnector REF 288  
            org.jhotdraw.standard.ChopBoxConnector REF 104  
            org.nlogo.aggregate.gui.WrappedRate "( ( k11 * B1.EGF * B2 ) + ( k12 * B1.EGF * B2.R ) - ( k13 * B1.B2.EGF * R ) )" "B1.B2.EGF-flow" 
                org.nlogo.aggregate.gui.WrappedReservoir  REF 105 0   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 520 198 30 30  
        org.nlogo.aggregate.gui.RateConnection 3 550 214 564 215 579 216 NULL NULL 0 0 0 
            org.jhotdraw.figures.ChopEllipseConnector REF 294  
            org.jhotdraw.standard.ChopBoxConnector REF 122  
            org.nlogo.aggregate.gui.WrappedRate "( ( k53 * B2 ^ 2 ) - ( k54 * B22 ) + ( k56 * B22.R ) - ( k55 * B22 * R ) )" "B22-flow" 
                org.nlogo.aggregate.gui.WrappedReservoir  REF 123 0   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 519 294 30 30  
        org.nlogo.aggregate.gui.RateConnection 3 549 310 565 311 581 312 NULL NULL 0 0 0 
            org.jhotdraw.figures.ChopEllipseConnector REF 300  
            org.jhotdraw.standard.ChopBoxConnector REF 110  
            org.nlogo.aggregate.gui.WrappedRate "( ( k55 * B22 * R ) - ( k56 * B22.R ) + ( k57 * B2.R * B2 ) - ( k58 * B22.R ) - ( k59 * B22.R * R ) )" "B22.R-flow" 
                org.nlogo.aggregate.gui.WrappedReservoir  REF 111 0   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 518 365 30 30  
        org.nlogo.aggregate.gui.RateConnection 3 548 384 565 388 583 392 NULL NULL 0 0 0 
            org.jhotdraw.figures.ChopEllipseConnector REF 306  
            org.jhotdraw.standard.ChopBoxConnector REF 100  
            org.nlogo.aggregate.gui.WrappedRate "( ( k59 * B22.R * R ) + ( k60 * B2.R ^ 2 ) - ( k61 * B22.R2 ) )" "B22.R2-flow" 
                org.nlogo.aggregate.gui.WrappedReservoir  REF 101 0   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 676 36 30 30  
        org.nlogo.aggregate.gui.RateConnection 3 706 51 725 51 745 51 NULL NULL 0 0 0 
            org.jhotdraw.figures.ChopEllipseConnector REF 312  
            org.jhotdraw.standard.ChopBoxConnector REF 112  
            org.nlogo.aggregate.gui.WrappedRate "( ( k42 * B2 * B3 ) - ( k43 * B2.B3 ) + ( k45 * B2.B3.R ) - ( k44 * B2.B3 * R ) )" "B2.B3-flow" 
                org.nlogo.aggregate.gui.WrappedReservoir  REF 113 0   
        org.nlogo.aggregate.gui.RateConnection 3 697 129 721 129 745 130 NULL NULL 0 0 0 
            org.jhotdraw.figures.ChopEllipseConnector REF 78  
            org.jhotdraw.standard.ChopBoxConnector REF 116  
            org.nlogo.aggregate.gui.WrappedRate "( ( k44 * B2.B3 * R ) - ( k45 * B2.B3.R ) + ( k46 * B2.R * B3 ) - ( k47 * B2.B3.R ) + ( k48 * B2 * B3.R ) - ( k49 * B2.B3.R ) - ( k50 * B2.B3.R * R ) )" "B2.B3.R-flow" 
                org.nlogo.aggregate.gui.WrappedReservoir  REF 117 0   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 676 204 30 30  
        org.nlogo.aggregate.gui.RateConnection 3 706 219 728 219 750 219 NULL NULL 0 0 0 
            org.jhotdraw.figures.ChopEllipseConnector REF 323  
            org.jhotdraw.standard.ChopBoxConnector REF 130  
            org.nlogo.aggregate.gui.WrappedRate "( ( k50 * B2.B3.R * R ) + ( k51 * B2.R * B3.R ) - ( k52 * B2.B3.R2 ) )" "B2.B3.R2-flow" 
                org.nlogo.aggregate.gui.WrappedReservoir  REF 131 0   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 674 284 30 30  
        org.nlogo.aggregate.gui.RateConnection 3 704 299 727 299 751 299 NULL NULL 0 0 0 
            org.jhotdraw.figures.ChopEllipseConnector REF 329  
            org.jhotdraw.standard.ChopBoxConnector REF 132  
            org.nlogo.aggregate.gui.WrappedRate "( ( k16 * B3.Her * B2 ) + ( k17 * B3.Her * B2.R ) - ( k18 * B2.B3.Her * R ) )" "B2.B3.Her-flow" 
                org.nlogo.aggregate.gui.WrappedReservoir  REF 133 0   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 849 195 30 30  
        org.nlogo.aggregate.gui.RateConnection 3 879 211 898 212 917 213 NULL NULL 0 0 0 
            org.jhotdraw.figures.ChopEllipseConnector REF 335  
            org.jhotdraw.standard.ChopBoxConnector REF 114  
            org.nlogo.aggregate.gui.WrappedRate "( ( -1 * k14 * B3 * Her ) - ( k15 * B3.R * Her ) )" "Her-flow" 
                org.nlogo.aggregate.gui.WrappedReservoir  REF 115 0   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 856 282 30 30  
        org.nlogo.aggregate.gui.RateConnection 3 886 298 903 300 920 302 NULL NULL 0 0 0 
            org.jhotdraw.figures.ChopEllipseConnector REF 341  
            org.jhotdraw.standard.ChopBoxConnector REF 118  
            org.nlogo.aggregate.gui.WrappedRate "( ( k14 * B3 * Her ) + ( k15 * B3.R * Her ) - ( k16 * B3.Her * B2 ) + ( k18 * B2.B3.Her * R ) - ( k17 * B3.Her * B2.R ) )" "B3.Her-flow" 
                org.nlogo.aggregate.gui.WrappedReservoir  REF 119 0   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 1022 35 30 30  
        org.nlogo.aggregate.gui.RateConnection 3 1052 50 1080 49 1109 48 NULL NULL 0 0 0 
            org.jhotdraw.figures.ChopEllipseConnector REF 347  
            org.jhotdraw.standard.ChopBoxConnector REF 134  
            org.nlogo.aggregate.gui.WrappedRate "( ( -1 * k19 * B2 * NP ) + ( k21 * B2.NP.R ) - ( k20 * B2.R * NP ) )" "NP-flow" 
                org.nlogo.aggregate.gui.WrappedReservoir  REF 135 0   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 1038 108 30 30  
        org.nlogo.aggregate.gui.RateConnection 3 1068 123 1088 122 1109 121 NULL NULL 0 0 0 
            org.jhotdraw.figures.ChopEllipseConnector REF 353  
            org.jhotdraw.standard.ChopBoxConnector REF 136  
            org.nlogo.aggregate.gui.WrappedRate "( ( k19 * B2 * NP ) - ( k22 * B2.NP * R ) )" "B2.NP-flow" 
                org.nlogo.aggregate.gui.WrappedReservoir  REF 137 0   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 1027 186 30 30  
        org.nlogo.aggregate.gui.RateConnection 3 1057 201 1084 201 1112 201 NULL NULL 0 0 0 
            org.jhotdraw.figures.ChopEllipseConnector REF 359  
            org.jhotdraw.standard.ChopBoxConnector REF 138  
            org.nlogo.aggregate.gui.WrappedRate "( ( k20 * B2.R * NP ) - ( k21 * B2.NP.R ) + ( k22 * B2.NP * R ) - ( k23 * B2.NP.R * B2 ) + ( k25 * B22.NP.R2 ) - ( k24 * B2.NP.R * B2.R ) )" "B2.NP.R-flow" 
                org.nlogo.aggregate.gui.WrappedReservoir  REF 139 0   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 1045 254 30 30  
        org.nlogo.aggregate.gui.RateConnection 3 1075 270 1095 272 1115 274 NULL NULL 0 0 0 
            org.jhotdraw.figures.ChopEllipseConnector REF 365  
            org.jhotdraw.standard.ChopBoxConnector REF 128  
            org.nlogo.aggregate.gui.WrappedRate "( ( k23 * B2.NP.R * B2 ) - ( k26 * B22.NP.R * R ) )" "B22.NP.R-flow" 
                org.nlogo.aggregate.gui.WrappedReservoir  REF 129 0   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 1058 340 30 30  
        org.nlogo.aggregate.gui.RateConnection 3 1088 356 1103 357 1118 358 NULL NULL 0 0 0 
            org.jhotdraw.figures.ChopEllipseConnector REF 371  
            org.jhotdraw.standard.ChopBoxConnector REF 126  
            org.nlogo.aggregate.gui.WrappedRate "( ( k24 * B2.NP.R * B2.R ) - ( k25 * B22.NP.R2 ) + ( k26 * B22.NP.R * R ) - ( k27 * B22.NP.R2 * B2 ) + ( k29 * B23.NP.R3 ) - ( k28 * B22.NP.R2 * B2.R ) )" "B22.NP.R2-flow" 
                org.nlogo.aggregate.gui.WrappedReservoir  REF 127 0   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 1049 426 30 30  
        org.nlogo.aggregate.gui.RateConnection 3 1079 441 1098 441 1118 441 NULL NULL 0 0 0 
            org.jhotdraw.figures.ChopEllipseConnector REF 377  
            org.jhotdraw.standard.ChopBoxConnector REF 124  
            org.nlogo.aggregate.gui.WrappedRate "( ( k27 * B22.NP.R2 * B2 ) - ( k30 * B23.NP.R2 * R ) )" "B23.NP.R2-flow" 
                org.nlogo.aggregate.gui.WrappedReservoir  REF 125 0   
        org.nlogo.aggregate.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 1048 504 30 30  
        org.nlogo.aggregate.gui.RateConnection 3 1078 519 1099 519 1120 519 NULL NULL 0 0 0 
            org.jhotdraw.figures.ChopEllipseConnector REF 383  
            org.jhotdraw.standard.ChopBoxConnector REF 102  
            org.nlogo.aggregate.gui.WrappedRate "( ( k28 * B22.NP.R2 * B2.R ) - ( k29 * B23.NP.R3 ) + ( k30 * B23.NP.R2 * R ) )" "B23.NP.R3-flow" 
                org.nlogo.aggregate.gui.WrappedReservoir  REF 103 0    
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
