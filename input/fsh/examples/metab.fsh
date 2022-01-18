Instance: metab
InstanceOf: TherapeuticImplication
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $tbd-codes-cs#therapeutic-implication
* subject = Reference(patient)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(lab)
* derivedFrom = Reference(genotype)
* component[0].code = $loinc#51963-7
* component[=].valueCodeableConcept.coding = $rxnorm#11289 "Warfarin"
* component[+].code = $loinc#53040-2
* component[=].valueCodeableConcept.coding = $loinc#LA25390-8 "Rapid metabolizer"