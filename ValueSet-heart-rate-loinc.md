# Heart Rate LOINC Codes - Pacific Base FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Heart Rate LOINC Codes**

## ValueSet: Heart Rate LOINC Codes 

| | |
| :--- | :--- |
| *Official URL*:https://healthinfoservices.net/pacific-base-ig/ValueSet/heart-rate-loinc | *Version*:1.0.0 |
| Draft as of 2026-03-12 | *Computable Name*:HeartRateVS |

 
LOINC codes for heart rate measurements, spot or average. 

 **References** 

* [Heart Rate Vitals (Pacific region)](StructureDefinition-pacific-vital-heart-rate.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4B/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "heart-rate-loinc",
  "url" : "https://healthinfoservices.net/pacific-base-ig/ValueSet/heart-rate-loinc",
  "version" : "1.0.0",
  "name" : "HeartRateVS",
  "title" : "Heart Rate LOINC Codes",
  "status" : "draft",
  "date" : "2026-03-12T07:48:11+00:00",
  "description" : "LOINC codes for heart rate measurements, spot or average.",
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "8867-4",
        "display" : "Heart rate"
      },
      {
        "code" : "8867-6",
        "display" : "Heart rate, average"
      }]
    }]
  }
}

```
