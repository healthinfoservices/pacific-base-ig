Profile: PacificPatient
Parent: Patient
Id: pacific-patient
Title: "Pacific Base Patient"
Description: """
Base Patient profile for South Pacific jurisdictions.

Integrates:
- PacificHumanName
- Patient-level clan affiliation
- Guidance for usual vs official name use
"""

* ^status = #active

// -----------------------------
// Name Requirements
// -----------------------------

* name 1..*
* name only PacificHumanName

// Encourage but do not require official/usual
Invariant: pac-pat-1
Description: "At least one name must have use = usual or official"
Expression: "name.where(use = 'usual' or use = 'official').exists()"
Severity: #warning

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
