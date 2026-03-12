# Pacific Observation - Pacific Base FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pacific Observation**

## Resource Profile: Pacific Observation 

| | |
| :--- | :--- |
| *Official URL*:https://healthinfoservices.net/pacific-base-ig/StructureDefinition/pacific-observation | *Version*:1.0.0 |
| Draft as of 2026-03-12 | *Computable Name*:PacificObservation |

 
Profile of Observation as defined for South Pacific. 

**Usages:**

* Derived from this Profile: [Blood Pressure Observation (Pacific region)](StructureDefinition-pacific-vital-blood-pressure.md), [BMI Vitals (Pacific region)](StructureDefinition-pacific-vital-bmi.md), [Body Temperature Vitals (Pacific region)](StructureDefinition-pacific-vital-body-temperature.md), [Heart Rate Vitals (Pacific region)](StructureDefinition-pacific-vital-heart-rate.md)... Show 4 more, [Height Vitals (Pacific region)](StructureDefinition-pacific-vital-height.md), [Oxygen Saturation Vitals (Pacific region)](StructureDefinition-pacific-vital-oxygen-saturation.md), [Respiratory Rate Vitals (Pacific region)](StructureDefinition-pacific-vital-respiratory-rate.md) and [Weight Vitals (Pacific region)](StructureDefinition-pacific-vital-weight.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pacific.base.ig|current/StructureDefinition/pacific-observation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-pacific-observation.csv), [Excel](StructureDefinition-pacific-observation.xlsx), [Schematron](StructureDefinition-pacific-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pacific-observation",
  "url" : "https://healthinfoservices.net/pacific-base-ig/StructureDefinition/pacific-observation",
  "version" : "1.0.0",
  "name" : "PacificObservation",
  "title" : "Pacific Observation",
  "status" : "draft",
  "date" : "2026-03-12T07:48:11+00:00",
  "description" : "Profile of Observation as defined for South Pacific.",
  "fhirVersion" : "4.3.0",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://terminology.hl7.org/CodeSystem/observation-category"
      }
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://loinc.org"
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://healthinfoservices.net/pacific-base-ig/StructureDefinition/pacific-patient"]
      }]
    }]
  }
}

```
