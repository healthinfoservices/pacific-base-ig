# Pacific Practitioner Example – Samoa - Pacific Base FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pacific Practitioner Example – Samoa**

## Example Practitioner: Pacific Practitioner Example – Samoa

Profile: [Pacific Practitioner](StructureDefinition-pacific-practitioner.md)

**Pacific Clan Affiliation**: Sa Tupua

**identifier**: `http://health.gov.ws/practitioner-registration`/REG-12345

**name**: Leilani Tupua (Official), Lani 

**gender**: Female



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "PacificPractitionerExample",
  "meta" : {
    "profile" : ["https://healthinfoservices.net/pacific-base-ig/StructureDefinition/pacific-practitioner"]
  },
  "extension" : [{
    "url" : "https://healthinfoservices.net/pacific-base-ig/StructureDefinition/pacific-clan-affiliation",
    "valueCodeableConcept" : {
      "text" : "Sa Tupua"
    }
  }],
  "identifier" : [{
    "system" : "http://health.gov.ws/practitioner-registration",
    "value" : "REG-12345"
  }],
  "name" : [{
    "use" : "official",
    "family" : "Tupua",
    "given" : ["Leilani"]
  },
  {
    "use" : "usual",
    "given" : ["Lani"]
  }],
  "gender" : "female"
}

```
