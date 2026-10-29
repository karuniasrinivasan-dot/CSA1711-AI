:- dynamic fact/1.

% Initial facts
fact(a).
fact(b).

% Rules
rule(c, [a, b]).
rule(d, [c]).
rule(e, [d]).

% Forward chaining
forward :-
    rule(X, Conditions),
    check_conditions(Conditions),
    \+ fact(X),
    assertz(fact(X)),
    write('New fact: '), write(X), nl,
    fail.

forward.

% Check conditions
check_conditions([]).
check_conditions([H|T]) :-
    fact(H),
    check_conditions(T).