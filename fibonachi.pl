fibonacci(0,0).
fibonacci(1,1).
fibonacci(N,S):- N>1,N1 is N-1, N2 is N-2, fibonacci(N1,S1), fibonacci(N2,S2),S is S1+S2.
