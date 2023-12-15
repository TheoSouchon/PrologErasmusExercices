quicksort(L,L0).
quicksort([],[]).
quicksort([X|L],W):-partition(X,L,L01,L02),
    quicksort(L01,LZ1),
    quicksort(L02,LZ2),
    append(LZ1,[X|LZ2],W).
