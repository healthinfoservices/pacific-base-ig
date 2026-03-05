Profile: PacificPatient
Parent: Patient
Id: pacific-patient
Title: "Pacific Patient"
Description: """
Base Patient profile for South Pacific jurisdictions.

Integrates:
- PacificHumanName
- Patient-level clan affiliation
- Guidance for usual vs official name use
"""

* ^status = #active

///////////////////////////////////////////////////////////////
// IDENTIFIERS
///////////////////////////////////////////////////////////////

* identifier 1..*
* identifier ^short = "Identifers (e.g., national ID, medical record number)"
* identifier ^definition = "Strongly recommended to includes national identification numbers as well as other medical record numbers."

// -----------------------------
// Name Requirements
// -----------------------------

* name 1..*
* name only PacificHumanName

// -----------------------------
// Clan Extension Integration
// -----------------------------

* extension contains PacificClanAffiliation named clanAffiliation 0..*

* extension[clanAffiliation] MS

// -----------------------------
// Basic Demographics
// -----------------------------

* gender MS
* birthDate MS

// -----------------------------
// Display Guidance
// -----------------------------

* name ^short = "At least one name required; usual preferred for display"


* generalPractitioner 0..*
* generalPractitioner only Reference(PacificPractitioner or PacificOrganization or PacificPractitionerRole or Practitioner or Organization or PractitionerRole)
* generalPractitioner ^short = "Care providers for this patient; prefer Pacific-specific profiles"

* managingOrganization 0..1
* managingOrganization only Reference(PacificOrganization or Organization)
* managingOrganization ^short = "Organization responsible for the patient; prefer Pacific-specific profiles"

///////////////////////////////////////////////////////////////
// COMMUNICATION
///////////////////////////////////////////////////////////////

* communication 0..*
* communication ^short = "Languages patient can use"

// Encourage but do not require official/usual
Invariant: pac-pat-1
Description: "At least one name must have use = usual or official"
Expression: "name.where(use = 'usual' or use = 'official').exists()"
Severity: #warning
