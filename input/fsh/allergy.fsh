// Medication Allergies 
Profile: PacificAllergyIntolerance
Parent: $au-allergyintolerance
Description: "Profile of Allergy/Intolerance"
* code 1..1 MS
* clinicalStatus 0..1 MS
* verificationStatus 0..1 MS
* category 1..* MS
* criticality 0..1 MS
* patient only Reference(PacificPatient)
