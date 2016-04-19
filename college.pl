%
% Fiasco Playset: College Life
%
% Aleka Cheung, Christopher Li, Philip Lan
%

% Relations




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




% Objects