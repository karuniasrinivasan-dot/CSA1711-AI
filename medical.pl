% Medical Diagnosis System

diagnosis(fever, cough, flu).
diagnosis(fever, headache, viral_fever).
diagnosis(cough, sneezing, common_cold).
diagnosis(fever, body_pain, dengue).

check_disease(Symptom1, Symptom2, Disease) :-
    diagnosis(Symptom1, Symptom2, Disease).

check_disease(Symptom1, Symptom2, Disease) :-
    diagnosis(Symptom2, Symptom1, Disease).