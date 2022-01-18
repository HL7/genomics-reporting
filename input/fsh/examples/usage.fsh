Instance: usage
InstanceOf: MedicationRecommendation
Usage: #inline
* contained.resourceType = "MedicationStatement"
* contained.id = "med"
* contained.status = #unknown
* contained.medicationCodeableConcept.coding = $rxnorm#11289 "Warfarin"
* contained.subject.reference = "Patient/patient"
* status = #requested
* intent = #proposal
* code.coding = $loinc#LA26423-6 "Increase dose"
* code.text = "May need higher dosage than usual."
* focus = Reference(med)
* for = Reference(patient)
* requester = Reference(lab)
* reasonReference = Reference(metab)