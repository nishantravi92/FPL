/*
 a. Ali likes to bike and Mary likes to hike.
 b. Bing, Charles, Kari and Lola do not like to run.
 c. Nina does not like to surf.
 d. Lola and Charles want to be together.
 e. Dani and Mary do not want to be together
*/

solve(Answer) :- assumptions(Answer),
				 constrainta(Answer).

assumptions(Answer) :- boy(B1), boy(B2), B1 \== B2,
			           boy(B3), B1 \== B3, B2 \== B3,
			           boy(B4), B1 \== B4, B2 \== B4,  B3 \== B4,
					   girl(G1), girl(G2), G1 \== G2,
					   girl(G3), G1 \== G3, G2 \== G3,
					   girl(G4), G1 \== G4, G2 \== B4,  G3 \== B4,

				       Answer = [ biking(B1,G1), running(B2,G2),hiking(B3,G3), surfing(B4,G4) ].


constrainta(Answer) :- member(biking(ali,_), Answer),
 					member(hiking(_,mary), Answer).


boy(ali). girl(kari).
boy(charles). girl(mary).
boy(bing). girl(lola).
boy(dani). girl(nina).