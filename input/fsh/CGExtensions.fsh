Extension:   RelatedArtifact
Id:          RelatedArtifact
Title:       "Related Artifact"
Description: "Captures citations, evidence and other supporting documentation for the observation or report."
* value[x] only Reference(RelatedArtifact)

Extension:   RecommendedAction
Id:          RecommendedAction
Title:       "Recommended Action"
Description: "References a proposed action that is recommended based on the results of the diagnostic report."
* ^context[0].type = #element
* value[x] only Reference(Task or ServiceRequest or MedicationRequest or RequestGroup or CarePlan or DeviceRequest or NutritionOrder or SupplyRequest)

Extension:   SupportingInformation
Id:          SupportingInfo
Title:       "Supporting Information"
Description: "Additional information relevant to interpreting/understanding the report."
* ^context[0].type = #element
* value[x] only Reference(Resource)  // Reference to any resource.
