Hailstone[n_] :=
 NestWhileList[Which[Mod[#, 2] == 0, #/2, True, ( 3*# + 1) ] &, n, # != 1 &];
c27 = Hailstone@27;
Print["Hailstone sequence for n = 27: [", c27[[;; 4]], "...", c27[[-4 ;;]], "]"]
Print["Length Hailstone[27] = ", Length@c27]

longest = -1; comp = 0;
Do[temp = Length@Hailstone@i;
 If[comp < temp, comp = temp; longest = i],
 {i, 100000}
 ]
Print["Longest Hailstone sequence at n = ", longest, "\nwith length = ", comp];
