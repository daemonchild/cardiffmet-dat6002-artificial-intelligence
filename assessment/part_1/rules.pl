% Rules (Generic for is_a, has_a semantic networks produced by Class)

% Inheritance Rule - Classes

% Base case
is_a_member(X, Y) :- is_a(X, Y).

% Recursive case
is_a_member(X, Y) :- is_a(X, Z), is_a_member(Z, Y).

% Inheritance Rule - Properties

% Base case
has_a_property(X, Y) :- has_a(X, Y).

% Recursive case, allowing for exceptions (over-ridden properties)
has_a_property(X, Y) :- 
    \+ has_a(X, _),
    is_a(X, Z), 
    has_a_property(Z, Y).is_a(X, Z), has_a_property(Z, Y).

% Finds all classes the entity belongs including itself
is_a_member_inc_self(X, Y) :- X = Y; is_a_member(X, Y).

% Get everything for an entity, store in two lists
get_all_for_weapon(X, Is_A_Member_Of, Has_Properties) :-
    % Collect all ancestors into Is_A_Member_Of (not sorted, showing inheritence order)
    bagof(Y, is_a_member(X, Y), Is_A_Member_Of),
    % Collect all inherited properties into Has_Properties (sorted alphabetically)
    setof(Z, has_a_property(X, Z), Has_Properties).

