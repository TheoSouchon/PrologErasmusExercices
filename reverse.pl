%reverse(L,L0):-"LO is the list of the elements in L in reversed order".
%reverse([3,-1,2],[2,-1,3])
reverse([3,-1,2],[2,-1,3]).
reverse([],[]).
reverse([X|Y],W):-reverse(L,L0),append(L0,[X],W).
