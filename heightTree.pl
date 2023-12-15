%heightBT(T,D):-"D is the depth of the tree"
heightBT(nil,-1).
heightBT(t(X,L,R),D):-heightBT(L,Lh),heightBT(R,Rh),max(Lh,Rh,M),D is M+1.
