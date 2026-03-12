# Pacific Practitioner Role District Hospital GP - Pacific Base FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pacific Practitioner Role District Hospital GP**

## Example PractitionerRole: Pacific Practitioner Role District Hospital GP

Profile: [Pacific Practitioner Role](StructureDefinition-pacific-practitioner-role.md)

**period**: 2023-01-01 --> (ongoing)

**practitioner**: [Practitioner Leilani Tupua (official)](Practitioner-PacificPractitionerExample.md)

**organization**: [Organization Suva Divisional Hospital](Organization-PacificHospitalExample.md)

**code**: General Practitioner

**specialty**: Family Medicine

**telecom**: [+685123456](tel:+685123456)



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "PacificPractitionerRoleExample",
  "meta" : {
    "profile" : ["https://healthinfoservices.net/pacific-base-ig/StructureDefinition/pacific-practitioner-role"]
  },
  "period" : {
    "start" : "2023-01-01"
  },
  "practitioner" : {
    "reference" : "Practitioner/PacificPractitionerExample"
  },
  "organization" : {
    "reference" : "Organization/PacificHospitalExample"
  },
  "code" : [{
    "text" : "General Practitioner"
  }],
  "specialty" : [{
    "text" : "Family Medicine"
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+685123456"
  }]
}

```
