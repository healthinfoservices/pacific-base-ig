# Pacific Hospital Example – Fiji Divisional Hospital - Pacific Base FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pacific Hospital Example – Fiji Divisional Hospital**

## Example Organization: Pacific Hospital Example – Fiji Divisional Hospital

**identifier**: `http://health.gov.fj/fhir/identifier/organization`/FJ-HOSP-SUH-001

**name**: Suva Divisional Hospital

**telecom**: [+6793313444](tel:+6793313444), [info@suvahospital.gov.fj](mailto:info@suvahospital.gov.fj)

**address**: Amy Street Suva FJ 



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "PacificHospitalExample",
  "identifier" : [{
    "system" : "http://health.gov.fj/fhir/identifier/organization",
    "value" : "FJ-HOSP-SUH-001"
  }],
  "name" : "Suva Divisional Hospital",
  "telecom" : [{
    "system" : "phone",
    "value" : "+6793313444",
    "use" : "work"
  },
  {
    "system" : "email",
    "value" : "info@suvahospital.gov.fj",
    "use" : "work"
  }],
  "address" : [{
    "line" : ["Amy Street"],
    "city" : "Suva",
    "district" : "Central Division",
    "country" : "FJ"
  }]
}

```
