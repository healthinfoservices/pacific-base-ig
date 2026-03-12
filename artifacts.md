# Artifacts Summary - Pacific Base FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [BMI Vitals (Pacific region)](StructureDefinition-pacific-vital-bmi.md) | Profile for BMI vital observations in the Pacific region |
| [Blood Pressure Observation (Pacific region)](StructureDefinition-pacific-vital-blood-pressure.md) | Observation profile for blood pressure using LOINC |
| [Body Temperature Vitals (Pacific region)](StructureDefinition-pacific-vital-body-temperature.md) | Profile for body temperature vital observations in the Pacific region |
| [Heart Rate Vitals (Pacific region)](StructureDefinition-pacific-vital-heart-rate.md) | Profile for heart rate vital observations in the Pacific region |
| [Height Vitals (Pacific region)](StructureDefinition-pacific-vital-height.md) | Profile for height vital observations in the Pacific region |
| [Oxygen Saturation Vitals (Pacific region)](StructureDefinition-pacific-vital-oxygen-saturation.md) | Profile for oxygen saturation vital observations in the Pacific region |
| [Pacific Allergy/Intolerance](StructureDefinition-pacific-allergy-intolerance.md) | Profile of Allergy/Intolerance for Pacific Patient |
| [Pacific Condition](StructureDefinition-pacific-condition.md) | Profile of Condition as defined for South Pacific. |
| [Pacific Healthcare Organization](StructureDefinition-pacific-organization.md) | Profile for Pacific Healthcare Organization |
| [Pacific Observation](StructureDefinition-pacific-observation.md) | Profile of Observation as defined for South Pacific. |
| [Pacific Patient](StructureDefinition-pacific-patient.md) | Base Patient profile for South Pacific jurisdictions.Integrates:* PacificHumanName
* Patient-level clan affiliation
* Guidance for usual vs official name use
 |
| [Pacific Practitioner](StructureDefinition-pacific-practitioner.md) | Practitioner profile for Pacific jurisdictions supporting culturally appropriate naming while maintaining regulatory and medico-legal identity requirements.Requires at least one official name (registered/licensed name). Supports usual name for culturally recognised or commonly used name. Supports clan affiliation as an optional extension. |
| [Pacific Practitioner Role](StructureDefinition-pacific-practitioner-role.md) | Defines the functional, organisational, and regulatory role of a Pacific Practitioner.Supports multiple roles per practitioner (e.g., GP, hospital consultant, outreach clinician). Intended for use in Pacific regional health systems and future HIE environments. |
| [Respiratory Rate Vitals (Pacific region)](StructureDefinition-pacific-vital-respiratory-rate.md) | Profile for respiratory rate vital observations in the Pacific region |
| [Weight Vitals (Pacific region)](StructureDefinition-pacific-vital-weight.md) | Profile for weight vital observations in the Pacific region |

### Structures: Data Type Profiles 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Pacific Address](StructureDefinition-pacific-address.md) | Address profile designed for Pacific nations where addresses are commonly descriptive and village-based rather than street-based. This profile supports a range of address formats commonly used in Pacific jurisdictions, with commonly required extensions, and general usage guidance. Each national core IG derived from this base profile should further specify mappings of administrative hierarchies to the specific address fields In all cases:* text is a mandatory field and should be considered the primary representation of the fully address.
* line is used for free text address lines and may relate to a landmark, school, church etc. rather than a street address.
* Village and Island are added as extensions to the base fhir Address definition to support common Pacific address formats.
* clanAffiliation is already an extension in the PacificPatient, PacificProvider profiles so does not need to be duplicated here.
* geolocation is added as an optional extension to support use case where GPS coordinates are available. It is expected that this will become more common.
* Postal code is often not used, so is currently optional and may be removed (ie 0..0) if not required in the future
* Country is required to support international interoperability
Recommended mapping of address fields are below but should be specifically defined and documented in national core IGs
| | | |
| :--- | :--- | :--- |
| `text` | Full narrative address | Often the primary address form |
| `line` | Landmark, compound, street | Free-text |
| `city` | Town | Mainly urban areas |
| `district` | Ward / district / area council | Country dependent |
| `state` | Province / division | Country dependent |
| `extension:village` | Village | Most rural addresses |
| `extension:island` | Island | Important for logistics |
 |
| [Pacific HumanName](StructureDefinition-pacific-humanname.md) | A HumanName profile designed for South Pacific jurisdictions.This profile supports:* Absence of family names
* Patronymic structures
* Multiple given names
* Customary and ceremonial naming
* Distinction between 'usual' (social) and 'official' (legal) names
At least one HumanName instance must exist on Patient. Systems SHALL NOT require both usual and official names. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Island](StructureDefinition-pacific-address-island.md) | Island where the address is located. |
| [Pacific Clan Affiliation](StructureDefinition-pacific-clan-affiliation.md) | Represents clan, tribe, lineage, or descent-based group affiliation.This is a demographic identity attribute. It is not a syntactic component of a name. |
| [Village](StructureDefinition-pacific-address-village.md) | Village or rural settlement name used in Pacific addressing. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Heart Rate LOINC Codes](ValueSet-heart-rate-loinc.md) | LOINC codes for heart rate measurements, spot or average. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Fiji Patient - iTaukei with Mataqali](Patient-PacificPatientFijiITaukei.md) | Example Fijian patient of iTaukei background demonstrating:* Simulated national health identifier
* Official and usual names
* Mataqali clan affiliation
 |
| [Fiji Patient – Indo-Fijian](Patient-PacificPatientFijiIndo.md) | Example Indo-Fijian patient demonstrating:* Simulated national health identifier
* Official and usual names
* No clan affiliation
 |
| [Pacific Hospital Example – Fiji Divisional Hospital](Organization-PacificHospitalExample.md) | Example Pacific hospital organization in Fiji. Includes organizational identifier, contact information, and address. |
| [Pacific Practitioner Example – Samoa](Practitioner-PacificPractitionerExample.md) | Registered practitioner with official registration name and usual community name including clan affiliation. |
| [Pacific Practitioner Role District Hospital GP](PractitionerRole-PacificPractitionerRoleExample.md) | General Practitioner role at district hospital for registered Pacific practitioner. |
| [PacificPatientExample1](Patient-PacificPatientExample1.md) |  |
| [PacificPatientExample2](Patient-PacificPatientExample2.md) |  |

