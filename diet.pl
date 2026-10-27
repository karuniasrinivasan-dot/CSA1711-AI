
% Diet Suggestion System Based on Disease

% Diet suggestions for different diseases

diet(diabetes, 'Whole grains, vegetables, and balanced meals').
diet(hypertension, 'Low-salt foods, fruits, and vegetables').
diet(anemia, 'Iron-rich foods such as beans and leafy greens').
diet(obesity, 'Balanced meals with vegetables, fruits, and whole grains').
diet(ulcer, 'Mild foods that do not trigger symptoms').

% Rule to suggest diet

suggest_diet(Disease) :-
    diet(Disease, Food),
    write('Suggested diet: '),
    write(Food),
    nl.

% If disease is not found

suggest_diet(Disease) :-
    \+ diet(Disease, _),
    write('Disease not found in the database.'),
    nl.
