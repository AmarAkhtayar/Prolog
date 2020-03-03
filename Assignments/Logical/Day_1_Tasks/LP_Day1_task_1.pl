
/****
Assignment 1, Day 1
***/

  
	sits_right_of(katie_bell,parvati_patil).
	sits_right_of(parvati_patil,lavender_brown).
	sits_right_of(lavender_brown,neville_longbottom).
	sits_right_of(neville_longbottom,alicia_spinnet).
	sits_right_of(alicia_spinnet,fred_weasley).
	sits_right_of(fred_weasley,george_weasley).
	sits_right_of(george_weasley,lee_jordan).
	sits_right_of(lee_jordan,dennis_creevey).
	sits_right_of(dennis_creevey,dean_thomas).
	sits_right_of(dean_thomas,ginny_weasley).
	sits_right_of(ginny_weasley,angelina_johnson).
	sits_right_of(angelina_johnson,seamus_finnigan).
	sits_right_of(seamus_finnigan,colin_creevey).
	sits_right_of(colin_creevey,harry_potter).
	sits_right_of(harry_potter,hermione_granger).
	sits_right_of(hermione_granger,ron_weasley).
	sits_right_of(ron_weasley, natalie_mcdonald).
	sits_right_of(natalie_mcdonald,katie_bell).
	
	sits_left_of(X,Y):- sits_right_of(Y,X).
	are_neighbors_of(X,Y,Z):- sits_left_of(X,Z),
	                          sits_right_of(Y,Z).
							  
							  
	next_to_each_other(X,Y):- sits_left_of(X,Y);
                              sits_right_of(X,Y).


   /*
   # Test your implementation by asking queries. For example:
   • Is Hermione to the right of Harry? 
    ?- sits_right_of(hermione_granger,harry_potter).
	false.
	
	
	.Is Harry to the right of Ginny?
	?- sits_right_of(harry_potter,ginny_weasley).
      false.
	
	.Who is to the right of Harry? 
	?- sits_right_of(X,harry_potter).
    X = colin_creevey.
	
	
	.Who is sitting at the table? 
	?-findall(X, sits_right_of(X,Y), Names).
	
	
	# second way to do that i make use of an annonyms variable.
	?- sits_right_of(_,Y).
Y = lavender_brown ;
Y = neville_longbottom ;
Y = alicia_spinnet ;
Y = fred_weasley ;
Y = george_weasley ;
Y = lee_jordan ;
Y = dennis_creevey ;
Y = dean_thomas ;
Y = ginny_weasley ;
Y = angelina_johnson ;
Y = seamus_finnigan ;
Y = colin_creevey ;
Y = harry_potter ;
Y = hermione_granger ;
Y = ron_weasley ;
Y = natalie_mcdonald ;
Y = katie_bell.
 #Who is sitting two seats to the right of Neville?  X(naville,) Z(lavender) Y(parvatie) Y is variable to searched for
 ?- are_neighbors_of(neville_longbottom,Z,_).
   Z = parvati_patil.
   #an easy way 
   sits_right_of(X,neville_longbottom).
   sits_right_of(X.lavender_brown).
   
   
   
   
   # Who is sitting between Neville and Parvati? 
   ?-  are_neighbors_of(neville_longbottom,parvati_patil,Z).
      Z = lavender_brown.
***/	
