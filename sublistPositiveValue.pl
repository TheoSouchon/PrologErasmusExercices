sublistPositiveValue([],[]).
%cas o� la variable est positive, donc on prend la valeur
sublistPositiveValue([X|L],[X|L0]):-
    X>0, sublistPositiveValue(L,L0).
%cas o� la variable est n�gatif, donc on prend pas
sublistPositiveValue([X|L],L0):-
    X=<0, sublistPositiveValue(L,L0).

