% Medieval Weapons Semantic Network in Prolog
% Auto generated from SemanticNetwork Class, by Tom Rowan

% is_a facts

% root_node is weapon

is_a( melee_weapon, weapon ).
is_a( ranged_weapon, weapon ).
is_a( siege_weapon, weapon ).
is_a( bladed_hand_weapon, melee_weapon ).
is_a( blunt_hand_weapon, melee_weapon ).
is_a( polearm, melee_weapon ).
is_a( artillery, ranged_weapon ).
is_a( bow, ranged_weapon ).
is_a( francisca, ranged_weapon ).
is_a( gun, ranged_weapon ).
is_a( javelin, ranged_weapon ).
is_a( battering_ram, siege_weapon ).
is_a( biological_weapon, siege_weapon ).
is_a( chemical_weapon, siege_weapon ).
is_a( psychological_weapon, siege_weapon ).
is_a( moveable_structure, siege_weapon ).
is_a( cannon, artillery ).
is_a( stone_thrower, artillery ).
is_a( dagger, bladed_hand_weapon ).
is_a( knife, bladed_hand_weapon ).
is_a( sword, bladed_hand_weapon ).
is_a( club, blunt_hand_weapon ).
is_a( mace, blunt_hand_weapon ).
is_a( flail, blunt_hand_weapon ).
is_a( horsemans_pick, blunt_hand_weapon ).
is_a( cross_bow, bow ).
is_a( long_bow, bow ).
is_a( arquebus, gun ).
is_a( hand_cannon, gun ).
is_a( cat_and_weasel, moveable_structure ).
is_a( siege_tower, moveable_structure ).
is_a( becs_de_corbin, polearm ).
is_a( danish_axe, polearm ).
is_a( fauchard, polearm ).
is_a( glaive, polearm ).
is_a( guisarme, polearm ).
is_a( halberd, polearm ).
is_a( lance, polearm ).
is_a( maul, polearm ).
is_a( modern_flanged_mace, polearm ).
is_a( pike, polearm ).
is_a( quarterstaff, polearm ).
is_a( spear, polearm ).
is_a( musket, arquebus ).
is_a( cavalier, arquebus ).
is_a( bombard, cannon ).
is_a( petard, cannon ).
is_a( morning_star, club ).
is_a( arbalest, cross_bow ).
is_a( anelace, dagger ).
is_a( poingnard, dagger ).
is_a( rondel, dagger ).
is_a( stiletto, dagger ).
is_a( pollaxe, danish_axe ).
is_a( sparth, danish_axe ).
is_a( flanged_mace, mace ).
is_a( holy_water_sprinkler, mace ).
is_a( plançon_a_picot, mace ).
is_a( mace_of_bishop_odo, mace ).
is_a( winged_spear, spear ).
is_a( angon, spear ).
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
is_a( bardiche, pollaxe ).
is_a( bohemian_ear_spoon, winged_spear ).
is_a( spetum, winged_spear ).
is_a( corsque, winged_spear ).
is_a( partisan, winged_spear ).
is_a( ranseur, corsque ).

% has_a facts

has_a( almace, era_used,778 ).
has_a( almace, used_by,archbishop_turpin ).
has_a( anelace, length_inches,(20,30) ).
has_a( angon, attack_type,thrown ).
has_a( angon, effective_range,medium ).
has_a( angon, historical_origin,anglo_saxons ).
has_a( angon, is_throwable,throwable ).
has_a( arbalest, era_used,(1300,1500) ).
has_a( arming_sword, era_used,(1000,1350) ).
has_a( arming_sword, has_edges,two_edges ).
has_a( arming_sword, length_inches,(30,32) ).
has_a( arming_sword, used_by,knight ).
has_a( arquebus, alternate_name,hook_tube ).
has_a( arquebus, ammunition_type,bullets ).
has_a( arquebus, ammunition_type,shot ).
has_a( arquebus, attack_type,impact ).
has_a( arquebus, era_used,(1400,1600) ).
has_a( arquebus, has_part,barrel ).
has_a( arquebus, has_part,stock ).
has_a( artillery, effective_against,fortifications ).
has_a( artillery, effective_range,long ).
has_a( artillery, movement_speed,slow ).
has_a( artillery, people_reqd,a_team ).
has_a( ballista, ammunition_type,iron_tipped_bolt ).
has_a( ballista, era_used,(1200,1500) ).
has_a( battering_ram, ammunition_type,no_ammunition ).
has_a( battering_ram, effective_against,fortifications ).
has_a( battering_ram, effective_range,close_quarters ).
has_a( battering_ram, movement_speed,medium ).
has_a( becs_de_corbin, alternate_name,war_hammer ).
has_a( becs_de_corbin, attack_type,puncture ).
has_a( becs_de_corbin, era_used,(1300,1500) ).
has_a( biological_weapon, attack_rate,medium ).
has_a( biological_weapon, effective_against,personnel ).
has_a( biological_weapon, effective_range,long ).
has_a( biological_weapon, is_throwable,throwable ).
has_a( bladed_hand_weapon, attack_type,cut ).
has_a( bladed_hand_weapon, effective_range,close_quarters ).
has_a( bladed_hand_weapon, has_part,blade ).
has_a( blunt_hand_weapon, attack_type,bash ).
has_a( blunt_hand_weapon, effective_range,close_quarters ).
has_a( blunt_hand_weapon, primary_material,wood ).
has_a( bombard, ammunition_type,stone_ball ).
has_a( bombard, era_used,(1350,1500) ).
has_a( bow, effective_range,medium ).
has_a( broad_sword, attack_type,thrust ).
has_a( broad_sword, era_used,(1600,1800) ).
has_a( broad_sword, has_edges,two_edges ).
has_a( broad_sword, has_part,basket_hilt ).
has_a( broad_sword, length_inches,(30,32) ).
has_a( cannon, ammunition_type,steel_ball ).
has_a( cannon, attack_type,impact ).
has_a( cat_and_weasel, attack_rate,slow ).
has_a( cat_and_weasel, effective_range,close_quarters ).
has_a( cat_and_weasel, movement_speed,medium ).
has_a( chemical_weapon, attack_rate,medium ).
has_a( chemical_weapon, effective_against,personnel ).
has_a( chemical_weapon, effective_range,long ).
has_a( chemical_weapon, is_throwable,throwable ).
has_a( club, attack_type,bash ).
has_a( corsque, alternate_name,chauve_souris ).
has_a( corsque, attack_type,thrust ).
has_a( corsque, has_part,three_bladed_head ).
has_a( counterweight_trebuchet, attack_rate,fast ).
has_a( counterweight_trebuchet, era_used,(1100,1400) ).
has_a( counterweight_trebuchet, historical_origin,middle_east ).
has_a( cross_bow, alternate_name,frankish_bow ).
has_a( cross_bow, ammunition_type,bolt ).
has_a( cross_bow, attack_type,puncture ).
has_a( cross_bow, effective_range,medium ).
has_a( cross_bow, era_used,(500,1500) ).
has_a( dagger, attack_type,puncture ).
has_a( dagger, effective_range,close_quarters ).
has_a( dagger, has_edges,two_edges ).
has_a( dagger, has_part,blade ).
has_a( dagger, is_throwable,throwable ).
has_a( dagger, primary_material,steel ).
has_a( dagger, used_by,commoners ).
has_a( dagger, used_by,knights ).
has_a( danish_axe, alternate_name,broad_axe ).
has_a( danish_axe, alternate_name,dane_axe ).
has_a( danish_axe, attack_type,chop ).
has_a( danish_axe, era_used,(700,1400) ).
has_a( danish_axe, has_edges,one_edge ).
has_a( danish_axe, has_part,axe_head ).
has_a( danish_axe, has_part,shaft ).
has_a( danish_axe, historical_origin,vikings ).
has_a( danish_axe, is_throwable,throwable ).
has_a( danish_axe, length_inches,(48,72) ).
has_a( falchion, era_used,(1000,1500) ).
has_a( falchion, has_edges,one_edge ).
has_a( falchion, historical_origin,europe ).
has_a( falchion, length_inches,(30,32) ).
has_a( falchion, used_by,mounted_knight ).
has_a( fauchard, length_inches,(72,84) ).
has_a( flanged_mace, alternate_name,bardoukion ).
has_a( flanged_mace, attack_type,puncture ).
has_a( flanged_mace, era_used,(900,1300) ).
has_a( flanged_mace, historical_origin,byzantine_empire ).
has_a( francisca, ammunition_type,no_ammunition ).
has_a( francisca, attack_rate,fast ).
has_a( francisca, effective_range,short ).
has_a( francisca, era_used,(500,800) ).
has_a( francisca, has_part,axe_head ).
has_a( francisca, historical_origin,francs ).
has_a( francisca, is_throwable,throwable ).
has_a( francisca, length_inches,(18,21) ).
has_a( francisca, primary_material,wood ).
has_a( francisca, secondary_material,iron ).
has_a( glaive, attack_type,thrust ).
has_a( glaive, era_used,(1000,1400) ).
has_a( glaive, has_part,blade ).
has_a( glaive, has_part,shaft ).
has_a( glaive, length_inches,(72,84) ).
has_a( glaive, used_by,cavalry ).
has_a( glaive, used_by,foot_soldiers ).
has_a( guisarme, alternate_name,bisarme ).
has_a( guisarme, alternate_name,giserne ).
has_a( guisarme, attack_type,dismount ).
has_a( guisarme, era_used,(1000,1400) ).
has_a( guisarme, has_part,hook ).
has_a( guisarme, has_part,shaft ).
has_a( guisarme, used_by,foot_soldiers ).
has_a( gun, attack_rate,slow ).
has_a( gun, effective_range,long ).
has_a( halberd, alternate_name,hellembart ).
has_a( halberd, alternate_name,swiss_voulge ).
has_a( halberd, attack_type,chop ).
has_a( halberd, attack_type,thrust ).
has_a( halberd, era_used,(1300,1500) ).
has_a( halberd, has_edges,one_edge ).
has_a( halberd, has_part,axe_head ).
has_a( halberd, has_part,shaft ).
has_a( halberd, has_part,spike ).
has_a( halberd, historical_origin,swiss ).
has_a( hand_cannon, alternate_name,gonne ).
has_a( hand_cannon, ammunition_type,arrow ).
has_a( hand_cannon, ammunition_type,iron_ball ).
has_a( hand_cannon, ammunition_type,stone ).
has_a( hand_cannon, attack_type,impact ).
has_a( hand_cannon, effective_range,medium ).
has_a( hand_cannon, era_used,(1100,1600) ).
has_a( hand_cannon, has_part,barrel ).
has_a( hand_cannon, has_part,stock ).
has_a( hand_cannon, historical_origin,china ).
has_a( hand_cannon, primary_material,metal ).
has_a( hand_cannon, secondary_material,bamboo ).
has_a( hand_cannon, secondary_material,wood ).
has_a( holy_water_sprinkler, alternate_name,goupillon ).
has_a( holy_water_sprinkler, used_by,foot_soldiers ).
has_a( javelin, alternate_name,france ).
has_a( javelin, alternate_name,light_spear ).
has_a( javelin, ammunition_type,no_ammunition ).
has_a( javelin, attack_rate,slow ).
has_a( javelin, attack_type,puncture ).
has_a( javelin, effective_range,medium ).
has_a( javelin, has_part,head ).
has_a( javelin, has_part,shaft ).
has_a( javelin, historical_origin,vikings ).
has_a( javelin, is_throwable,throwable ).
has_a( javelin, length_inches,(72,96) ).
has_a( knife, effective_range,close_quarters ).
has_a( knife, has_edges,one_edge ).
has_a( knife, has_part,blade ).
has_a( knife, is_throwable,throwable ).
has_a( knife, primary_material,steel ).
has_a( knife, secondary_material,wood ).
has_a( lance, alternate_name,cavalry_spear ).
has_a( lance, attack_type,puncture ).
has_a( lance, effective_against,cavalry ).
has_a( lance, has_part,shaft ).
has_a( lance, has_part,tip ).
has_a( lance, has_part,vamplate ).
has_a( lance, historical_origin,romans ).
has_a( lance, length_inches,(118,157) ).
has_a( lance, used_by,foot_soldiers ).
has_a( lance, used_by,knights ).
has_a( long_bow, alternate_name,self_bow ).
has_a( long_bow, ammunition_type,arrow ).
has_a( long_bow, attack_type,puncture ).
has_a( long_bow, effective_range,long ).
has_a( long_bow, era_used,(1200,1500) ).
has_a( long_bow, length_inches,72 ).
has_a( long_bow, primary_material,wood ).
has_a( long_bow, primary_material,yew_wood ).
has_a( long_sword, alternate_name,bastard_sword ).
has_a( long_sword, alternate_name,great_sword ).
has_a( long_sword, alternate_name,hand_and_a_half_sword ).
has_a( long_sword, attack_type,thrust ).
has_a( long_sword, era_used,(1250,1550) ).
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
has_a( mangonel, ammunition_type,burning_pitch ).
has_a( mangonel, ammunition_type,flammable_pots ).
has_a( mangonel, ammunition_type,multiple_stones ).
has_a( mangonel, era_used,(1200,1500) ).
has_a( mangonel, has_part,fixed_bowl ).
has_a( maul, attack_type,bash ).
has_a( maul, era_used,(1300,1500) ).
has_a( maul, has_part,hammer_head ).
has_a( maul, has_part,shaft ).
has_a( maul, used_by,archers ).
has_a( medici_falchion, decoration,coat_of_arms_of_cosimo_de_medici ).
has_a( medici_falchion, era_used,1560 ).
has_a( medici_falchion, historical_origin,florence ).
has_a( medici_falchion, secondary_material,gold_plated ).
has_a( medici_falchion, use_case,ceremonial ).
has_a( melee_weapon, ammunition_type,no_ammunition ).
has_a( melee_weapon, effective_against,personnel ).
has_a( melee_weapon, is_throwable,not_throwable ).
has_a( melee_weapon, movement_speed,fast ).
has_a( melee_weapon, people_reqd,one_person ).
has_a( melee_weapon, use_case,attack ).
has_a( morning_star, era_used,(1300,1400) ).
has_a( morning_star, used_by,foot_soldiers ).
has_a( morning_star, used_by,peasant_militia ).
has_a( moveable_structure, ammunition_type,no_ammunition ).
has_a( moveable_structure, effective_against,fortifications ).
has_a( onager, ammunition_type,burning_pitch ).
has_a( onager, ammunition_type,stones ).
has_a( onager, effective_range,medium ).
has_a( onager, has_part,sling_basket ).
has_a( onager, historical_origin,romans ).
has_a( petard, alternate_name,a_bomb ).
has_a( petard, ammunition_type,iron_shot ).
has_a( petard, attack_type,explosion ).
has_a( petard, effective_against,gates ).
has_a( petard, effective_against,tunnels ).
has_a( petard, effective_against,walls ).
has_a( petard, era_used,(1500,1600) ).
has_a( petard, historical_origin,france ).
has_a( petard, people_reqd,one_person ).
has_a( pike, alternate_name,geldon ).
has_a( pike, attack_type,thrust ).
has_a( pike, effective_against,cavalry ).
has_a( pike, effective_range,medium ).
has_a( pike, era_used,(500,1700) ).
has_a( pike, length_inches,(120,240) ).
has_a( pike, primary_material,wood ).
has_a( pike, secondary_material,iron ).
has_a( pike, secondary_material,steel ).
has_a( plançon_a_picot, attack_type,puncture ).
has_a( plançon_a_picot, era_used,(1300,1400) ).
has_a( plançon_a_picot, historical_origin,milan ).
has_a( plançon_a_picot, used_by,cavalieri ).
has_a( poingnard, era_used,(1100,1800) ).
has_a( poingnard, historical_origin,france ).
has_a( polearm, attack_type,thrust ).
has_a( polearm, effective_range,short ).
has_a( pollaxe, era_used,(1300,1500) ).
has_a( psychological_weapon, ammunition_type,no_ammunition ).
has_a( psychological_weapon, effective_against,personnel ).
has_a( psychological_weapon, effective_range,long ).
has_a( psychological_weapon, movement_speed,medium ).
has_a( quarterstaff, alternate_name,staff ).
has_a( quarterstaff, attack_type,bash ).
has_a( quarterstaff, cost,cheap ).
has_a( quarterstaff, era_used,(500,1800) ).
has_a( quarterstaff, has_edges,no_edges ).
has_a( quarterstaff, primary_material,wood ).
has_a( ranged_weapon, attack_rate,medium ).
has_a( ranged_weapon, effective_against,personnel ).
has_a( ranged_weapon, is_throwable,not_throwable ).
has_a( ranged_weapon, movement_speed,fast ).
has_a( ranged_weapon, people_reqd,one_person ).
has_a( ranged_weapon, use_case,attack ).
has_a( rondel, length_inches,20 ).
has_a( royal_armouries_holy_water_sprinkler, length_inches,74.5 ).
has_a( royal_armouries_holy_water_sprinkler, use_case,ceremonial ).
has_a( siege_tower, attack_rate,slow ).
has_a( siege_tower, effective_range,short ).
has_a( siege_weapon, has_edges,no_edges ).
has_a( siege_weapon, is_throwable,not_throwable ).
has_a( siege_weapon, movement_speed,slow ).
has_a( siege_weapon, people_reqd,a_team ).
has_a( siege_weapon, use_case,attack ).
has_a( sparth, alternate_name,pale_axe ).
has_a( sparth, alternate_name,sparr ).
has_a( sparth, era_used,(1200,1400) ).
has_a( sparth, has_part,broad_blade ).
has_a( sparth, historical_origin,ireland ).
has_a( sparth, historical_origin,scotland ).
has_a( spear, attack_type,thrust ).
has_a( spear, era_used,(500,1400) ).
has_a( spear, has_part,head ).
has_a( spear, has_part,shaft ).
has_a( spear, historical_origin,stone_age ).
has_a( spear, is_throwable,throwable ).
has_a( spear, length_inches,(72,96) ).
has_a( spear, primary_material,wood ).
has_a( spear, secondary_material,bronze ).
has_a( spear, secondary_material,iron ).
has_a( spear, secondary_material,obsidian ).
has_a( springald, ammunition_type,heavy_bolt ).
has_a( springald, effective_range,medium ).
has_a( springald, era_used,(1200,1500) ).
has_a( stiletto, alternate_name,misericorde ).
has_a( stiletto, attack_type,puncture ).
has_a( stiletto, era_used,(1100,1800) ).
has_a( stiletto, has_edges,no_edges ).
has_a( stiletto, historical_origin,england ).
has_a( stiletto, historical_origin,germany ).
has_a( stone_thrower, alternate_name,pierrier ).
has_a( stone_thrower, ammunition_type,stone ).
has_a( stone_thrower, attack_type,impact ).
has_a( stone_thrower, primary_material,wood ).
has_a( sword, has_edges,two_edges ).
has_a( sword, has_part,blade ).
has_a( sword, has_part,hilt ).
has_a( sword, has_part,pommel ).
has_a( sword, primary_material,steel ).
has_a( the_wallace_sword, era_used,1298 ).
has_a( the_wallace_sword, historical_origin,scotland ).
has_a( the_wallace_sword, used_by,william_wallace ).
has_a( the_wallace_sword, weight_kg,2.7 ).
has_a( traction_trebuchet, era_used,(400,1400) ).
has_a( traction_trebuchet, historical_origin,china ).
has_a( traction_trebuchet, people_reqd,15_45 ).
has_a( wallace_collection_morning_star, era_used,(1500,1600) ).
has_a( wallace_collection_morning_star, primary_material,steel ).
has_a( wallace_collection_morning_star, secondary_material,(gold,silver) ).
has_a( wallace_collection_morning_star, use_case,ceremonial ).
has_a( weapon, era_used,(476,1500) ).
has_a( winged_spear, alternate_name,barred_spear ).
has_a( winged_spear, has_part,head ).
has_a( winged_spear, has_part,shaft ).
has_a( winged_spear, has_part,wings ).
has_a( winged_spear, historical_origin,francs ).
has_a( winged_spear, historical_origin,romans ).
has_a( winged_spear, historical_origin,vikings ).
has_a( winged_spear, is_throwable,throwable ).


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

% Get all parents
is_a_member_inc_self(X, Y) :- X = Y; is_a_member(X, Y).


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
    format('-- ~w (~w)~n', [Item, Depth]),
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
