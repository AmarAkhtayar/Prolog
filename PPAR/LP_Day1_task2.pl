/* Assignmnet 2 */


male(paul).
male(albert).
male(vernon).
male(james).
male(dudley).
male(harry).


female(helen).
female(ruth).
female(petunia).
female(lili).

parent_of(paul,petunia).
parent_of(paul,lili).
parent_of(helen,petunia).
parent_of(helen,lili).
parent_of(albert,james).
parent_of(ruth,james).
parent_of(vernon,dudley).
parent_of(petunia,dudley).
parent_of(lili,harry).
parent_of(james,harry).


/*we can do parent_of in another predicate like parent_of(X,Y):=father(X,Y).
                                               parent_of(X,Y):=mother(X,Y).
*/
											   

father_of(X,Y):- parent_of(X,Y), male(X).
mother_of(X,Y):- parent_of(X,Y),female(X).

grandfather_of(X,Y):- parent_of(X,Z), parent_of(Z,Y), male(X).
grandmother_of(X,Y):- parent_of(Z,Y), mother_of(X,Z),female(X).

sister_of(X,Y) :- parent_of(Z,X), parent_of(Z,Y), female(X).

brother_of(X,Y) :- father_of(Z,X),
                    father_of(Z,Y),
                    male(X),
                    not(X=Y).
					
aunt_of(X,Y) :- parent_of(Z,Y), sister_of(X,Z).

uncle_of(X,Y):- mother_of(Z,Y),
                brother_of(X,Z),
                not(mother_of(X,Y)),
                male(X).

uncle_of(X,Y):- father_of(Z,Y),
                brother_of(X,Z),
                not(mother_of(X,Y)),
                male(X).


/*
*To test your knowledge base ask the following queries:
*Does Harry have an uncle? Who?
?- uncle_of(X,harry).
false.



*Who are the grandparents of Harry?
?- grandfather_of(X,harry).
   X = paul ;
   X = albert ;
    false.
	
	?- grandmother_of(X,harry).
    X = helen ;
     X = ruth.
	 
	 *Who are the grandchildren of Paul and Helen?
	?-  grandfather_of(paul,X).
    X = dudley ;
    X = harry.
	
	?- grandmother_of(helen,X).
   X = dudley ;
   X = harry ;
   
 *Does James have a sister?
 ?- sister_of(X,james).
  false.  
 
 
 

*/
   
  ancestor_of(X,Y):- parent_of(Y,X).
  ancestor_of(X,Y):- parent_of(X,Z),ancestor_of(Z,Y).
  
  
  
/*descendant(X, Y) :- parent_of(X, Z).
descendant(X, Y) :- parent_of(Z, X), descendant(X, Y)
           
  
*Is Albert an ancestor of Harry?
  ?- ancestor_of(albert,harry).
    true ;
*Who are the ancestors of Harry?

?- ancestor_of(X,harry).
X = lili ;
X = james ;
X = paul ;
X = helen ;
X = albert ;
X = ruth ;
  
*Is Dudley an ancestor of Harry?
 ?- ancestor_of(dudley,harry).
   false.
   
*Who are the descendants of James?   
 ?- ancestor_of(james,X).
  X = harry ;
*/

not_parent(X,Y) :- not(parent_of(X,Y)).

/*Is Dudley a parent of Harry?
 ?-  not_parent(dudley,harry).
  true.
*/

