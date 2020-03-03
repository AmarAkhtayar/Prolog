
/* Assignment 3 Day 1 */

connected(1,2).
connected(3,4).
connected(5,6).
connected(7,8).
connected(9,10).
connected(12,13).
connected(13,14).
connected(15,16).
connected(17,18).
connected(19,20).
connected(4,1).
connected(6,3).
connected(4,7).
connected(6,11).
connected(14,9).
connected(11,15).
connected(16,12).
connected(14,17).
connected(16,19).

path(X,Y) :- connected(X,Y).
path(X,Y) :- connected(X,Z),path(Z,Y).

/*

*Can you get from point 5 to point 10?
?- path(5,10).
 true ;
 
 *Which other point can you get to when starting in point 1?
?-  path(1,X).
 X = 2 ;
 false.
 
 *And which points can be reached from point 13?
?-  path(13,X).
X = 14 ;
X = 9 ;
X = 17 ;
X = 10 ;
X = 18 ;
false.
 
 
 
*/

