

%
% ***** Generic is_a / has_a Sementic Network Rules 
%

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



% Rule: list_all_items/0
% List all items in the network in a pretty way
% Should be functionally the same as `cat prolog_file.pl | grep -e '^is_a(' | cut -f 2 -d "," | tr -d " " | sort -u`
% Also counts the total (equivalent to | wc)
list_all_items :-
    get_all_items(List),
    length(List, Count),
    format('All items defined in the network:~n'),
    write('----------------------------------------'), nl,
    forall(member(Item, List), format('- ~w~n', [Item])),
    nl,
    format('Total: ~w~n', [Count]).


% Rule: get_all_items/1
% Get all possible items in the network
% Returns a list
get_all_items(SortedList) :-
    %Collect all occurrences of Item from the facts
    findall(Item, is_a(Item, _), List),    
    % Sort this list (deduplicates)
    sort(List, SortedList).


% Rule: list_all_attributes/0
% List all possible attributes in the network in a pretty way
% Should be functionally the same as `cat prolog_file.pl | grep -e '^has_a(' | cut -f 2 -d "," | tr -d " " | sort -u`
% Also counts the total (equivalent to | wc)
list_all_attributes :-
    get_all_attributes(List),
    length(List, Count),
    format('All attributes defined in the network:~n'),
    write('----------------------------------------'), nl,
    forall(member(Attribute, List), format('- ~w~n', [Attribute])),
    nl,
    format('Total: ~w~n', [Count]).


% Rule: get_all_possible_properties/1
% Get all possible property types in the network
% Returns a list
get_all_attributes(SortedList) :-
    %Collect all occurrences of Property (P) from the facts
    findall(Attribute, has_a(_, Attribute, _), List),    
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



% Rule: list_items_with_property/2
% Finds all items that have a specific property-value pair (including inherited).
% Prints out in a pretty manner.
list_items_with_property(Prop, Value) :-
    findall(Item, has_a_property(Item, Prop, Value), List),
    sort(List, Sorted),
    format('Items with Property ~w = ~w:~n', [Prop, Value]),
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

% Recursive tree 
show_tree(Item, Depth) :-
    Indent is Depth * 3,
    tab(Indent), 
    format('-- ~w ~n', [Item]),
    NewDepth is Depth + 1,
    % Find all children and recursively print them
    forall(is_a(Child, Item), show_tree(Child, NewDepth)).



%
% ***** Medieval Weapon Specific Rules 
%

% Rule: list_weapons_in_use_year/1
% Finds all weapons used in a specific year and prints Era
list_weapons_in_use_year(Year) :-
    % Find all pairs of Item-Era where the Item was active in the given Year
    findall(Weapon-Era, (is_in_era(Weapon, Year), has_a_property(Weapon, era_used, Era)), List),
    sort(List, Sorted),
    format('Weapons active in the year ~w:~n', [Year]),
    write('----------------------------------------'), nl,
    % Split the Item and Era for formatting
    forall(member(I-E, Sorted), format('- ~w (~w)~n', [I, E])).


% Success if Year falls within the Era defined for the Item
is_in_era(Weapon, Year) :-
    has_a_property(Weapon, era_used, Era),
    check_year(Year, Era).

% Exact match (has_a(almace, era_used, 778))
check_year(Year, Year) :- 
    number(Year).

% Range match (has_a(arbalest, era_used, (1300, 1500)))
check_year(Year, (Start, End)) :- 
    Year >= Start, 
    Year =< End.



% Weights 
% Higher number = longer range
range_to_weight(long, 3).
range_to_weight(medium, 2).
range_to_weight(short, 1).
range_to_weight(close_quarters, 0).

% Compare two weapons based on range
longer_range(Weapon1, Weapon2) :-
    has_a_property(Weapon1, effective_range, Value1),
    has_a_property(Weapon2, effective_range, Value2),
    % Get weights for each
    range_to_weight(Value1, Weight1),     
    range_to_weight(Value2, Weight2),
    % Compare
    Weight1 > Weight2.  