# Pacific Healthcare Organization - Pacific Base FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pacific Healthcare Organization**

## Resource Profile: Pacific Healthcare Organization 

| | |
| :--- | :--- |
| *Official URL*:https://healthinfoservices.net/pacific-base-ig/StructureDefinition/pacific-organization | *Version*:1.0.0 |
| Draft as of 2026-03-12 | *Computable Name*:PacificOrganization |

 
Profile for Pacific Healthcare Organization 

**Usages:**

* Refer to this Profile: [Pacific Patient](StructureDefinition-pacific-patient.md) and [Pacific Practitioner Role](StructureDefinition-pacific-practitioner-role.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pacific.base.ig|current/StructureDefinition/pacific-organization)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-pacific-organization.csv), [Excel](StructureDefinition-pacific-organization.xlsx), [Schematron](StructureDefinition-pacific-organization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pacific-organization",
  "url" : "https://healthinfoservices.net/pacific-base-ig/StructureDefinition/pacific-organization",
  "version" : "1.0.0",
  "name" : "PacificOrganization",
  "title" : "Pacific Healthcare Organization",
  "status" : "draft",
  "date" : "2026-03-12T07:48:11+00:00",
  "description" : "Profile for Pacific Healthcare Organization",
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
  "type" : "Organization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization"
    },
    {
      "id" : "Organization.identifier",
      "path" : "Organization.identifier",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Organization.name",
      "path" : "Organization.name",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.telecom",
      "path" : "Organization.telecom",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.address",
      "path" : "Organization.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["https://healthinfoservices.net/pacific-base-ig/StructureDefinition/pacific-address"]
      }],
      "mustSupport" : true
    }]
  }
}

```
