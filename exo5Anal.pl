getLeaf(nil,[]).
getLeaf(t(X,nil,nil),[X]).
getLeaf(t(X,T1,T2),L0):-getLeaf(T1,L1),getLeaf(T2,L2),append(L1,L2,L0).
