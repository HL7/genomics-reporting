
Extension:   GenomicsArtifact
Id:          genomics-artifact
Title:       "Genomics Artifact"
Description: "Captures citations, evidence and other supporting documentation for the observation or report."
* ^context[0].type = #element
* value[x] only RelatedArtifact

Extension:   RecommendedAction
Id:          recommended-action
Title:       "Recommended Action"
Description: "References a proposed action that is recommended based on the results of the diagnostic report."
* ^context[0].type = #element
* value[x] only Reference(Task or ServiceRequest or MedicationRequest or RequestGroup or CarePlan or DeviceRequest or NutritionOrder or SupplyRequest)

Extension:   SupportingInformation
Id:          supporting-information
Title:       "Supporting Information"
Description: "Additional information relevant to interpreting/understanding the report."
* ^context[0].type = #element
* value[x] only Reference(Resource)  // Reference to any resource.

Extension:   GenomicsReportRisk
Id:          genomics-report-risk
Title:       "Genomics Report Risk Assessment"
Description: "Risk Assessment delivered as part of the Genomics Report"
* ^context[0].type = #element
* value[x] only Reference(RiskAssessment)

Extension:   AnnotationCode
Id:          annotation-code
Title:       "Annotation Code"
Description: "Extension adding a CodeableConcept to the Annotation data-type"
* ^context[+].type = #element
* ^context[=].expression = "Annotation"
* value[x] only CodeableConcept

Extension:   GenomicReportNote
Id:          genomicReportNote
Title:       "Genomic Report Note"
Description: "Extension adding coded Note to a DiagnosticReport"
* ^context[+].type = #element
* ^context[=].expression = "DiagnosticReport"
* value[x] only CodedAnnotation
* value[x] from  (example)