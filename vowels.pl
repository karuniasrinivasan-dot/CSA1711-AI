% Count the number of vowels in a word

count_vowels([], 0).

count_vowels([H|T], N) :-
    member(H, [a, e, i, o, u]),
    count_vowels(T, N1),
    N is N1 + 1.

count_vowels([H|T], N) :-
    \+ member(H, [a, e, i, o, u]),
    count_vowels(T, N).

% Convert a word into a list of characters
vowels(Word, N) :-
    atom_chars(Word, Chars),
    count_vowels(Chars, N).