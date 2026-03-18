
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
    

% Rule: list_all_possible_properties/0
% List all possible properties in the network in a pretty way
% Should be functionally the same as `cat prolog_file.pl | grep -e '^has_a(' | cut -f 2 -d "," | tr -d " " | sort -u`
% Also counts the total (equivalent to | wc)
list_all_possible_weapons :-
    get_all_possible_weapons(List),
    length(List, Count),
    format('All weapons defined in the network:~n'),
    write('----------------------------------------'), nl,
    forall(member(Weapon, List), format('- ~w~n', [Weapon])),
    nl,
    format('Total: ~w~n', [Count]).

% Rule: get_all_possible_properties/1
% Get all possible property types in the network
% Returns a list
get_all_possible_weapons(SortedList) :-
    %Collect all occurrences of Property (P) from the facts
    findall(Weapon, is_a(Weapon, _), List),    
    % Sort this list
    sort(List, SortedList).




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
% Also counts the total (equivalent to | wc)
list_all_possible_properties :-
    get_all_possible_properties(List),
    length(List, Count),
    format('All properties defined in the network:~n'),
    write('----------------------------------------'), nl,
    forall(member(Property, List), format('- ~w~n', [Property])),
    nl,
    format('Total: ~w~n', [Count]).


% Rule: get_all_with_property/3
% Finds all items that have a specific property-value pair (including inherited)
get_all_with_property(Prop, Value, Item) :-
    has_a_property(Item, Prop, Value).

% Pretty-print version
list_all_with_property(Prop, Value) :-
    findall(Item, get_all_with_property(Prop, Value, Item), List),
    sort(List, Sorted),
    format('Entities with ~w = ~w:~n', [Prop, Value]),
    write('----------------------------------------'), nl,
    forall(member(I, Sorted), format('- ~w~n', [I])).


% Draws a nice tree from a given root position
% show_tree(weapon).
%-- weapon
%   -- melee_weapon
%      -- bladed_hand_weapon
%         -- dagger
%            -- anelace

% Rule: show_tree/1
% Usage: show_tree(weapon).
show_tree(Root) :- 
    show_tree(Root, 0).

% Recursive tree with levels shown in brackets
show_tree(Item, Depth) :-
    Indent is Depth * 3,
    tab(Indent), 
    format('-- ~w [~w]~n', [Item, Depth]),
    NewDepth is Depth + 1,
    % Find all children and recursively print them
    forall(is_a(Child, Item), show_tree(Child, NewDepth)).



% Rule: is_in_era/2
% Success if Year falls within the Era defined for the Item
is_in_era(Weapon, Year) :-
    has_a_property(Weapon, era_used, Era),
    check_year(Year, Era).

% Case A: Exact Match (e.g., has_a(almace, era_used, 778))
check_year(Year, Year) :- 
    number(Year).

% Case B: Range Match (e.g., has_a(arbalest, era_used, (1300, 1500)))
check_year(Year, (Start, End)) :- 
    Year >= Start, 
    Year =< End.

% Main Query: Find all weapons in use in a specific year
list_weapons_by_year(Year) :-
    findall(Weapon, is_in_era(Item, Year), List),
    sort(List, SortedList),
    format('Weapons active in the year ~w:~n', [Year]),
    write('----------------------------------------'), nl,
    forall(member(I, SortedList), format('- ~w~n', [I])).


% Weights Higher number = longer range
range_to_weight(long, 3).
range_to_weight(medium, 2).
range_to_weight(short, 1).
range_to_weight(close_quarters, 0).

% Compare two weapons based on range
longer_range(Weapon1, Weapon2) :-
    has_a_property(Weapon1, effective_range, Value1),
    has_a_property(Weapon2, effective_range, Value2),
    % Get weights for each
    range_to_weight(Value1, Rank1),     
    range_to_weight(Value2, Rank2),
    % Compare
    Rank1 > Rank2.  