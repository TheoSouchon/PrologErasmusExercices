sbt(N,t(N,T1,T2)).
%tree structure already built-in
sbt(N,t(M,T1,T2)):-sbt(N,T1).
sbt(N,t(M,T1,T2)):-sbt(N,T2).
