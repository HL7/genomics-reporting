Instance: highrisk-1a
InstanceOf: TherapeuticImplication
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $tbd-codes-cs#therapeutic-implication
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(lab-1a)
* derivedFrom = Reference(genotype-1a)
* component[0].code = $loinc#83009-1
* component[=].valueCodeableConcept.coding = $loinc#LA19542-2 "Low risk"
* component[+].code = $loinc#51963-7
* component[=].valueCodeableConcept.coding = $rxnorm#11289 "Warfarin"