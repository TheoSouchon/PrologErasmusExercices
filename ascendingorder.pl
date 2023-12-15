% La liste vide est consid�r�e comme tri�e
insert_sorted(X, [], [X]).
% Si l'�l�ment est plus petit que la t�te de la liste, on l'ins�re en t�te
insert_sorted(X, [H|T], [X,H|T]) :- X =< H.
% Sinon, on ins�re r�cursivement l'�l�ment dans la queue de la liste
insert_sorted(X, [H|T], [H|L]) :- X > H, insert_sorted(X, T, L).

% Si la liste est vide, elle ne contient pas de duplicats
remove_duplicates([], []).
remove_duplicates([H|T], L) :-member(H,T),remove_duplicates(T,L).
remove_duplicates([H|T], [H|L]) :-remove_duplicates(T,L).

ascendingorder(L,N,M,L0):-insert_sorted(N,L,L1),insert_sorted(M,L1,L2),append(L1,L2,L3),remove_duplicates(L3,L0).
