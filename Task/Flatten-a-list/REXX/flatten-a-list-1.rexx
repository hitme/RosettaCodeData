/*REXX program to  demonstrate  how to   flatten   a list.             */

y = '[[1], 2, [[3,4], 5], [[[]]], [[[6]]], 7, 8, []]'

z = '['changestr(' ',space(translate(y,,'[,]')),", ")']'

say ' input =' y
say 'output =' z
                                       /*stick a fork in it, we're done.*/
