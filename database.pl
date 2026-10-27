
% Database of names and dates of birth

person('Arun', '2005-05-12').
person('Priya', '2006-08-20').
person('Kumar', '2005-11-15').
person('Divya', '2006-03-25').

% Query to display name and DOB
display(Name, DOB) :-
    person(Name, DOB).
