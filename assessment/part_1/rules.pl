
% Rules (Generic for is_a, has_a semantic networks produced by Class)

% Inheritance Rule - IS-A

% Rule: is_a_member/2
% Base case
is_a_member(Item, Class) :- 
    is_a(Item, Class).

% Recursive case
is_a_member(Item, Class) :- 
    is_a(Item, Parent), 
    is_a_member(Parent, Class).


% Inheritance Rule - HAS-A Properties 

% Rule: has_a_property/3
% Base Case
has_a_property(Item, Property, Value) :-
    has_a(Item, Property, Value).

% Recursive Case
has_a_property(Item, Property, Value) :-
    is_a(Item, Class),                          % Check Class membership
    has_a_property(Class, Property, Value),     % Check parent class for properties
    \+ has_a(Item, Property, _).                % Allow overrides
    

% Rule: list_properties/1
% Display the output in a pretty way :-)
list_properties(Item) :-
    % Collect all A-B pairs into a list (https://www.swi-prolog.org/pldoc/man?predicate=findall/3)
    findall(A-B, has_a_property(Item, A, B), List),
    % Sort this list (https://www.swi-prolog.org/pldoc/man?predicate=sort/2)
    sort(List, SortedList),
    % Print the output header (https://www.swi-prolog.org/pldoc/man?predicate=format/2)
    format('Properties for ~w:~n', [Item]),
    write('----------------------------------------'), nl,
    % Print each line of output 
    forall(member(A-B, SortedList), format('- ~w = ~w~n', [A, B])).



% Rule: get_all_possible_properties/2
% Get all possible property types for an object
% Returns a list
get_all_possible_properties(Item, SortedList) :-
    %Collect all occurrences of Property (P) from the facts and parents
    findall(P, has_a_property(Item, P, _), List),    
    % Sort this list
    sort(List, SortedList).

% Rule: get_all_possible_properties/1
% Get all possible property types in the network
% Returns a list
get_all_possible_properties(SortedList) :-
    %Collect all occurrences of Property (P) from the facts
    findall(P, has_a(_, P, _), List),    
    % Sort this list
    sort(List, SortedList).


% Rule: list_all_possible_properties/1
% List all possible properties for an item pretty way
% Includes inherited ones
list_all_possible_properties(Item) :-
    get_all_possible_properties(Item, List),
    format('All properties for ~w:~n', [Item]),
    write('----------------------------------------'), nl,
    forall(member(Property, List), format('- ~w~n', [Property])).


% Rule: list_all_possible_properties/0
% List all possible properties in the network in a pretty way
% Should be functionally the same as `cat prolog_file.pl | grep -e '^has_a(' | cut -f 2 -d "," | tr -d " " | sort -u`
list_all_possible_properties :-
    get_all_possible_properties(List),
    format('All properties defined in the network:~n'),
    write('----------------------------------------'), nl,
    forall(member(Property, List), format('- ~w~n', [Property])).