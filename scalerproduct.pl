%exemple scalerproduct([3,4,-1],[2,1,2],8)
scalerproduct([],[],[]).
scalerproduct([X|L],[Y|L1],W):-scalerproduct(L,L1,L0),W is X*Y+L0.
