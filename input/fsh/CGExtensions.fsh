
Extension:   GenomicsArtifact
Id:          genomics-artifact
Title:       "Genomics Artifact"
Description: "Captures citations, evidence and other supporting documentation for the observation or report."
* ^context[0].type = #element
* ^context[0].expression = "DiagnosticReport"
* ^context[1].type = #element
* ^context[1].expression = "Observation"
* value[x] only RelatedArtifact

Extension:   RecommendedAction
Id:          recommended-action
Title:       "Recommended Action"
Description: "References a proposed action that is recommended based on the results of the diagnostic report."
* ^context[0].type = #element
* ^context[0].expression = "DiagnosticReport"
* ^context[1].type = #element
* ^context[1].expression = "Observation"
* value[x] only Reference(Task or ServiceRequest or MedicationRequest or RequestGroup or CarePlan or DeviceRequest or NutritionOrder or SupplyRequest)

Extension:   SupportingInformation
Id:          supporting-information
Title:       "Supporting Information"
Description: "Additional information relevant to interpreting/understanding the report."
* ^context[0].type = #element
* ^context[0].expression = "DiagnosticReport"
* ^context[1].type = #element
* ^context[1].expression = "Observation"
* value[x] only Reference(Resource)  // Reference to any resource.

Extension:   GenomicsReportRisk
Id:          genomics-report-risk
Title:       "Genomics Report Risk Assessment"
Description: "Risk Assessment delivered as part of the Genomics Report"
* ^context[0].type = #element
* ^context[0].expression = "DiagnosticReport"
* value[x] only Reference(RiskAssessment)

Extension:   GenomicsFile
Id:          genomics-file
Title:       "Genomics File"
Description: "Used to transmit the contents of or links to files that were produced as part of the testing process. Examples are VCF, BAM, CRAM, and other similar files."
* ^context[0].type = #element
* ^context[0].expression = "DiagnosticReport"
* value[x] only Reference(GenomicsDocumentReference)