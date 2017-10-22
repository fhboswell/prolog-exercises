% FACTS

% RULES
member1(X, [Y|T]) :-
    X = Y; member(X, T).


first([X],X).
first([X|_],X).

last1([X],X).
last1([_|T],X) :-
    last1(T,X).

adj2(X, Y, [X,Y|_]).
adj2(X, Y, [_|T]) :-
    adj2(X, Y, T).

adj3(X,Y, Z ,[X,Y,Z|_]).
adj3(X, Y, Z,[_|T]) :-
    adj3(X, Y, Z,T).

append1([],X,X).
append1([X|Y],Z,[X|W]) :-
    append1(Y,Z,W).


delete1(X,[X|T],T).
delete1(X,[H,T],[H,T1]) :-
    delete1(X,T,T1).

len([], R):-
    R is 0.

len([X|Y], R):-
len(Y, L),
    R is L + 1.

myreverse([], L, L).
myreverse([H|T], L, curr) :-
    myreverse(T, L, [H|curr]).

palindrome(L1) :- myreverse(L1,X), X=L1.

show([]) :- nl.
show([H|T]) :- write(H), tab(1), show(T).
