%
% Fiasco Playset: College Life
%
% Aleka Cheung, Christopher Li, Philip Lan
%

% Relations
symmetric(roommates).
implies(relationship(X, roommates, _),\+role(X, professor)).
implies(relationship(_, roommates, Y),\+role(Y, professor)).
roles_relation(drug_dealer/drug_user).
implies(relationship(X, roommates, _),(role(X, professor);role(X,student))).
implies(relationship(_, roommates, Y),(role(Y, professor);role(Y,student))).
roles_relation(ta/student).
roles_relation(professor/student).
subrole(ta,student).
conflicting_roles(professor, student).
conflicting_roles(professor, ta).

symmetric(awkward_one_night_stand).
symmetric(hookup_buddies).
symmetric(deeply_in_love).
symmetric(open_relationship).
symmetric(in_same_dance_group).
symmetric(secretly_married).
symmetric(cheating_partners_for_classes).
implies(relationship(X, cheating_partners_for_classes, _), role(X, student)).
implies(relationship(_, cheating_partners_for_classes, Y), role(Y, student)).

%% In Rival Frats/Sororities
symmetric(competing_for_same_internship).
implies(relationship(X, competing_for_same_internship, _),
	role(X,student)).
implies(relationship(_, competing_for_same_internship, Y),
	role(Y,student)).
symmetric(contenders_for_same_heart).
symmetric(best_frineds).


% Needs

% Needs for everyone
need(sleep).
need(hide_weed).
need(get_drunk_to_forget_sorrows).
need(avoid_hookup).
need(shave_head_bald).
need(get_friend_laid).

% Needs for students (and some TA), not professors
need(get_laid_in_the_library).
contradiction(needs(C, get_laid_in_the_library),
			role(C, professor)).

need(bring_dog_to_class_without_professor_knowing).
contradiction(needs(C, bring_dog_to_class_without_professor_knowing),
			role(C, professor)).

need(join_burlesque).
contradiction(needs(C, join_burlesque),
			role(C, professor)).

need(fundraise_to_stay_in_school).
contradiction(needs(C, fundraise_to_stay_in_school),
			role(C, professor)).

need(blackmail_ex).
contradiction(needs(C, blackmail_ex),
			role(C, professor)).

role_need(student, get_revenge_on_TA).
role_need(studnet, pass_the_exam).
role_need(student, sell_weed_to_pay_for_tuition).

% Needs for professor/TA only
need(fail_straight_A_student).
contradiction(needs(C, fail_straight_A_student),
			role(C, student)).




% Locations
location(school_auditorium).
location(shady_apartment_building).
location(steachers_office).
role_location(student,rooftop_Bar).
role_location(student,empty_Library).
location(football_field).
location(sketchy_park).
location(chemistry_lab).
role_location(student,backroom_of_a_Starbucks).
location(gym_bathroom).
role_location(student,fraternity_Quad).
role_location(ta,fraternity_Quad).
role_location(student,inside_mom_s_car).
role_location(ta,inside_mom_s_car).
location(toilets_stall_with_no_toilet_paper).
location(unknown_person_s_bedroom).
location(burger_King).





% Objects
role_object(student, report_card_with_straight_Fs).
object(handles_of_vodka).
object(bag_of_dank_weed).
object(stolen_macbook).
role_object(student, tickets_to_Chance_the_Rapper).
object(midterm_answers).
object(brownie).
role_object(student,fake_ID).
object(mason_jar_of_fingernails).
object(childhood_stuffed_animal).
object(blonde_Wig).
object(selfie_stick).
role_object(student,blackmail_on_professor).
role_object(ta,blackmail_on_professor).
role_object(ta,blackmail_on_student).
role_object(professor,blackmail_on_student).
object(james_Bond_Pencil).
