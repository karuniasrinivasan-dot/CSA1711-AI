
% Best First Search Algorithm

% Graph connections
edge(a, b).
edge(a, c).
edge(b, d).
edge(b, e).
edge(c, f).
edge(c, g).

% Heuristic values
h(a, 7).
h(b, 6).
h(c, 4).
h(d, 5).
h(e, 2).
h(f, 3).
h(g, 0).

% Best First Search
bestfirst(Start, Goal, Path) :-
    search([[Start]], Goal, RevPath),
    reverse(RevPath, Path).

search([[Goal|Path]|_], Goal, [Goal|Path]).

search([[Node|Path]|Rest], Goal, Result) :-
    findall([Next,Node|Path],
            (edge(Node, Next),
             \+ member(Next, [Node|Path])),
            Children),
    append(Rest, Children, Open),
    sort_paths(Open, Sorted),
    search(Sorted, Goal, Result).

% Sort paths by heuristic value
sort_paths(Paths, Sorted) :-
    map_list_to_pairs(path_heuristic, Paths, Pairs),
    keysort(Pairs, SortedPairs),
    pairs_values(SortedPairs, Sorted).

path_heuristic([Node|_], H) :-
    h(Node, H).
