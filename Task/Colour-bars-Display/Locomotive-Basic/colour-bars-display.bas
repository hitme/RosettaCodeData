10 MODE 0:BORDER 23
20 FOR x=0 TO 15
30 ORIGIN x*40,0
40 GRAPHICS PEN x
50 FOR z=0 TO 39 STEP 4:MOVE z,0:DRAW z,400:NEXT
60 NEXT
70 CALL &bb06 ' wait for key press
