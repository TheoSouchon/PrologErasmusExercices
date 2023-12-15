removeEvenNumber([],[]).
removeEvenNumber([H|L1],[H|L0]):-mod(H,2) =\= 0,removeEvenNumber(L1,L0).
removeEvenNumber([H|L1],L0):-removeEvenNumber(L1,L0).

splitIndex([],N,[],[]).
splitIndex(L,0,[],L).
splitIndex([H|L1],N,[H|L2],L3):-N>=0,N1 is N-1,splitIndex(L1,N1,L2,L3).

insertFromNpos(L,L1,N,L0):-splitIndex(L,N,L2,L3),append(L2,L1,L4),append(L4,L3,L5),removeEvenNumber(L5,L0).






