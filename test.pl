% FACTS

likes(jozo, wine).
likes(eisman, wine).


% RULES

friends(X,Y):- likes(X, wine),
                likes(Y, wine).

seperate([H|T]) :- write('list = '), write([H|T]), nl,
                   write('Head = '), write(H), nl,
                   write('Tail ='), write(T).

allsame([_]).
allsame([X,Y|Rest]) :- X=Y, allsame([Y|Rest]).

sumlist([ ], 0).
sumlist([X|Rest], Sum) :- sumlist(Rest, SR), Sum is X + SR.
