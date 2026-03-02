// Condition registered
Profile: PacificCondition
Parent: Condition
Description: "Profile of Condition as defined for South Pacific."
* identifier 1..* MS
* code 1..1
* clinicalStatus 1..1 MS
* verificationStatus 0..1 MS
* category 1..* MS
* severity 0..1
* subject only Reference(PacificPatient)

