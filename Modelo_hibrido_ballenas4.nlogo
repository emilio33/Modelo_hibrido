globals [Banderas_nuevas]

breed [ fish ]
breed [boats boat]

to setup
  ca
  create-turtles 95 [
    set shape "fish"
    set color gray
    setxy random-xcor random-ycor]
  set-default-shape boats "boat"
  ask patches [ set pcolor blue ]
  agent-setup
  system-dynamics-setup
  reset-ticks
end

to go
  agent-go
  system-dynamics-go

  ask boats [
    rt random 50
  lt random 50
  fd 1]

  ask turtles [
    fd 5
    lt random 90]

  tick
end

to agent-setup                                                              ;; Agent-Based rule setup for model.

  ask n-of Embarcaciones_operando patches with [ not any? turtles-here ]
      [ sprout-boats 1
      [set color green
      set size 2
      setxy random-xcor random-ycor]
  ]
end

to agent-go
  if Entrada_T >= 200
  [set Banderas_nuevas (Banderas_adicionales  + 2)
     ]
 end
@#$#@#$#@
GRAPHICS-WINDOW
210
10
733
554
16
16
15.55
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
1
1
1
ticks
30.0

BUTTON
22
121
86
154
Setup
setup
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
124
121
187
154
Go
go
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

MONITOR
20
204
121
249
Tourists
T
1
1
11

SLIDER
11
70
183
103
Banderas_iniciales
Banderas_iniciales
0
300
22
1
1
NIL
HORIZONTAL

MONITOR
18
267
135
312
NIL
Poblacion_ballenas
2
1
11

SLIDER
11
18
193
51
Ballenas_ideales_turista
Ballenas_ideales_turista
0
1.0000
0.2101
0.0100
1
NIL
HORIZONTAL

PLOT
740
13
1098
238
Whales
Time
Whales
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"default" 1.0 0 -12895429 true "" "plot Poblacion_ballenas"

PLOT
744
262
1101
486
Boats
Time
Boats
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"default" 1.0 0 -14439633 true "" "plot Embarcaciones_operando"

BUTTON
66
164
129
197
go
go
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

TEXTBOX
25
367
175
427
Los ticks van de 2 en 2\nEl número de ballenas y embarcaciones no se actualiza en el mundo
12
14.0
1

@#$#@#$#@
## WHAT IS IT?

(a general understanding of what the model is trying to show or explain)

## HOW IT WORKS

(what rules the agents use to create the overall behavior of the model)

## HOW TO USE IT

(how to use the model, including a description of each of the items in the Interface tab)

## THINGS TO NOTICE

(suggested things for the user to notice while running the model)

## THINGS TO TRY

(suggested things for the user to try to do (move sliders, switches, etc.) with the model)

## EXTENDING THE MODEL

(suggested things to add or change in the Code tab to make the model more complicated, detailed, accurate, etc.)

## NETLOGO FEATURES

(interesting or unusual features of NetLogo that the model uses, particularly in the Code tab; or where workarounds were needed for missing features)

## RELATED MODELS

(models in the NetLogo Models Library and elsewhere which are of related interest)

## CREDITS AND REFERENCES

(a reference to the model's URL on the web if it has one, as well as any other necessary credits, citations, and links)
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

boat
false
0
Polygon -1 true false 63 162 90 207 223 207 290 162
Rectangle -6459832 true false 150 32 157 162
Polygon -13345367 true false 150 34 131 49 145 47 147 48 149 49
Polygon -7500403 true true 158 33 230 157 182 150 169 151 157 156
Polygon -7500403 true true 149 55 88 143 103 139 111 136 117 139 126 145 130 147 139 147 146 146 149 55

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

fish 3
false
0
Polygon -7500403 true true 137 105 124 83 103 76 77 75 53 104 47 136
Polygon -7500403 true true 226 194 223 229 207 243 178 237 169 203 167 175
Polygon -7500403 true true 137 195 124 217 103 224 77 225 53 196 47 164
Polygon -7500403 true true 40 123 32 109 16 108 0 130 0 151 7 182 23 190 40 179 47 145
Polygon -7500403 true true 45 120 90 105 195 90 275 120 294 152 285 165 293 171 270 195 210 210 150 210 45 180
Circle -1184463 true false 244 128 26
Circle -16777216 true false 248 135 14
Line -16777216 false 48 121 133 96
Line -16777216 false 48 179 133 204
Polygon -7500403 true true 241 106 241 77 217 71 190 75 167 99 182 125
Line -16777216 false 226 102 158 95
Line -16777216 false 171 208 225 205
Polygon -1 true false 252 111 232 103 213 132 210 165 223 193 229 204 247 201 237 170 236 137
Polygon -1 true false 135 98 140 137 135 204 154 210 167 209 170 176 160 156 163 126 171 117 156 96
Polygon -16777216 true false 192 117 171 118 162 126 158 148 160 165 168 175 188 183 211 186 217 185 206 181 172 171 164 156 166 133 174 121
Polygon -1 true false 40 121 46 147 42 163 37 179 56 178 65 159 67 128 59 116

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

sheep
false
15
Circle -1 true true 203 65 88
Circle -1 true true 70 65 162
Circle -1 true true 150 105 120
Polygon -7500403 true false 218 120 240 165 255 165 278 120
Circle -7500403 true false 214 72 67
Rectangle -1 true true 164 223 179 298
Polygon -1 true true 45 285 30 285 30 240 15 195 45 210
Circle -1 true true 3 83 150
Rectangle -1 true true 65 221 80 296
Polygon -1 true true 195 285 210 285 210 240 240 210 195 210
Polygon -7500403 true false 276 85 285 105 302 99 294 83
Polygon -7500403 true false 219 85 210 105 193 99 201 83

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

wolf
false
0
Polygon -16777216 true false 253 133 245 131 245 133
Polygon -7500403 true true 2 194 13 197 30 191 38 193 38 205 20 226 20 257 27 265 38 266 40 260 31 253 31 230 60 206 68 198 75 209 66 228 65 243 82 261 84 268 100 267 103 261 77 239 79 231 100 207 98 196 119 201 143 202 160 195 166 210 172 213 173 238 167 251 160 248 154 265 169 264 178 247 186 240 198 260 200 271 217 271 219 262 207 258 195 230 192 198 210 184 227 164 242 144 259 145 284 151 277 141 293 140 299 134 297 127 273 119 270 105
Polygon -7500403 true true -1 195 14 180 36 166 40 153 53 140 82 131 134 133 159 126 188 115 227 108 236 102 238 98 268 86 269 92 281 87 269 103 269 113

x
false
0
Polygon -7500403 true true 270 75 225 30 30 225 75 270
Polygon -7500403 true true 30 75 75 30 270 225 225 270

@#$#@#$#@
NetLogo 5.3.1
@#$#@#$#@
@#$#@#$#@
1.0
    org.nlogo.sdm.gui.AggregateDrawing 56
        org.nlogo.sdm.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 60 33 50 50
            org.nlogo.sdm.gui.WrappedConverter "0.05" "rOT_inicial"
        org.nlogo.sdm.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 259 36 50 50
            org.nlogo.sdm.gui.WrappedConverter "0.8" "Tasa_ocupación_stdt"
        org.nlogo.sdm.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 228 203 60 40
            org.nlogo.sdm.gui.WrappedStock "OT" "100" 1
        org.nlogo.sdm.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 5 188 30 30
        org.nlogo.sdm.gui.RateConnection 3 35 204 125 211 216 219 NULL NULL 0 0 0
            org.jhotdraw.figures.ChopEllipseConnector REF 7
            org.jhotdraw.standard.ChopBoxConnector REF 5
            org.nlogo.sdm.gui.WrappedRate "rOT * OT *(1 - (OT / Kturismo))" "Crecimiento_OT"
                org.nlogo.sdm.gui.WrappedReservoir  REF 6 0
        org.nlogo.sdm.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 21 265 50 50
            org.nlogo.sdm.gui.WrappedConverter "5000" "Kturismo"
        org.nlogo.sdm.gui.BindingConnection 2 58 277 125 211 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 13
            org.nlogo.sdm.gui.ChopRateConnector REF 8
        org.nlogo.sdm.gui.BindingConnection 2 216 219 125 211 NULL NULL 0 0 0
            org.jhotdraw.standard.ChopBoxConnector REF 5
            org.nlogo.sdm.gui.ChopRateConnector REF 8
        org.nlogo.sdm.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 168 99 50 50
            org.nlogo.sdm.gui.WrappedConverter "(rOT_inicial * tasa_ocupación_real) / tasa_ocupación_real" "rOT"
        org.nlogo.sdm.gui.BindingConnection 2 100 67 177 114 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 1
            org.jhotdraw.contrib.ChopDiamondConnector REF 21
        org.nlogo.sdm.gui.BindingConnection 2 269 71 207 113 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 3
            org.jhotdraw.contrib.ChopDiamondConnector REF 21
        org.nlogo.sdm.gui.BindingConnection 2 182 138 125 211 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 21
            org.nlogo.sdm.gui.ChopRateConnector REF 8
        org.nlogo.sdm.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 363 97 50 50
            org.nlogo.sdm.gui.WrappedConverter "T / (Turistas_habitacion * OT)" "Tasa_ocupación_real"
        org.nlogo.sdm.gui.BindingConnection 2 363 122 217 123 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 32
            org.jhotdraw.contrib.ChopDiamondConnector REF 21
        org.nlogo.sdm.gui.BindingConnection 2 299 191 373 132 NULL NULL 0 0 0
            org.jhotdraw.standard.ChopBoxConnector REF 5
            org.jhotdraw.contrib.ChopDiamondConnector REF 32
        org.nlogo.sdm.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 314 342 60 40
            org.nlogo.sdm.gui.WrappedStock "T" "10000" 1
        org.nlogo.sdm.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 85 351 30 30
        org.nlogo.sdm.gui.RateConnection 3 115 366 208 364 302 362 NULL NULL 0 0 0
            org.jhotdraw.figures.ChopEllipseConnector REF 42
            org.jhotdraw.standard.ChopBoxConnector REF 40
            org.nlogo.sdm.gui.WrappedRate "turistas_habitacion * Crecimiento_OT * tasa_ocupación_real * Ind_satisfaccion" "Entrada_T"
                org.nlogo.sdm.gui.WrappedReservoir  REF 41 0
        org.nlogo.sdm.gui.BindingConnection 2 377 136 208 364 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 32
            org.nlogo.sdm.gui.ChopRateConnector REF 43
        org.nlogo.sdm.gui.BindingConnection 2 125 211 208 364 NULL NULL 0 0 0
            org.nlogo.sdm.gui.ChopRateConnector REF 8
            org.nlogo.sdm.gui.ChopRateConnector REF 43
        org.nlogo.sdm.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 450 176 50 50
            org.nlogo.sdm.gui.WrappedConverter "100" "turistas_habitacion"
        org.nlogo.sdm.gui.BindingConnection 2 461 189 401 133 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 54
            org.jhotdraw.contrib.ChopDiamondConnector REF 32
        org.nlogo.sdm.gui.BindingConnection 2 459 210 208 364 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 54
            org.nlogo.sdm.gui.ChopRateConnector REF 43
        org.nlogo.sdm.gui.BindingConnection 2 349 330 384 143 NULL NULL 0 0 0
            org.jhotdraw.standard.ChopBoxConnector REF 40
            org.jhotdraw.contrib.ChopDiamondConnector REF 32
        org.nlogo.sdm.gui.RateConnection 3 386 362 472 362 558 363 NULL NULL 0 0 0
            org.jhotdraw.standard.ChopBoxConnector REF 40
            org.jhotdraw.figures.ChopEllipseConnector
                org.nlogo.sdm.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 557 348 30 30
            org.nlogo.sdm.gui.WrappedRate "T * prop_retiro" "Salida_T" REF 41
                org.nlogo.sdm.gui.WrappedReservoir  0   REF 68
        org.nlogo.sdm.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 556 285 50 50
            org.nlogo.sdm.gui.WrappedConverter "0.01" "prop_retiro"
        org.nlogo.sdm.gui.BindingConnection 2 564 318 472 362 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 71
            org.nlogo.sdm.gui.ChopRateConnector REF 65
        org.nlogo.sdm.gui.BindingConnection 2 386 362 472 362 NULL NULL 0 0 0
            org.jhotdraw.standard.ChopBoxConnector REF 40
            org.nlogo.sdm.gui.ChopRateConnector REF 65
        org.nlogo.sdm.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 693 130 50 50
            org.nlogo.sdm.gui.WrappedConverter "Banderas_nuevas" "Banderas_adicionales"
        org.nlogo.sdm.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 823 162 50 50
            org.nlogo.sdm.gui.WrappedConverter "Banderas_iniciales" "Banderas_inicio"
        org.nlogo.sdm.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 998 161 50 50
            org.nlogo.sdm.gui.WrappedConverter "((3.1415 * Radio_afectacion * Radio_afectacion) / 10000) * Embarcaciones_operando * efecto_embarcacion" "Perturbacion"
        org.nlogo.sdm.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 1035 84 50 50
            org.nlogo.sdm.gui.WrappedConverter "0.01" "efecto_embarcacion"
        org.nlogo.sdm.gui.BindingConnection 2 1051 125 1031 169 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 85
            org.jhotdraw.contrib.ChopDiamondConnector REF 83
        org.nlogo.sdm.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 887 86 50 50
            org.nlogo.sdm.gui.WrappedConverter "150" "Radio_afectacion"
        org.nlogo.sdm.gui.BindingConnection 2 926 121 1008 175 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 90
            org.jhotdraw.contrib.ChopDiamondConnector REF 83
        org.nlogo.sdm.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 810 294 50 50
            org.nlogo.sdm.gui.WrappedConverter "Banderas_adicionales + Banderas_inicio" "Embarcaciones_operando"
        org.nlogo.sdm.gui.BindingConnection 2 728 169 824 304 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 79
            org.jhotdraw.contrib.ChopDiamondConnector REF 95
        org.nlogo.sdm.gui.BindingConnection 2 845 209 837 296 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 81
            org.jhotdraw.contrib.ChopDiamondConnector REF 95
        org.nlogo.sdm.gui.BindingConnection 2 849 308 1008 196 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 95
            org.jhotdraw.contrib.ChopDiamondConnector REF 83
        org.nlogo.sdm.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 1189 315 60 40
            org.nlogo.sdm.gui.WrappedStock "Habitat_ballena" "11000" 1
        org.nlogo.sdm.gui.RateConnection 3 1231 303 1246 268 1264 234 NULL NULL 0 0 0
            org.jhotdraw.standard.ChopBoxConnector REF 106
            org.jhotdraw.figures.ChopEllipseConnector
                org.nlogo.sdm.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 1254 205 30 30
            org.nlogo.sdm.gui.WrappedRate "Perturbacion" "Perdida_funcion" REF 107
                org.nlogo.sdm.gui.WrappedReservoir  0   REF 111
        org.nlogo.sdm.gui.BindingConnection 2 1041 192 1246 268 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 83
            org.nlogo.sdm.gui.ChopRateConnector REF 108
        org.nlogo.sdm.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 1002 315 50 50
            org.nlogo.sdm.gui.WrappedConverter "0.191" "Densidad_ballenas"
        org.nlogo.sdm.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 1018 439 50 50
            org.nlogo.sdm.gui.WrappedConverter "Densidad_ballenas * Habitat_ballena" "Poblacion_ballenas"
        org.nlogo.sdm.gui.BindingConnection 2 1029 362 1040 441 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 117
            org.jhotdraw.contrib.ChopDiamondConnector REF 119
        org.nlogo.sdm.gui.BindingConnection 2 1177 365 1057 453 NULL NULL 0 0 0
            org.jhotdraw.standard.ChopBoxConnector REF 106
            org.jhotdraw.contrib.ChopDiamondConnector REF 119
        org.nlogo.sdm.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 567 513 50 50
            org.nlogo.sdm.gui.WrappedConverter "Poblacion_ballenas / T" "Ballenas_turista"
        org.nlogo.sdm.gui.BindingConnection 2 1021 467 613 534 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 119
            org.jhotdraw.contrib.ChopDiamondConnector REF 127
        org.nlogo.sdm.gui.BindingConnection 2 386 391 577 527 NULL NULL 0 0 0
            org.jhotdraw.standard.ChopBoxConnector REF 40
            org.jhotdraw.contrib.ChopDiamondConnector REF 127
        org.nlogo.sdm.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 316 459 50 50
            org.nlogo.sdm.gui.WrappedConverter "Ballenas_turista / Ballenas_ideal_turista" "Ind_satisfaccion"
        org.nlogo.sdm.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 189 536 50 50
            org.nlogo.sdm.gui.WrappedConverter "Ballenas_ideales_turista" "Ballenas_ideal_turista"
        org.nlogo.sdm.gui.BindingConnection 2 229 551 325 493 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 137
            org.jhotdraw.contrib.ChopDiamondConnector REF 135
        org.nlogo.sdm.gui.BindingConnection 2 571 533 361 488 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 127
            org.jhotdraw.contrib.ChopDiamondConnector REF 135
        org.nlogo.sdm.gui.BindingConnection 2 327 472 208 364 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 135
            org.nlogo.sdm.gui.ChopRateConnector REF 43
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
0
@#$#@#$#@
