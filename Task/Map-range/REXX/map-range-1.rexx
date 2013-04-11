/*REXX program maps a number from one range to another range.           */

rangeA = '0 10'
rangeB = '-1 0'

          do j=0  to 10
          say right(j,3)   ' maps to '   mapRange(rangeA, rangeB, j)
          end   /*j*/
exit                                   /*stick a fork in it, we're done.*/

/*──────────────────────────────────MAPRANGE subroutine─────────────────*/
mapRange: procedure; arg a1 a2,b1 b2,x;  return b1+(x-a1)*(b2-b1)/(a2-a1)
