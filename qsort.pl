conc([],L,L).
conc([X|R],L,[X|Y]):-conc(R,L,Y).

split([],E,[],[]).
split([X|R],E,[X|K],G):-X=<E,split(R,E,K,G).
split([X|R],E,K,[X|G]):-X>E,split(R,E,K,G).

qsort([],[]).
qsort([E|R],S):-split(R,E,K,G), qsort(K,SK), qsort(G,SG), conc(SK,[E|SG],S).
