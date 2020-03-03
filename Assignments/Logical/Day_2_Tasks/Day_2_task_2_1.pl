
/* a */

all_as([ ]).
all_as([H|T]):- H==a, all_as(T).

/*** ?- all_as([a,a]).
true. 

?- all_as([a,b]).
false.

****/

list_length([],0).
list_length([_|T],N) :- list_length(T,X), N is X+1.





replace([],[]). 
replace([u|ITail],[i|OTail]):- replace(ITail,OTail),!.

replace([i|ITail],[o|OTail]):- replace(ITail,OTail),!.

replace([o|ITail],[u|OTail]):- replace(ITail,OTail),!.


replace([Y|ITail],[Y|OTail]):- replace(ITail,OTail),!.

/*** 
?- replace([u,i,o],X).
X = [i, o, u].

?- replace([u,a,i],X).
X = [i, a, o].

 ?-  replace([u,a,a,o,i,i,i,i],X).
X = [i, a, a, u, o, o, o, o].
 

****/




