
% Rules (Generic for is_a, has_a semantic networks produced by Class)

% Inheritance Rule - Classes

% Base case
is_a_member(X, Y) :- is_a(X, Y).

% Recursive case
is_a_member(X, Y) :- is_a(X, Z), is_a_member(Z, Y).

% Inheritance Rule - Properties

has_a_property(Weapon, Property) :-
    % Collect all unique properties found through the hierarchy
    setof(P, find_raw_prop(Weapon, P), AllProps),
    member(Property, AllProps).

% 3. Helper to find props (this is where the logic lives)
find_raw_prop(Weapon, Property) :-
    has_a(Weapon, Property).

find_raw_prop(Weapon, Property) :-
    is_a_member(Weapon, Ancestor),
    has_a(Ancestor, Property),
    % Extract name to check for local overrides
    functor(Property, Name, Arity),
    functor(Pattern, Name, Arity),
    \+ has_a(Weapon, Pattern).

% Finds all classes the entity belongs including itself
is_a_member_inc_self(X, Y) :- X = Y; is_a_member(X, Y).

% Get everything for an entity, store in two lists
get_all_for_entity(X, Is_A_Member_Of, Has_Properties) :-
    % Collect all ancestors into Is_A_Member_Of (not sorted, showing inheritence order)
    bagof(Y, is_a_member(X, Y), Is_A_Member_Of),
    % Collect all inherited properties into Has_Properties (sorted alphabetically)
    setof(Z, has_a_property(X, Z), Has_Properties).

