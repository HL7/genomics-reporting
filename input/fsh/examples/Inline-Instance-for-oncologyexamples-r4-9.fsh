Instance: Inline-Instance-for-oncologyexamples-r4-9
InstanceOf: TherapeuticImplication
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $tbd-codes-cs#therapeutic-implication "Therapeutic Implication"
* subject = Reference(urn:uuid:d0b4affa-91d6-46d1-af01-b30d9f16ef6d)
* performer = Reference(urn:uuid:a48256f8-db37-44e0-a0f6-d7af16c7c9ef)
* method = $loinc#LA26811-2 "Computational analysis"
* specimen = Reference(urn:uuid:a5d6a6a9-4859-480e-85b2-56974fef3b9d)
* derivedFrom = Reference(urn:uuid:16fdd5fc-e665-48af-99e4-48d603f3e12d)
* component[0].code = $loinc#51961-1
* component[=].valueCodeableConcept = $loinc#LA6677-4 "Responsive"
* component[+].code = $loinc#93044-6 "Level of Evidence"
* component[=].valueCodeableConcept = $loinc#LA30200-2 "Very strong evidence pathogenic"
* component[+].code = $loinc#81259-4
* component[=].valueCodeableConcept.text = "Polycythemia vera (PV)"
* component[+].code = $loinc#51963-7 "Medication assessed"
* component[=].valueCodeableConcept.text = "Ruxolitinib"