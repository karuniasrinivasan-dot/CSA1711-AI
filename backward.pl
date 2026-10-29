% Initial facts
fact(a).
fact(b).

% Rules
rule(c) :- fact(a), fact(b).
rule(d) :- rule(c).
rule(e) :- rule(d).

% Backward chaining
prove(X) :-
    fact(X).

prove(X) :-
    rule(X).