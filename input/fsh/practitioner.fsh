// Practioner Providing Care for template Patient
Profile: PacificPractitioner
Parent: Practitioner
Id: pacific-practitioner
Title: "Pacific Practitioner"
Description: """
Practitioner profile for Pacific jurisdictions supporting culturally appropriate naming 
while maintaining regulatory and medico-legal identity requirements.

Requires at least one official name (registered/licensed name).
Supports usual name for culturally recognised or commonly used name.
Supports clan affiliation as an optional extension.
"""

* ^status = #active
* ^version = "1.0.0"

///////////////////////////////////////////////////////////////
// IDENTIFIERS
///////////////////////////////////////////////////////////////

* identifier 1..*
* identifier ^short = "Professional identifiers (registration, license, etc.)"
* identifier ^definition = "Includes professional registration numbers and other practitioner identifiers."

///////////////////////////////////////////////////////////////
// NAME
///////////////////////////////////////////////////////////////

* name 1..*
* name only PacificHumanName

* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "use"
* name ^slicing.rules = #open

* name contains
    official 1..1 and
    usual 0..1

* name[official].use = #official (exactly)
* name[official] ^short = "Registered/licensed name"

* name[usual].use = #usual (exactly)
* name[usual] ^short = "Name commonly used in clinical or community settings"

///////////////////////////////////////////////////////////////
// CLAN AFFILIATION (OPTIONAL)
///////////////////////////////////////////////////////////////

* extension contains PacificClanAffiliation named clanAffiliation 0..*

///////////////////////////////////////////////////////////////
// TELECOM
///////////////////////////////////////////////////////////////

* telecom 0..*
* telecom ^short = "Professional contact details"

///////////////////////////////////////////////////////////////
// ADDRESS
///////////////////////////////////////////////////////////////

* address 0..*
* address ^short = "Practice or correspondence address"

///////////////////////////////////////////////////////////////
// GENDER
///////////////////////////////////////////////////////////////

* gender 0..1
* gender ^short = "Administrative gender"

///////////////////////////////////////////////////////////////
// QUALIFICATIONS
///////////////////////////////////////////////////////////////

* qualification 0..*
* qualification ^short = "Professional qualifications"

///////////////////////////////////////////////////////////////
// COMMUNICATION
///////////////////////////////////////////////////////////////

* communication 0..*
* communication ^short = "Languages practitioner can use"

