Instance: med-usage-impact-task-pgx-example
InstanceOf: MedicationRecommendation
Description: "Example MedicationRecommendation"
Usage: #inline
* status = #requested
* intent = #proposal
* code = $LNC#LA26423-6 "Increase dose"
  * text = "Any Increase does Recommendation Text from the provider"
* description = "Any Increase does Recommendation Text from the provider"
* focus = Reference(current-med-example)
* for = Reference(ExamplePatient)
* reason.reference = Reference(med-impact-pgx-example)