/* Assignemnt 2b */


Xor([],[],[]).
Xor([0|X],[0|Y],[0|Z]):- Xor(X,Y,Z).
Xor([0|X],[1|Y],[1|Z]):- Xor(X,Y,Z).
Xor([1|X],[0|Y],[1|Z]):- Xor(X,Y,Z).
Xor([1|X],[1|Y],[0|Z]):- Xor(X,Y,Z).