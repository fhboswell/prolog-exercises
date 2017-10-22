nocheck(_,[]).
nocheck(X/Y,[X1/Y1 | T]) :-
    X=\=X1,
    Y=\=Y1,
    abs(Y1-Y) =\= abs(X1-X),
    nocheck(X/Y,T).


fair([]).
fair([X/Y | T]) :-
    fair(T),
    member(X,[1,2,3,4,5,6,7,8]),
    member(Y,[1,2,3,4,5,6,7,8]),
    nocheck(X/Y, T).


go(X) :-
    X = [1/_,2/_,3/_,4/_,5/_,6/_,7/_,8/_],
    fair(X).
