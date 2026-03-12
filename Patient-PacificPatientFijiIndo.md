# Fiji Patient – Indo-Fijian - Pacific Base FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Fiji Patient – Indo-Fijian**

## Example Patient: Fiji Patient – Indo-Fijian

Profile: [Pacific Patient](StructureDefinition-pacific-patient.md)

Anita Female, DoB: 1985-09-02 ( http://health.gov.fj/fhir/identifier/nhi#FJ-NHI-771245903)

-------

| | |
| :--- | :--- |
| Alt. Name: | Anita Prasad (Official) |
| Contact Detail | Lautoka, Western Division |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "PacificPatientFijiIndo",
  "meta" : {
    "profile" : ["https://healthinfoservices.net/pacific-base-ig/StructureDefinition/pacific-patient"]
  },
  "identifier" : [{
    "system" : "http://health.gov.fj/fhir/identifier/nhi",
    "value" : "FJ-NHI-771245903"
  }],
  "name" : [{
    "use" : "official",
    "family" : "Prasad",
    "given" : ["Anita"]
  },
  {
    "use" : "usual",
    "given" : ["Anita"]
  }],
  "gender" : "female",
  "birthDate" : "1985-09-02",
  "address" : [{
    "text" : "Lautoka, Western Division",
    "country" : "FJ"
  }]
}

```
