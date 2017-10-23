% FACTS

likes(jozo, wine).
likes(eisman, wine).


% RULES

friends(X,Y):- likes(X, wine),
                likes(Y, wine).

seperate([H|T]) :- write('list = '), write([H|T]), nl,
                   write('Head = '), write(H), nl,
                   write('Tail ='), write(T).


