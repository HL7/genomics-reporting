Instance: usage-1a
InstanceOf: MedicationRecommendation
Usage: #inline
* contained.resourceType = "MedicationStatement"
* contained.id = "MedicationStatementWarfarin"
* contained.status = #unknown
* contained.medicationCodeableConcept.coding = $rxnorm#11289 "Warfarin"
* contained.subject.reference = "Patient/patient-1a"
* status = #requested
* intent = #proposal
* code.coding = $loinc#LA26423-6 "Increase dose"
* code.text = "May need higher dosage than usual."
* focus = Reference(MedicationStatementWarfarin)
* for = Reference(patient-1a)
* requester = Reference(lab-1a)
* reasonReference = Reference(metab-1a)