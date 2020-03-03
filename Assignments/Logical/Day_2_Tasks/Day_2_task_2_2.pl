/* Assignemnt 2b */


xor([],[],[]).
xor([0|X],[0|Y],[0|Z]):- xor(X,Y,Z).
xor([0|X],[1|Y],[1|Z]):- xor(X,Y,Z).
xor([1|X],[0|Y],[1|Z]):- xor(X,Y,Z).
xor([1|X],[1|Y],[0|Z]):- xor(X,Y,Z).

/* ?- xor([0,0,0],[0,1,0],Z).
Z = [0, 1, 0]


?- xor([1,1],[0,1],Z),xor(Z,[0,1],Y).
Z = [1, 0],
Y = [1, 1] .


  */
  
  
 
   
substitute(a, z).
substitute(b, y).
substitute(c, x).
substitute(d, w).
substitute(e, v).
substitute(f, u).
substitute(g, t).
substitute(k, p).
substitute(l, o).

 
	
encode([],[]).
encode([PH|PT], [CH|CT]):-  substitute(PH, CH), encode(PT, CT).

decode([],[]).
decode([CH|CT],[PH|PT]) :-  substitute(PH, CH), decode(CT, PT).
  
  
  
  /*
  ?- encode([a,a], X), decode(X, Z).
X = [z, z],
Z = [a, a]

*/
