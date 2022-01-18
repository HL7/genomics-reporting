Instance: med-usage-impact-task-pgx-example
InstanceOf: MedicationRecommendation
Usage: #inline
* status = #requested
* intent = #proposal
* code = $loinc#LA26423-6 "Increase dose"
  * text = "Any Increase does Recommendation Text from the provider"
* description = "Any Increase does Recommendation Text from the provider"
* focus = Reference(current-med-example)
* for = Reference(ExamplePatient)
* reasonReference = Reference(med-impact-pgx-example)