% Medieval Weapons in Prolog
% Auto generated from SemanticNetwork Class, by Tom Rowan

% is_a facts

% root_node is weapon

is_a( melee_weapon, weapon ).
is_a( ranged_weapon, weapon ).
is_a( siege_weapon, weapon ).
is_a( bladed_hand_weapon, melee_weapon ).
is_a( blunt_hand_weapon, melee_weapon ).
is_a( polearm, melee_weapon ).
is_a( arbalest, ranged_weapon ).
is_a( artillery, ranged_weapon ).
is_a( bow, ranged_weapon ).
is_a( francisca, ranged_weapon ).
is_a( gun, ranged_weapon ).
is_a( javelin, ranged_weapon ).
is_a( battering_ram, siege_weapon ).
is_a( biological_weapon, siege_weapon ).
is_a( cat, siege_weapon ).
is_a( chemical_weapon, siege_weapon ).
is_a( psychological_weapon, siege_weapon ).
is_a( siege_tower, siege_weapon ).
is_a( weasel, siege_weapon ).
is_a( cannon, artillery ).
is_a( stone_thrower, artillery ).
is_a( dagger, bladed_hand_weapon ).
is_a( knife, bladed_hand_weapon ).
is_a( sword, bladed_hand_weapon ).
is_a( club, blunt_hand_weapon ).
is_a( flail, blunt_hand_weapon ).
is_a( horsemans_pick, blunt_hand_weapon ).
is_a( mace, blunt_hand_weapon ).
is_a( war_hammer, blunt_hand_weapon ).
is_a( cross_bow, bow ).
is_a( long_bow, bow ).
is_a( arquebus, gun ).
is_a( hand_cannon, gun ).
is_a( bardiche, polearm ).
is_a( becs_de_corbin, polearm ).
is_a( corseque, polearm ).
is_a( danish_axe, polearm ).
is_a( fauchard, polearm ).
is_a( glaive, polearm ).
is_a( guisarme, polearm ).
is_a( halberd, polearm ).
is_a( lance, polearm ).
is_a( maul, polearm ).
is_a( modern_flanged_mace, polearm ).
is_a( pike, polearm ).
is_a( pollaxe, polearm ).
is_a( quarterstaff, polearm ).
is_a( sparth, polearm ).
is_a( spear, polearm ).
is_a( winged_spear, polearm ).
is_a( bombard, cannon ).
is_a( petard, cannon ).
is_a( morning_star, club ).
is_a( anelace, dagger ).
is_a( poingnard, dagger ).
is_a( rondel, dagger ).
is_a( stiletto, dagger ).
is_a( flanged_mace, mace ).
is_a( holy_water_sprinkler, mace ).
is_a( plançon_a_picot, mace ).
is_a( mace_of_bishop_odo, mace ).
is_a( ballista, stone_thrower ).
is_a( counterweight_trebuchet, stone_thrower ).
is_a( mangonel, stone_thrower ).
is_a( onager, stone_thrower ).
is_a( springald, stone_thrower ).
is_a( traction_trebuchet, stone_thrower ).
is_a( arming_sword, sword ).
is_a( broad_sword, sword ).
is_a( falchion, sword ).
is_a( long_sword, sword ).
is_a( almace, arming_sword ).
is_a( cleaver_falchion, falchion ).
is_a( cusped_falchion, falchion ).
is_a( medici_falchion, falchion ).
is_a( royal_armouries_holy_water_sprinkler, holy_water_sprinkler ).
is_a( the_wallace_sword, long_sword ).
is_a( wallace_collection_morning_star, morning_star ).

% has_a facts

has_a( almace, era_used,778 ).
has_a( almace, used_by,archbishop_turpin ).
has_a( anelace, length_inches,(20,30) ).
has_a( arming_sword, avg_weight,light ).
has_a( arming_sword, era_used,(1000,1350) ).
has_a( arming_sword, has_edges,two_edges ).
has_a( arming_sword, length_inches,(30,32) ).
has_a( arming_sword, used_by,knight ).
has_a( bladed_hand_weapon, has_part,blade ).
has_a( blunt_hand_weapon, causes_damage,bash ).
has_a( blunt_hand_weapon, effective_range_metres,(1,2) ).
has_a( blunt_hand_weapon, primary_material,wood ).
has_a( broad_sword, avg_weight,substantial ).
has_a( broad_sword, causes_damage,thrust ).
has_a( broad_sword, era_used,(1600,1799) ).
has_a( broad_sword, has_edges,two_edges ).
has_a( broad_sword, has_part,basket_hilt ).
has_a( broad_sword, length_inches,(30,32) ).
has_a( dagger, causes_damage,puncture ).
has_a( dagger, effective_range_metres,(0,1) ).
has_a( dagger, has_edges,two_edges ).
has_a( dagger, used_by,commoners ).
has_a( dagger, used_by,knights ).
has_a( falchion, era_used,(1000,1500) ).
has_a( falchion, has_edges,one_edge ).
has_a( falchion, historical_origin,europe ).
has_a( falchion, length_inches,(30,32) ).
has_a( falchion, used_by,mounted_knight ).
has_a( flanged_mace, alternate_name,bardoukion ).
has_a( flanged_mace, causes_damage,puncture ).
has_a( flanged_mace, era_used,(900,1300) ).
has_a( flanged_mace, historical_origin,byantine_empire ).
has_a( holy_water_sprinkler, alternate_name,goupillon ).
has_a( holy_water_sprinkler, used_by,foot_soldiers ).
has_a( knife, causes_damage,cut ).
has_a( knife, effective_range_metres,(0,1) ).
has_a( long_sword, alternate_name,bastard_sword ).
has_a( long_sword, alternate_name,great_sword ).
has_a( long_sword, alternate_name,hand_and_a_half_sword ).
has_a( long_sword, causes_damage,thrust ).
has_a( long_sword, era_used,(1350,1550) ).
has_a( long_sword, has_edges,two_edges ).
has_a( long_sword, has_part,fullers_aka_blood_grooves ).
has_a( long_sword, historical_origin,europe ).
has_a( long_sword, length_inches,(40,48) ).
has_a( long_sword, used_by,knight ).
has_a( long_sword, weight_kg,(1.2,2.4) ).
has_a( mace, cost,cheap ).
has_a( mace, length_inches,(24,48) ).
has_a( mace, used_by,cavalry ).
has_a( mace, used_by,foot_soldiers ).
has_a( mace_of_bishop_odo, era_used,1066 ).
has_a( mace_of_bishop_odo, used_by,bishop_odo_of_bayeux ).
has_a( medici_falchion, engraved_with,coat_of_arms_of_cosimo_de_medici ).
has_a( medici_falchion, era_used,1560 ).
has_a( medici_falchion, historical_origin,florence ).
has_a( medici_falchion, secondary_material,gold_plated ).
has_a( melee_weapon, effective_range_metres,(0,6) ).
has_a( morning_star, era_used,1300-1400 ).
has_a( morning_star, used_by,foot_soldiers ).
has_a( morning_star, used_by,peasant_militia ).
has_a( plançon_a_picot, causes_damage,puncture ).
has_a( plançon_a_picot, era_used,1300-1399 ).
has_a( plançon_a_picot, historical_origin,milan ).
has_a( plançon_a_picot, used_by,cavalieri ).
has_a( poingnard, era_used,(1100,1799) ).
has_a( poingnard, historical_origin,france ).
has_a( poingnard, weight,lightweight ).
has_a( polearm, effective_range_metres,(2,6) ).
has_a( ranged_weapon, effective_range_metres,(10,100) ).
has_a( rondel, length_inches,20 ).
has_a( royal_armouries_holy_water_sprinkler, length_inches,74.5 ).
has_a( royal_armouries_holy_water_sprinkler, spikes,eighteen_spikes ).
has_a( siege_weapon, effective_range_metres,(50,500) ).
has_a( stiletto, alternate_name,misericorde ).
has_a( stiletto, causes_damage,puncture ).
has_a( stiletto, era_used,(1100,1799) ).
has_a( stiletto, has_edges,no_edges ).
has_a( stiletto, historical_origin,england ).
has_a( stiletto, historical_origin,germany ).
has_a( stone_thrower, alternate_name,pierrier ).
has_a( sword, causes_damage,cut ).
has_a( sword, effective_range_metres,(1,2) ).
has_a( sword, has_part,blade ).
has_a( sword, has_part,hilt ).
has_a( sword, has_part,pommel ).
has_a( sword, primary_material,steel ).
has_a( the_wallace_sword, era_used,late_13th_century ).
has_a( the_wallace_sword, historical_origin,scotland ).
has_a( the_wallace_sword, weight_kg,2.7 ).
has_a( wallace_collection_morning_star, era_used,1500-1599 ).
has_a( wallace_collection_morning_star, primary_material,steel ).
has_a( wallace_collection_morning_star, purpose,decorative ).
has_a( wallace_collection_morning_star, secondary_material,(gold,silver) ).
has_a( weapon, maintenance_required,periodic ).
has_a( weapon, primary_function,combat ).
has_a( weapon, requires_operator,human ).
has_a( weapon, skill_level,(basic,advanced) ).

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
