% FACTS


m(['Sebastian', 'Jeff', 'Jermey', 'Andrew', 'Dave', 'Henry', 'Aaron']).
f(['Sandra','Elizabeth','Adele','Brenda','Alison']).

family(['Sebastian','Sandra',['Elizabeth','Jeff', 'Adele', 'Andrew']]).

family(['Dave','Elizabeth',['Henry', 'Alison', 'Aaron']]).
family(['Jeff','Brenda',['Jermey']]).

% RULES

male(X) :- m(Male), member(X,Male).
female(X) :- f(Female), member(X,Female).

parent(P,C) :- family([P,_,X]), member(C,X).
parent(P,C) :- family([_,P,X]), member(C,X).

father(P,C) :- male(P), parent(P,C).
mother(P,C) :- female(P), parent(P,C).

siblings2(X,Y) :- father(F,X), father(F,Y), mother(M,X), mother(M,Y), X\=Y.
brother2(X,Y) :- male(X), siblings2(X,Y).
sister2(X,Y) :- female(X), siblings2(X,Y).

cousins(X,Y) :- parent(A,X), parent(B,Y), siblings2(A,B), X\=Y.

uncle(U,C) :- parent(P,C), brother2(U,P).
aunt(A,C) :- parent(P,C), sister2(A,P).

grandchild(GC,GP) :- parent(P,GC), parent(GP,P).

grandson(GS,GP) :- male(GS), grandchild(GS,GP).

granddaughter(GD,GP) :- female(GD), grandchild(GD,GP).

ancestor(A,C) :- parent(A,C).
ancestor(A,C) :- parent(P,C), ancestor(A,P).

