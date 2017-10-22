% FACTS

likes(jozo, wine).
likes(eisman, wine).


% RULES

friends(X,Y):- likes(X, wine),
                likes(Y, wine).

