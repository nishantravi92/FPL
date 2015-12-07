/*
a(a(l(f, l(x, a(v(f), v(x)))), v(y)), v(z)).
l(x,v(x))
a(l(x,v(x)), v(y))


l(x,v(y)),v(y)
*/

/* part A */
reducible(a(T1,T2)):-reducible(T1);
					reducible(T2);
					reducible(T1,T2).

reducible(l(X,T)):- reducible(T).

reducible(l(X,a(T,v(X)))):- \+ occurs_free_in(X,T).

reducible(l(X,T1),T2).

occurs_free_in(X,v(X)).
occurs_free_in(X,l(Y,T)):- X\==Y,
				   occurs_free_in(X,T).
occurs_free_in(X,a(T1,T2)):-occurs_free_in(X,T1);
							occurs_free_in(X,T2).



/* part B */

normal(T):- \+ reducible(T).
