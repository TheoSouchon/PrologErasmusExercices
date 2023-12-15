eliminate2consecutivevalues([],_,_,[]).
eliminate2consecutivevalues([L],_,_,[L]).
eliminate2consecutivevalues([H1,H2|L],X,Y,[H1|L0]):-H1=\=X,
    eliminate2consecutivevalues([H2|L],X,Y,L0).
eliminate2consecutivevalues([H1,H2|L],X,Y,[H1|L0]):-H2=\=Y,
    eliminate2consecutivevalues([H2|L],X,Y,L0).
eliminate2consecutivevalues([X,Y|L],X,Y,L).
