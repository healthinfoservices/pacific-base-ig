# Pacific Practitioner Role - Pacific Base FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pacific Practitioner Role**

## Resource Profile: Pacific Practitioner Role 

| | |
| :--- | :--- |
| *Official URL*:https://healthinfoservices.net/pacific-base-ig/StructureDefinition/pacific-practitioner-role | *Version*:1.0.0 |
| Active as of 2026-03-12 | *Computable Name*:PacificPractitionerRole |

 
Defines the functional, organisational, and regulatory role of a Pacific Practitioner. 
Supports multiple roles per practitioner (e.g., GP, hospital consultant, outreach clinician). Intended for use in Pacific regional health systems and future HIE environments. 

**Usages:**

* Refer to this Profile: [Pacific Patient](StructureDefinition-pacific-patient.md)
* Examples for this Profile: [PractitionerRole/PacificPractitionerRoleExample](PractitionerRole-PacificPractitionerRoleExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pacific.base.ig|current/StructureDefinition/pacific-practitioner-role)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-pacific-practitioner-role.csv), [Excel](StructureDefinition-pacific-practitioner-role.xlsx), [Schematron](StructureDefinition-pacific-practitioner-role.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pacific-practitioner-role",
  "url" : "https://healthinfoservices.net/pacific-base-ig/StructureDefinition/pacific-practitioner-role",
  "version" : "1.0.0",
  "name" : "PacificPractitionerRole",
  "title" : "Pacific Practitioner Role",
  "status" : "active",
  "date" : "2026-03-12T07:48:11+00:00",
  "description" : "Defines the functional, organisational, and regulatory role of a Pacific Practitioner.\n\nSupports multiple roles per practitioner (e.g., GP, hospital consultant, outreach clinician).\nIntended for use in Pacific regional health systems and future HIE environments.",
  "fhirVersion" : "4.3.0",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "PractitionerRole",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRole",
      "path" : "PractitionerRole"
    },
    {
      "id" : "PractitionerRole.identifier",
      "path" : "PractitionerRole.identifier",
      "short" : "Role-specific identifiers (facility appointment number, contract ID, etc.)"
    },
    {
      "id" : "PractitionerRole.period",
      "path" : "PractitionerRole.period",
      "short" : "Time period during which this role is active"
    },
    {
      "id" : "PractitionerRole.practitioner",
      "path" : "PractitionerRole.practitioner",
      "short" : "The practitioner performing this role",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://healthinfoservices.net/pacific-base-ig/StructureDefinition/pacific-practitioner"]
      }]
    },
    {
      "id" : "PractitionerRole.organization",
      "path" : "PractitionerRole.organization",
      "short" : "The healthcare organisation where the role is performed",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://healthinfoservices.net/pacific-base-ig/StructureDefinition/pacific-organization"]
      }]
    },
    {
      "id" : "PractitionerRole.code",
      "path" : "PractitionerRole.code",
      "short" : "Role or function performed",
      "definition" : "Describes the functional role such as General Practitioner, Nurse Practitioner, Specialist, etc.",
      "min" : 1
    },
    {
      "id" : "PractitionerRole.specialty",
      "path" : "PractitionerRole.specialty",
      "short" : "Clinical specialty"
    },
    {
      "id" : "PractitionerRole.location",
      "path" : "PractitionerRole.location",
      "short" : "Location(s) where practitioner performs this role"
    },
    {
      "id" : "PractitionerRole.healthcareService",
      "path" : "PractitionerRole.healthcareService",
      "short" : "Services provided under this role"
    },
    {
      "id" : "PractitionerRole.telecom",
      "path" : "PractitionerRole.telecom",
      "short" : "Contact details specific to this role"
    }]
  }
}

```
