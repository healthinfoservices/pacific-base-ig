# Blood Pressure Observation (Pacific region) - Pacific Base FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Blood Pressure Observation (Pacific region)**

## Resource Profile: Blood Pressure Observation (Pacific region) 

| | |
| :--- | :--- |
| *Official URL*:https://healthinfoservices.net/pacific-base-ig/StructureDefinition/pacific-vital-blood-pressure | *Version*:1.0.0 |
| Draft as of 2026-03-12 | *Computable Name*:PacificVitalBloodPressure |

 
Observation profile for blood pressure using LOINC 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pacific.base.ig|current/StructureDefinition/pacific-vital-blood-pressure)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-pacific-vital-blood-pressure.csv), [Excel](StructureDefinition-pacific-vital-blood-pressure.xlsx), [Schematron](StructureDefinition-pacific-vital-blood-pressure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pacific-vital-blood-pressure",
  "url" : "https://healthinfoservices.net/pacific-base-ig/StructureDefinition/pacific-vital-blood-pressure",
  "version" : "1.0.0",
  "name" : "PacificVitalBloodPressure",
  "title" : "Blood Pressure Observation (Pacific region)",
  "status" : "draft",
  "date" : "2026-03-12T07:48:11+00:00",
  "description" : "Observation profile for blood pressure using LOINC",
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
  "baseDefinition" : "https://healthinfoservices.net/pacific-base-ig/StructureDefinition/pacific-observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "patternCode" : "final"
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs"
        }]
      }
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "85354-9",
          "display" : "Blood pressure panel"
        }]
      }
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "code"
        }],
        "rules" : "open"
      },
      "min" : 2
    },
    {
      "id" : "Observation.component:Systolic",
      "path" : "Observation.component",
      "sliceName" : "Systolic",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:Systolic.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "8480-6",
          "display" : "Systolic blood pressure"
        }]
      }
    },
    {
      "id" : "Observation.component:Systolic.value[x]",
      "path" : "Observation.component.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:Systolic.value[x]:valueQuantity",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueQuantity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:Systolic.value[x]:valueQuantity.unit",
      "path" : "Observation.component.value[x].unit",
      "patternString" : "mmHg"
    },
    {
      "id" : "Observation.component:Systolic.value[x]:valueQuantity.system",
      "path" : "Observation.component.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:Systolic.value[x]:valueQuantity.code",
      "path" : "Observation.component.value[x].code",
      "patternCode" : "mm[Hg]"
    },
    {
      "id" : "Observation.component:Diastolic",
      "path" : "Observation.component",
      "sliceName" : "Diastolic",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:Diastolic.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "8462-4",
          "display" : "Diastolic blood pressure"
        }]
      }
    },
    {
      "id" : "Observation.component:Diastolic.value[x]",
      "path" : "Observation.component.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:Diastolic.value[x]:valueQuantity",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueQuantity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:Diastolic.value[x]:valueQuantity.unit",
      "path" : "Observation.component.value[x].unit",
      "patternString" : "mmHg"
    },
    {
      "id" : "Observation.component:Diastolic.value[x]:valueQuantity.system",
      "path" : "Observation.component.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:Diastolic.value[x]:valueQuantity.code",
      "path" : "Observation.component.value[x].code",
      "patternCode" : "mm[Hg]"
    }]
  }
}

```
