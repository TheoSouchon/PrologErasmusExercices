partition(X,[],[],[]).
partition(X,[Y|L],[Y|L0],L2):- Y=<X, partition(X,L,L0,L2).
partition(X,[Y|L],L1,[Y|L2]):- X<Y, partition(X,L,L1,L2).
