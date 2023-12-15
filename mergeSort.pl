%Pour mergeSort on a besoin de split,sort,merge

split([],[],[]).
split([X],[X],[]).
split([X|L],[X|L1],L2):- split(L,L1,L2).
% le split ne coupe en 2 en plein milieu, mais se débrouille juste pour
% faire 2 listes de tailles à peu près égales

mergesort([],[]).
mergesort([X],[X]).
mergesort([X,Y|L],L0):-split([X,Y|L],L1,L2),mergesort(L1,L01),mergesort(L2,L02),merge(L01,L02,L0).
