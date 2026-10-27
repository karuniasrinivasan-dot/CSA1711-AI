
% Bird database

bird(sparrow).
bird(parrot).
bird(pigeon).
bird(ostrich).
bird(penguin).

% Birds that can fly

can_fly(sparrow).
can_fly(parrot).
can_fly(pigeon).

% Check whether a bird can fly or not

check_fly(Bird) :-
    bird(Bird),
    can_fly(Bird),
    write(Bird), write(' can fly.').

check_fly(Bird) :-
    bird(Bird),
    \+ can_fly(Bird),
    write(Bird), write(' cannot fly.').
