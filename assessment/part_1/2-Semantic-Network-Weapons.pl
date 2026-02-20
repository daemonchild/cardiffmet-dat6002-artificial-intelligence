
% is_a facts

is_a( anelace, dagger ).
is_a( arbalest, ranged_weapon ).
is_a( arming_sword, sword ).
is_a( arquebus, gun ).
is_a( artillery, ranged_weapon ).
is_a( ballista, stone_thrower ).
is_a( bardiche, polearm ).
is_a( battering_ram, siege_weapon ).
is_a( becs_de_corbin, polearm ).
is_a( biological_weapon, siege_weapon ).
is_a( bladed_hand_weapon, melee_weapon ).
is_a( blunt_hand_weapon, melee_weapon ).
is_a( bombard, cannon ).
is_a( bow, ranged_weapon ).
is_a( broad_sword, sword ).
is_a( cannon, artillery ).
is_a( cat, siege_weapon ).
is_a( chemical_weapon, siege_weapon ).
is_a( cleaver_falchion, falchion ).
is_a( club, blunt_hand_weapon ).
is_a( corseque, polearm ).
is_a( counterweight_trebuchet, stone_thrower ).
is_a( cross_bow, bow ).
is_a( cusped_falchion, falchion ).
is_a( dagger, bladed_hand_weapon ).
is_a( danish_axe, polearm ).
is_a( falchion, sword ).
is_a( fauchard, polearm ).
is_a( flail, blunt_hand_weapon ).
is_a( francisca, ranged_weapon ).
is_a( glaive, polearm ).
is_a( guisarme, polearm ).
is_a( gun, ranged_weapon ).
is_a( halberd, polearm ).
is_a( hand_cannon, gun ).
is_a( holy_water_sprinkler, blunt_hand_weapon ).
is_a( horsemans_pick, blunt_hand_weapon ).
is_a( javelin, ranged_weapon ).
is_a( knife, bladed_hand_weapon ).
is_a( lance, polearm ).
is_a( long_bow, bow ).
is_a( long_sword, sword ).
is_a( mace, blunt_hand_weapon ).
is_a( mangonel, stone_thrower ).
is_a( maul, polearm ).
is_a( medici_falchion, falchion ).
is_a( melee_weapon, weapon ).
is_a( modern_flanged_mace, polearm ).
is_a( morning_star, blunt_hand_weapon ).
is_a( onager, stone_thrower ).
is_a( petard, cannon ).
is_a( pike, polearm ).
is_a( poingnard, dagger ).
is_a( polearm, melee_weapon ).
is_a( pollaxe, polearm ).
is_a( psychological_weapon, siege_weapon ).
is_a( quarterstaff, polearm ).
is_a( ranged_weapon, weapon ).
is_a( rondel, dagger ).
is_a( siege_tower, siege_weapon ).
is_a( siege_weapon, weapon ).
is_a( sparth, polearm ).
is_a( spear, polearm ).
is_a( springald, stone_thrower ).
is_a( stiletto, dagger ).
is_a( stone_thrower, artillery ).
is_a( sword, bladed_hand_weapon ).
is_a( the_wallace_sword, long_sword ).
is_a( traction_trebuchet, stone_thrower ).
is_a( war_hammer, blunt_hand_weapon ).
is_a( weasel, siege_weapon ).
is_a( winged_spear, polearm ).

% has_a facts

has_a( anelace, lengthinches(20,30) ).
has_a( arming_sword, avgweight(light) ).
has_a( arming_sword, eraused(1000,1350) ).
has_a( arming_sword, hasedges(two_edges) ).
has_a( arming_sword, lengthinches(30,32) ).
has_a( arming_sword, usedby(knight) ).
has_a( blunt_hand_weapon, causesdamage(bash) ).
has_a( blunt_hand_weapon, primarymaterial(wood) ).
has_a( broad_sword, avglengthinches(30,32) ).
has_a( broad_sword, avgweight(substantial) ).
has_a( broad_sword, causesdamage(thrust) ).
has_a( broad_sword, eraused(1600,1799) ).
has_a( broad_sword, hasedges(two_edges) ).
has_a( broad_sword, haspart(basket_hilt) ).
has_a( dagger, causesdamage(puncture) ).
has_a( dagger, hasedges(two_edges) ).
has_a( dagger, usedby(commoners) ).
has_a( dagger, usedby(knights) ).
has_a( falchion, eraused(1000,1500,ad) ).
has_a( falchion, hasedges(one_edge) ).
has_a( falchion, historicalorigin(europe) ).
has_a( falchion, lengthinches(30,32) ).
has_a( falchion, usedby(mounted_knight) ).
has_a( knife, causesdamage(cut) ).
has_a( long_sword, alternatename(bastard_sword) ).
has_a( long_sword, alternatename(great_sword) ).
has_a( long_sword, alternatename(hand,and,a,half,sword) ).
has_a( long_sword, avglengthinches(40,48) ).
has_a( long_sword, causesdamage(thrust) ).
has_a( long_sword, eraused(1350,1550) ).
has_a( long_sword, hasedges(two_edges) ).
has_a( long_sword, haspart(fullers_(blood_grooves)) ).
has_a( long_sword, historicalorigin(europe) ).
has_a( long_sword, usedby(knight) ).
has_a( long_sword, weightkg(1.2,2.4) ).
has_a( mace, causesdamage(puncture) ).
has_a( medici_falchion, engravedwith(coat_of_arms_of_cosimo_de_medici) ).
has_a( medici_falchion, historicalorigin(florence) ).
has_a( medici_falchion, secondarymaterial(gold_plated) ).
has_a( medici_falchion, usedera(1560) ).
has_a( poingnard, eraused(1100,1799) ).
has_a( poingnard, historicalorigin(france) ).
has_a( poingnard, weight(lightweight) ).
has_a( rondel, lengthinches(20) ).
has_a( stiletto, alternatename(misericorde) ).
has_a( stiletto, causesdamage(puncture) ).
has_a( stiletto, eraused(1100,1799) ).
has_a( stiletto, hasedges(no_edges) ).
has_a( stiletto, historicalorigin(germany_and_england) ).
has_a( stone_thrower, alternatename(pierrier) ).
has_a( sword, causesdamage(cut) ).
has_a( sword, haspart(blade) ).
has_a( sword, haspart(hilt) ).
has_a( sword, haspart(pommel) ).
has_a( sword, primarymaterial(steel) ).
has_a( the_wallace_sword, eraused(late_13th_century) ).
has_a( the_wallace_sword, historicalorigin(scotland) ).
has_a( the_wallace_sword, weightkg(2.7) ).

% Inheritance Rule - Classes
% Base case
is_a_member(X, Y) :- is_a(X, Y).
% Recursive case
is_a_member(X, Y) :- is_a(X, Z), is_a_member(Z, Y).

% Inheritance Rule - Properties
% Base case
has_a_property(X, Y) :- has_a(X, Y).
% Recursive case, allowing for exceptions (over-ridden properties)
has_a_property(X, Y) :- is_a(X, Z), has_a_property(Z, Y).
% has_a_property(X, Y) :- is_a(X, Z), has_a_property(Z, Y), \+ exception(X, Y).

% Find all properties inherited by an entity
% - search returned into Result variable R
has_properties(X, R) :- findall(Y, has_a_property(X, Y), R).

% Finds all classes the entity belongs including itself
is_a_member_inc_self(X, Y) :- X = Y; is_a_member(X, Y).

