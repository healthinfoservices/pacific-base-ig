# Village - Pacific Base FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Village**

## Extension: Village 

| | |
| :--- | :--- |
| *Official URL*:https://healthinfoservices.net/pacific-base-ig/StructureDefinition/pacific-address-village | *Version*:1.0.0 |
| Active as of 2026-03-12 | *Computable Name*:PacificAddressVillage |

Village or rural settlement name used in Pacific addressing.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Pacific Address](StructureDefinition-pacific-address.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pacific.base.ig|current/StructureDefinition/pacific-address-village)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-pacific-address-village.csv), [Excel](StructureDefinition-pacific-address-village.xlsx), [Schematron](StructureDefinition-pacific-address-village.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pacific-address-village",
  "url" : "https://healthinfoservices.net/pacific-base-ig/StructureDefinition/pacific-address-village",
  "version" : "1.0.0",
  "name" : "PacificAddressVillage",
  "title" : "Village",
  "status" : "active",
  "date" : "2026-03-12T07:48:11+00:00",
  "description" : "Village or rural settlement name used in Pacific addressing.",
  "fhirVersion" : "4.3.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Address"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Village",
      "definition" : "Village or rural settlement name used in Pacific addressing."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://healthinfoservices.net/pacific-base-ig/StructureDefinition/pacific-address-village"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Village name.",
      "definition" : "The name of the village, settlement, or rural community.",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
