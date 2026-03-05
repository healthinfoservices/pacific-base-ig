Extension: PacificClanAffiliation
Id: pacific-clan-affiliation
Title: "Pacific Clan Affiliation"
Description: """
Represents clan, tribe, lineage, or descent-based group affiliation.

This is a demographic identity attribute.
It is not a syntactic component of a name.
"""

* ^status = #active
* ^context.type = #element
* ^context.expression = "Patient"

* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept.text 1..1
