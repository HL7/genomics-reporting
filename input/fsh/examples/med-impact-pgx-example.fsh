Instance: med-impact-pgx-example
InstanceOf: TherapeuticImplication
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $tbd-codes-cs#therapeutic-implication "Therapeutic Implication"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2018"
* issued = "2018-03-06T00:00:00-05:00"
* performer = Reference(lab)
* derivedFrom = Reference(genotype-pgx-example)
* component[0].code = $loinc#53040-2 "Genetic variation's effect on drug metabolism"
* component[=].valueCodeableConcept = $loinc#LA25390-8 "Rapid metabolizer"
* component[+].code = $loinc#51963-7 "Medication assessed"
* component[=].valueCodeableConcept = $rxnorm#103 "mercaptopurine"