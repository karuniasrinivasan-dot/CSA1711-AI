
% Family Tree in Prolog

% Parent relationships
parent(john, david).
parent(john, mary).
parent(susan, david).
parent(susan, mary).
parent(david, peter).
parent(david, lisa).

% Gender facts
male(john).
male(david).
male(peter).

female(susan).
female(mary).
female(lisa).

% Father relationship
father(X, Y) :-
    parent(X, Y),
    male(X).

% Mother relationship
mother(X, Y) :-
    parent(X, Y),
    female(X).

% Sibling relationship
sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

% Grandparent relationship
grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).
