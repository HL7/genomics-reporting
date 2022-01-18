Instance: usage
InstanceOf: MedicationRecommendation
Usage: #inline
* status = #requested
* intent = #proposal
* code.coding = $loinc#LA26423-6 "Increase dose"
* code.text = "May need higher dosage than usual."
* focus = Reference(MedicationStatementWarfarin)
* for = Reference(patient)
* requester = Reference(lab)
* reasonReference = Reference(metab)