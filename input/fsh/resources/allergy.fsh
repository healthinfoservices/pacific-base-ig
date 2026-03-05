// Medication Allergies 
Profile: PacificAllergyIntolerance
Parent: AllergyIntolerance
Description: "Profile of Allergy/Intolerance for Pacific Patient"
* code 1..1 MS
* clinicalStatus 0..1 MS
* verificationStatus 0..1 MS
* category 1..* MS
* criticality 0..1 MS
* patient only Reference(PacificPatient)
