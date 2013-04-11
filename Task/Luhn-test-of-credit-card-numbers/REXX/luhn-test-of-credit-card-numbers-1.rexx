/*REXX program to verify  credit card numbers  via the  Luhn  algorithm.*/
cc.=0                                  /*default value for the CC# list.*/
cc.1='49927398716'                     /*sample credit card number one. */
cc.2='49927398717'                     /*   "      "     "     "   two. */
cc.3='1234567812345678'                /*   "      "     "     "   three*/
cc.4='1234567812345670'                /*   "      "     "     "   four.*/

        do k=1  while cc.k\==0
        r=LuhnChecksum(cc.k)
        if r==0  then say right(cc.k,20) '  passed the Luhn test.'
                 else say right(cc.k,20) " flunked the Luhn test!"
        end   /*k*/
exit                                   /*stick a fork in it, we're done.*/
/*───────────────────────────────────LUHNCHECKSUM subroutine────────────*/
LuhnChecksum: procedure;  parse arg t  /*checksum for credit card nums. */
if length(t)//2  then t='0't           /*odd #digs? Pad # on left with 0*/
t=reverse(t); s=0
                      do j=1  to length(t)-1  by 2
                      q=2 * substr(t,j+1,1)
                      if q>9  then q=left(q,1) + right(q,1)
                      s=s + substr(t,j,1)+q
                      end   /*j*/
return s//10\==0
