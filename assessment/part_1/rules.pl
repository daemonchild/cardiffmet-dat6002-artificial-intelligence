% Inheritance Rule - Classes
% Base case
is_a_member(X, Y) :- is_a(X, Y).
% Recursive case
is_a_member(X, Y) :- is_a(X, Z), is_a_member(Z, Y).

% Inheritance Rule - Properties
% Base case
has_a_property(X, Y) :- has_a(X, Y).
% Recursive case, allowing for exceptions (over-ridden properties)
has_a_property(X, Y) :- is_a(X, Z), has_a_property(Z, Y), \+ exception(X, Y).


% Find all properties inherited by an entity
% - search returned into Result variable R
has_properties(X, R) :- findall(Y, has_a_property(X, Y), R).

% Finds all classes the entity belongs including itself
is_a_member_inc_self(X, Y) :- setof(X = Y; is_a_member(X, Y)).


% 1. Define what a "trait" is (Is-a OR Has-a)
trait(Entity, Trait) :- is_a_member(Entity, Trait).
trait(Entity, Trait) :- has_a_property(Entity, Trait).

% 2. Collect everything into one list
get_full_profile(Entity, Profile) :-
    setof(T, trait(Entity, T), Profile).




% Get everything Bert IS and everything Bert HAS in separate lists
get_full_identity(Entity, TypeOf, HasProperties) :-
    % Collect all ancestors (Type Of)
    setof(Class, is_a_member(Entity, Class), TypeOf),
    % Collect all inherited attributes (Has Properties)
    setof(Prop, has_a_property(Entity, Prop), HasProperties).

% Base case: You have the property directly
has_a_smart(Entity, Property) :- 
    has_a(Entity, Property).

% Recursive case: Inherit from parent ONLY if no exception exists
has_a_smart(Entity, Property) :-
    is_a(Entity, Parent),
    has_a_smart(Parent, Property),
    \+ exception(Entity, Property).