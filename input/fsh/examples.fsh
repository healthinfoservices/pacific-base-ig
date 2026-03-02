// PacificHumanName Examples --------------------------------------------------------------
Instance: ExamplePacificHumanNameOfficialOnly
InstanceOf: PacificHumanName
Usage: #inline

* use = #official
* given[0] = "Maria"
* given[1] = "Litia"
* text = "Maria Litia"

Instance: ExamplePacificHumanNameDual
InstanceOf: PacificHumanName
Usage: #inline

* use = #official
* given[0] = "Tevita"
* family = "Kalo"
* text = "Tevita Kalo"

Instance: ExamplePacificHumanNameUsual
InstanceOf: PacificHumanName
Usage: #inline

* use = #usual
* prefix[0] = "Susuga"
* given[0] = "Tui"
* text = "Susuga Tui"

Instance: ExamplePacificHumanNameUsualOnly
InstanceOf: PacificHumanName
Usage: #inline

* use = #usual
* given[0] = "Taviri"
* text = "Taviri"

// Pacific Patient Examples ---------------------------------------------------------------------------
Instance: PacificPatientExample1
InstanceOf: PacificPatient
Usage: #example

* name[0].use = #official
* name[0].given[0] = "Michael"
* name[0].given[1] = "Taviri"
* name[0].family = "Kalo"
* name[0].text = "Michael Taviri Kalo"

* name[1].use = #usual
* name[1].given[0] = "Taviri"
* name[1].text = "Taviri"

* extension[clanAffiliation].valueCodeableConcept.text = "Nakamal Vaturanga"

* gender = #male
* birthDate = "1990-04-12"

Instance: PacificPatientExample2
InstanceOf: PacificPatient
Usage: #example

* name[0].use = #official
* name[0].given[0] = "Tevita"
* name[0].family = "Kalo"
* name[0].text = "Tevita Kalo"

* name[1].use = #usual
* name[1].prefix[0] = "Susuga"
* name[1].given[0] = "Tui"
* name[1].text = "Susuga Tui"

* extension[clanAffiliation].valueCodeableConcept.text = "Sa Malietoa"

* gender = #male
* birthDate = "1985-11-02"
