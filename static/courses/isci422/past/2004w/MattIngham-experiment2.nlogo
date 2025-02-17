
;; viral attributes for each type of virus.  path = pathogenicity, vir=  virulence, HA = HA type, NA = NA type, inter = HA/NA interaction coeffecient
globals 
  [path vir HA NA inter colors deaths totaldays]


;; attributes for each turtle for each virus.  Inf = infected (true/false), days = days infected with that virus, imm = days left immune, life = life of that person
turtles-own
  [inf days imm life]

;; setting up values for all the different variables at the start of the simulation
breeds [people]
to setup
  ca 
  set deaths [0 0 0 0 0]
  set totaldays 0
  set path [1000 1000 200 300 1000]
  set vir [10 10 400 400 750]
  set inter [1 1 1 1 1]
  set HA [1 3 4 4 4]
  set NA [1 2 6 1 2]
  
  ;; creates population of uninfected people
  create-custom-people startpop [
    setxy random-float screen-size-x
            random-float screen-size-y
    set color green
    set colors [105 125 85 gray red]
    set inf  [false false false false false]
    set days [0 0 0 0 0 ]
    set imm  [0 0 0 0 0 ]
    set life (random 8000)
   ]              
  
   ;; infects about 1 in 150 people with H1N1 or H3N2
     let ctr 1
    let finish round (startpop / 300)
    while [ctr < finish]
    [
    ask random-one-of turtles [set inf replace-item 0 inf true 
       set color (item 0 colors)
       set days replace-item 0 days 1]
    ask random-one-of turtles [set inf replace-item 1 inf true 
       set color (item 1 colors)
       set days replace-item 1 days 1 ]
     set ctr ctr + 1  
     ]
    ask turtles [initimmune]
end


;; gives some people some immunity to H1N1 or H3N2   
to initimmune
  let checkctr 0
  while [checkctr < 2] [
     if random 6 < 1 [set imm replace-item checkctr imm (random 150) ]
  set checkctr (checkctr + 1)    
  ]
end   


;; simulates a day   
to step
set totaldays totaldays + 1
show totaldays
if totaldays = 1000 [stop]

;; moves the people, and causes them to die of old age
  ask turtles [fd random 3]
  ask turtles [rt random 360]
  ask turtles[
    set life life + 1
    if life > 8000 [die]
    ]
  
  ;; simulates birth of new people
  if random 20 < 1 [  
  create-custom-people round (count turtles * .004) [
    setxy random-float screen-size-x
            random-float screen-size-y
    set color green
    set inf  [false false false false false]
    set days [0 0 0 0 0 ] 
    set imm  [0 0 0 0 0 ]
    set life 0
    ]  
  ]  
    graph
    
  if random 100 < 2 [avian]
    
  ask turtles[ 
   vcheck
   death
   infect
   badluck
   ]
end


;; randomly gives a small portion of the population one of the avian flus I'm modeling
to avian
    let ctr 0
    let virus 2
    while [ctr < count turtles / avianinfect] [
    ask random-one-of turtles [
           set inf replace-item virus inf true set color (item virus colors) set days replace-item virus days 1]
           set ctr ctr + 1
    ]
end

;; randomly infects people getting infected with H1N1, H3N2 (simulates them leaving and returning with an infection)
to badluck
    if random 5000 < 1 [if (item 0 imm) = 0 [set inf replace-item 0 inf true set color (item 0 colors) ] ]
    if random 5000 < 1 [if (item 1 imm) = 0 [set inf replace-item 1 inf true set color (item 1 colors) ] ]
end

to graph
  let ctr 0
  while [ctr < 5]
  [
   set-current-plot "Infected"
   set-current-plot-pen word ctr ctr
   plot count turtles with [item ctr inf]
   set ctr ctr + 1
   ]
   
   set ctr 0
   
   while [ctr < 5]  
   [ 
   set-current-plot "Immune"
   set-current-plot-pen word ctr ctr
   plot count turtles with [item ctr imm > 0]
   set ctr ctr + 1
   ]
   
   set-current-plot "Total"
   plot count turtles
end


;; checks status of all virues people are infected with, updates variables like days
to vcheck
  let checkctr 0
  foreach inf[
  if ? 
     [set days replace-item checkctr days (item checkctr days + 1)
     ] 
     let ctr checkctr + 1
     while [ctr < 5]
       [
        if (ctr > checkctr) [
         if (item ctr inf) [
           if random (100 - reassortrate) < 1 [
            ifelse random 2 < 1 [ reassort (item checkctr HA) (item ctr NA)  ]
                                [ reassort (item ctr HA) (item checkctr NA)  ]
            ]
           ]         
      set ctr ctr + 1    
        ]
     ]
     set checkctr (checkctr + 1)    
    ]
  
  set checkctr 0
  foreach imm[
  if ? > 0 [set imm replace-item checkctr imm (item checkctr imm - 1)] 
  set checkctr (checkctr + 1)
     ]
end

;; if reassortment is determined to have occurred, causes infection of that person with the new subtype
to reassort [HAptn NAptn]
   let ctr 0
   if NAptn < 3 [
   while [ctr < 5] [
   if (item ctr HA) = HAptn [
     if (item ctr NA) = NAptn [
       set inf replace-item ctr inf true 
       set color (item ctr colors)
       set days replace-item ctr days 1
       ]
      ]
      set ctr ctr + 1
     ]
     ]
end 


;; after infection, each person has a random chance of dying
to death
  let checkctr 0  
  foreach days[
  if ? > 3 [ifelse random 1000 < item checkctr vir
    [set deaths replace-item checkctr deaths ((item checkctr deaths) + 1)
     die] 
    [immune checkctr ]
    ]   
  set checkctr (checkctr + 1)
  ]
end

;; if the person does not die, they become immune for about a year.
to immune [checkctr]
  set inf replace-item checkctr inf false
  set days replace-item checkctr days 0
  set imm replace-item checkctr imm 150
  set color green
end


;; if two people are in the same place, they can infect each other with probabilites based on the pathogenicities of the viruses they are infected with
to infect
  let checkctr 0
  foreach inf 
   [
    if ? 
      [ask turtles-here 
        [ifelse  (item checkctr imm) = 0 
          [if (random 10000 < (item checkctr path)*(item checkctr inter) * (infectrate / 100)) 
            [set inf replace-item checkctr inf true
            set days replace-item checkctr days 1 
            set color (item checkctr colors)]
            ]
           [if random 200 > (item checkctr imm) [if (random 10000 < (item checkctr path)*(item checkctr inter) * (infectrate / 100) )
            [set inf replace-item checkctr inf true
            set days replace-item checkctr days 1 
            set color (item checkctr colors)]
           ]
           ]
        ]
      ]
      set checkctr checkctr + 1
    ]
end

to printdeaths
foreach deaths [show ?]
end
  
@#$#@#$#@
GRAPHICS-WINDOW
226
10
416
221
7
7
12.0
1
10
1
1
1
0

CC-WINDOW
5
459
966
554
Command Center

BUTTON
6
10
69
43
NIL
setup
NIL
1
T
OBSERVER
T
NIL

BUTTON
79
10
142
43
NIL
step
T
1
T
OBSERVER
T
NIL

SLIDER
5
54
177
87
startpop
startpop
0
6000
2713
1
1
NIL

PLOT
463
21
957
416
Infected
Days
Infected
0.0
1.0
0.0
20.0
true
false
PENS
"00" 1.0 0 -16776961 true
"11" 1.0 0 -65281 true
"22" 1.0 0 -16711738 true
"33" 1.0 0 -7566196 true
"44" 1.0 0 -65536 true
"55" 1.0 0 -65536 true
"66" 1.0 0 -44544 true
"77" 1.0 0 -6524078 true
"88" 1.0 0 -11352576 true
"99" 1.0 0 -65536 true
"1010" 1.0 0 -16776961 true
"1111" 1.0 0 -8716033 true
"1212" 1.0 0 -65281 true
"1313" 1.0 0 -65413 true
"1414" 1.0 0 -16711936 true
"1515" 1.0 0 -65281 true
"1616" 1.0 0 -16711738 true
"1717" 1.0 0 -16711738 true
"1818" 1.0 0 -7566196 true

PLOT
6
252
206
402
Immune
NIL
NIL
0.0
10.0
0.0
10.0
true
false
PENS
"00" 1.0 0 -16776961 true
"11" 1.0 0 -65281 true
"22" 1.0 0 -16711738 true
"99" 1.0 0 -65536 true
"33" 1.0 0 -7566196 true
"44" 1.0 0 -65536 true

PLOT
238
272
438
422
Total
NIL
NIL
0.0
10.0
2000.0
2800.0
true
false

BUTTON
159
10
222
43
NIL
avian
NIL
1
T
OBSERVER
T
NIL

SLIDER
9
96
181
129
avianinfect
avianinfect
0
500
200
5
1
NIL

SLIDER
33
149
205
182
infectrate
infectrate
0
100
36
1
1
NIL

SLIDER
36
194
208
227
reassortrate
reassortrate
0
100
80
5
1
NIL

BUTTON
22
412
116
445
NIL
printdeaths
NIL
1
T
OBSERVER
T
NIL

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
Polygon -7566196 true true 150 5 40 250 150 205 260 250

airplane
true
0
Polygon -7566196 true true 150 0 135 15 120 60 120 105 15 165 15 195 120 180 135 240 105 270 120 285 150 270 180 285 210 270 165 240 180 180 285 195 285 165 180 105 180 60 165 15

arrow
true
0
Polygon -7566196 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

box
false
0
Polygon -7566196 true true 150 285 285 225 285 75 150 135
Polygon -7566196 true true 150 135 15 75 150 15 285 75
Polygon -7566196 true true 15 75 15 225 150 285 150 135
Line -16777216 false 150 285 150 135
Line -16777216 false 150 135 15 75
Line -16777216 false 150 135 285 75

bug
true
0
Circle -7566196 true true 96 182 108
Circle -7566196 true true 110 127 80
Circle -7566196 true true 110 75 80
Line -7566196 true 150 100 80 30
Line -7566196 true 150 100 220 30

butterfly
true
0
Polygon -7566196 true true 150 165 209 199 225 225 225 255 195 270 165 255 150 240
Polygon -7566196 true true 150 165 89 198 75 225 75 255 105 270 135 255 150 240
Polygon -7566196 true true 139 148 100 105 55 90 25 90 10 105 10 135 25 180 40 195 85 194 139 163
Polygon -7566196 true true 162 150 200 105 245 90 275 90 290 105 290 135 275 180 260 195 215 195 162 165
Polygon -16777216 true false 150 255 135 225 120 150 135 120 150 105 165 120 180 150 165 225
Circle -16777216 true false 135 90 30
Line -16777216 false 150 105 195 60
Line -16777216 false 150 105 105 60

car
false
0
Polygon -7566196 true true 300 180 279 164 261 144 240 135 226 132 213 106 203 84 185 63 159 50 135 50 75 60 0 150 0 165 0 225 300 225 300 180
Circle -16777216 true false 180 180 90
Circle -16777216 true false 30 180 90
Polygon -16777216 true false 162 80 132 78 134 135 209 135 194 105 189 96 180 89
Circle -7566196 true true 47 195 58
Circle -7566196 true true 195 195 58

circle
false
0
Circle -7566196 true true 30 30 240

circle 2
false
0
Circle -7566196 true true 16 16 270
Circle -16777216 true false 46 46 210

cow
false
0
Polygon -7566196 true true 200 193 197 249 179 249 177 196 166 187 140 189 93 191 78 179 72 211 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -7566196 true true 73 210 86 251 62 249 48 208
Polygon -7566196 true true 25 114 16 195 9 204 23 213 25 200 39 123

face happy
false
0
Circle -7566196 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240

face neutral
false
0
Circle -7566196 true true 8 7 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Rectangle -16777216 true false 60 195 240 225

face sad
false
0
Circle -7566196 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 168 90 184 62 210 47 232 67 244 90 220 109 205 150 198 192 205 210 220 227 242 251 229 236 206 212 183

fish
false
0
Polygon -1 true false 44 131 21 87 15 86 0 120 15 150 0 180 13 214 20 212 45 166
Polygon -1 true false 135 195 119 235 95 218 76 210 46 204 60 165
Polygon -1 true false 75 45 83 77 71 103 86 114 166 78 135 60
Polygon -7566196 true true 30 136 151 77 226 81 280 119 292 146 292 160 287 170 270 195 195 210 151 212 30 166
Circle -16777216 true false 215 106 30

flag
false
0
Rectangle -7566196 true true 60 15 75 300
Polygon -7566196 true true 90 150 270 90 90 30
Line -7566196 true 75 135 90 135
Line -7566196 true 75 45 90 45

flower
false
0
Polygon -11352576 true false 135 120 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7566196 true true 85 132 38
Circle -7566196 true true 130 147 38
Circle -7566196 true true 192 85 38
Circle -7566196 true true 85 40 38
Circle -7566196 true true 177 40 38
Circle -7566196 true true 177 132 38
Circle -7566196 true true 70 85 38
Circle -7566196 true true 130 25 38
Circle -7566196 true true 96 51 108
Circle -16777216 true false 113 68 74
Polygon -11352576 true false 189 233 219 188 249 173 279 188 234 218
Polygon -11352576 true false 180 255 150 210 105 210 75 240 135 240

house
false
0
Rectangle -7566196 true true 45 120 255 285
Rectangle -16777216 true false 120 210 180 285
Polygon -7566196 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120

leaf
false
0
Polygon -7566196 true true 150 210 135 195 120 210 60 210 30 195 60 180 60 165 15 135 30 120 15 105 40 104 45 90 60 90 90 105 105 120 120 120 105 60 120 60 135 30 150 15 165 30 180 60 195 60 180 120 195 120 210 105 240 90 255 90 263 104 285 105 270 120 285 135 240 165 240 180 270 195 240 210 180 210 165 195
Polygon -7566196 true true 135 195 135 240 120 255 105 255 105 285 135 285 165 240 165 195

line
true
0
Line -7566196 true 150 0 150 300

pentagon
false
0
Polygon -7566196 true true 150 15 15 120 60 285 240 285 285 120

person
false
0
Circle -7566196 true true 110 5 80
Polygon -7566196 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Rectangle -7566196 true true 127 79 172 94
Polygon -7566196 true true 195 90 240 150 225 180 165 105
Polygon -7566196 true true 105 90 60 150 75 180 135 105

plant
false
0
Rectangle -7566196 true true 135 90 165 300
Polygon -7566196 true true 135 255 90 210 45 195 75 255 135 285
Polygon -7566196 true true 165 255 210 210 255 195 225 255 165 285
Polygon -7566196 true true 135 180 90 135 45 120 75 180 135 210
Polygon -7566196 true true 165 180 165 210 225 180 255 120 210 135
Polygon -7566196 true true 135 105 90 60 45 45 75 105 135 135
Polygon -7566196 true true 165 105 165 135 225 105 255 45 210 60
Polygon -7566196 true true 135 90 120 45 150 15 180 45 165 90

square
false
0
Rectangle -7566196 true true 30 30 270 270

square 2
false
0
Rectangle -7566196 true true 30 30 270 270
Rectangle -16777216 true false 60 60 240 240

star
false
0
Polygon -7566196 true true 60 270 150 0 240 270 15 105 285 105
Polygon -7566196 true true 75 120 105 210 195 210 225 120 150 75

target
false
0
Circle -7566196 true true 0 0 300
Circle -16777216 true false 30 30 240
Circle -7566196 true true 60 60 180
Circle -16777216 true false 90 90 120
Circle -7566196 true true 120 120 60

tree
false
0
Circle -7566196 true true 118 3 94
Rectangle -6524078 true false 120 195 180 300
Circle -7566196 true true 65 21 108
Circle -7566196 true true 116 41 127
Circle -7566196 true true 45 90 120
Circle -7566196 true true 104 74 152

triangle
false
0
Polygon -7566196 true true 150 30 15 255 285 255

triangle 2
false
0
Polygon -7566196 true true 150 30 15 255 285 255
Polygon -16777216 true false 151 99 225 223 75 224

truck
false
0
Rectangle -7566196 true true 4 45 195 187
Polygon -7566196 true true 296 193 296 150 259 134 244 104 208 104 207 194
Rectangle -1 true false 195 60 195 105
Polygon -16777216 true false 238 112 252 141 219 141 218 112
Circle -16777216 true false 234 174 42
Rectangle -7566196 true true 181 185 214 194
Circle -16777216 true false 144 174 42
Circle -16777216 true false 24 174 42
Circle -7566196 false true 24 174 42
Circle -7566196 false true 144 174 42
Circle -7566196 false true 234 174 42

turtle
true
0
Polygon -11352576 true false 215 204 240 233 246 254 228 266 215 252 193 210
Polygon -11352576 true false 195 90 225 75 245 75 260 89 269 108 261 124 240 105 225 105 210 105
Polygon -11352576 true false 105 90 75 75 55 75 40 89 31 108 39 124 60 105 75 105 90 105
Polygon -11352576 true false 132 85 134 64 107 51 108 17 150 2 192 18 192 52 169 65 172 87
Polygon -11352576 true false 85 204 60 233 54 254 72 266 85 252 107 210
Polygon -7566196 true true 119 75 179 75 209 101 224 135 220 225 175 261 128 261 81 224 74 135 88 99

wheel
false
0
Circle -7566196 true true 3 3 294
Circle -16777216 true false 30 30 240
Line -7566196 true 150 285 150 15
Line -7566196 true 15 150 285 150
Circle -7566196 true true 120 120 60
Line -7566196 true 216 40 79 269
Line -7566196 true 40 84 269 221
Line -7566196 true 40 216 269 79
Line -7566196 true 84 40 221 269

x
false
0
Polygon -7566196 true true 270 75 225 30 30 225 75 270
Polygon -7566196 true true 30 75 75 30 270 225 225 270

@#$#@#$#@
NetLogo 2.1.0
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
