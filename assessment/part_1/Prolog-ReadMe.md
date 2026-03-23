
# Prolog Rules for Semantic Networks

This file explains how to use the provided rules to query a semantic network. 

## Facts
The rules are based on a network that is defined using the following fact structure:

**IS-A Facts**
`is_a ( child, parent )`
The relationships between items in the network are defined in a parent-child hierarchy using is_a. 
This builds a tree of relationships. 

Examples:

    is_a( melee_weapon, weapon ).
    is_a( bladed_hand_weapon, melee_weapon ).
    is_a( sword, bladed_hand_weapon ).

**HAS-A Facts**
The properties of an object are defined as has_a facts.
 
An *attribute* is a possible general characteristic known to the network, while a *property* is an instance of an attribute that is attached to a distinct item.

Items that are closer to the root of the relationship tree have fewer defined properties, and any such properties are more general. Conversely, objects that are leaves are likely to have more properties. Items inherit properties from objects that are closer to the root; these can be overridden (hidden) by more specific properties.

Examples:

    has_a( melee_weapon, effective_against, personnel ).
    has_a( bladed_hand_weapon, effective_range,close_quarters ).
    has_a( sword, has_part, blade ).
    has_a( sword, has_part, hilt ).
    has_a( sword, has_part, pommel ).

Querying the network for the unique attributes defined for a generic sword would therefore return the following, with the attributes being inherited from further up the tree:

 - has_part
 - effective_range
 - effective_against

## Rules

It is always possible to as Prolog to answer questions about the facts directly, for example `is_a (sword, ranged_weapon).` This would be False.

In additional, the rules provided for querying a network structured as defined above are as follows. These functions are generic, and could query any suitably defined network, whatever the subject matter.

 - is_a_member		- check class/parent membership 
 - has_a_property  - does the item have a property
 - list_all_items - list all the items in the network (pretty output)
 - get_all_items - get all the items in the network into sorted list
 - list_all_attributes - list all the attributes in the network (pretty output)
 - get_all_attributes - get all the attributes in the network into sorted list
 - list_properties    - list the defined properties for an item (including inherited)
 - list_items_with_property - list all items that have a specific property-value pair (pretty output)
 - show_tree - list items in an attractive tree

The following functions are specific to the Medieval Weapons Semantic Network:
 - longer_range - compares two weapons for range
 - list_weapons_by_year - find all weapons in use in a specific year



### is_a_member/2
Check class/parent membership. 

    % Base case
    is_a_member(Item, Class) :- is_a(Item, Class).
    
    % Recursive case
    is_a_member(Item, Class) :-
        is_a(Item, Parent),
        is_a_member(Parent, Class).

### has_a_property/3
Does the item have a property and/or value?

    % Base Case
    has_a_property(Item, Property, Value) :- has_a(Item, Property, Value).
    
    % Recursive Case
    has_a_property(Item, Property, Value) :-
		    is_a(Item, Class), 						% Check Class membership
		    has_a_property(Class, Property, Value), % Check parent class for properties
        \+ has_a(Item, Property, _). 				% Allow overrides


### list_all_items/0

List all possible items in the network in a pretty way. This should be functionally the same as the following command run against the Prolog source file:
`cat prolog_file.pl | grep -e '^is_a(' | cut -f 2 -d "," | tr -d " " | sort -u`
This rule also counts the total (equivalent to using `wc`).

    list_all_items  :-
		    get_all_items(List),
		    length(List, Count),
		    format('All items defined in the network:~n'),
   		    % Print the output header
   		    write('----------------------------------------'), nl,
   		    % Print each line of output
   		    forall(member(Item, List), format('- ~w~n', [Item])), nl,
   		    % Print count
   		    format('Total: ~w~n', [Count]).

References:

- https://www.swi-prolog.org/pldoc/man?predicate=format/2
- https://www.swi-prolog.org/pldoc/man?predicate=forall/2
- https://www.swi-prolog.org/pldoc/man?predicate=length/2


### get_all_items/1
Get all possible items in the network, returned into a sorted de-duplicated list. This rule is used by list_all_items.

    get_all_items(SortedList) :-
		    findall(Item, is_a(Item, _), List),
		    sort(List, SortedList).

References:

- https://www.swi-prolog.org/pldoc/man?predicate=findall/3
- https://www.swi-prolog.org/pldoc/man?predicate=sort/2


### list_all_attributes/0

List all known attributes in the network in a pretty manner.
This should be functionally the same as the following command run against the Prolog source file:
`cat prolog_file.pl | grep -e '^has_a(' | cut -f 2 -d "," | tr -d " " | sort -u`
This rule also counts the total (equivalent to using `wc`).

    list_all_attributes  :- 
		    get_all_possible_properties(List),
		    length(List, Count),
		    format('All attributes defined in the network:~n'),
		    write('----------------------------------------'), nl,
		    forall(member(Property, List), format('- ~w~n', [Property])), nl,
		    format('Total: ~w~n', [Count]).


### get_all_attributes/1

Get all possible property types in the network, returned in a list. Used by list_all_attributes.

    get_all_attributes(SortedList) :-
		    findall(Attribute, has_a(_, Attribute, _), List),
		    sort(List, SortedList).


### list_properties/1
List the defined properties for an item (including inherited) in a pretty way. 

    list_properties(Item) :-
		    % Collect all A-B pairs into a list ()
		    findall(A-B, has_a_property(Item, A, B), List),
	        % Sort this list
		    sort(List, SortedList),
		    % Print the output header
	        format('Properties for ~w:~n', [Item]),
	        write('----------------------------------------'), nl,
		    forall(member(A-B, SortedList), format('- ~w = ~w~n', [A, B])).


 
### list_items_with_property/2
Finds all items that have a specific property-value pair (including inherited), and prints out in a pretty manner.

    list_items_with_property(Prop, Value) :-
		    findall(Item, has_a_property(Item, Prop, Value), List),
		    sort(List, Sorted),
		    format('Items with Property ~w = ~w:~n', [Prop, Value]),
		    write('----------------------------------------'), nl,
		    forall(member(I, Sorted), format('- ~w~n', [I])).

### show_tree/1
Draws a nice tree from a given root position.

Example:

    show_tree(weapon).
    -- weapon
	    -- melee_weapon
		    -- bladed_hand_weapon
			    -- dagger
				    -- anelace
				    ..etc..

It is only intended that the first function is run directly:

    show_tree(Root) :- show_tree(Root, 0).

    show_tree(Item, Depth) :-
		    Indent is Depth  *  3,
		    tab(Indent),
		    format('-- ~w ~n', [Item]),
		    NewDepth is Depth  +  1,
		    % Find all children and recursively print them
		    forall(is_a(Child, Item), show_tree(Child, NewDepth)).

### longer_range/2
 
This functions compares two weapons based on range. As the effective_range values are text based ('long' range), weights are used to convert these values to integers which can be directly compared.

    longer_range(Weapon1, Weapon2) :-
		    has_a_property(Weapon1, effective_range, Value1),
		    has_a_property(Weapon2, effective_range, Value2),
		    % Get weights for each
		    range_to_weight(Value1, Weight1),
		    range_to_weight(Value2, Weight2),
		    % Compare
		    Weight1  >  Weight2.

The above function uses the following additional facts which define weights for the text values used.
The higher the number, the longer the range.

    range_to_weight(long, 3).
    range_to_weight(medium, 2).
    range_to_weight(short, 1).
    range_to_weight(close_quarters, 0).


###  list_weapons_by_year/1

Find all weapons in use in a specific year. This function uses three helper functions to deal with the various cases present in the network.

    list_weapons_in_use_year(Year) :-
		    % Find all pairs of Item-Era where the Item was active in the given Year
		    findall(Weapon-Era, (is_in_era(Weapon, Year), has_a_property(Weapon, era_used, Era)), List),
		    sort(List, Sorted),
		    format('Weapons active in the year ~w:~n', [Year]),
		    write('----------------------------------------'), nl,
		    % Split the Item and Era for formatting
		    forall(member(I-E, Sorted), format('- ~w (~w)~n', [I, E])).


Returns True if Year falls within the Era defined for the weapon:

    is_in_era(Weapon, Year) :-
    has_a_property(Weapon, era_used, Era),
    check_year(Year, Era).

 
Exact match case, for example `has_a(almace, era_used, 778)`

    check_year(Year, Year) :- number(Year).
  
Range match case, for example `has_a(arbalest, era_used, (1300, 1500))`

    check_year(Year, (Start, End)) :-
		    Year  >=  Start,
		    Year  =<  End.

  

