intersectionTrees(nil,t(A,T4,T5),[]).
 intersectionTrees(t(N,T2,T3),t(A,T4,T5),[N|L]):- sbt(N,t(A,T4,T5)), intersectionTrees(T2,t(A,T4,T5),L1) , intersectionTrees(T3,t(A,T4,T5),L2) , append(L1,L2,L).
 intersectionTrees(t(N,T2,T3),t(A,T4,T5),L):- not(sbt(N,t(A,T4,T5))), intersectionTrees(T2,t(A,T4,T5),L1) , intersectionTrees(T3,t(A,T4,T5),L2) , append(L1,L2,L).
