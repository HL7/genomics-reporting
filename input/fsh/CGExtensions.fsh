
Extension:   GenomicsArtifact
Id:          genomics-artifact
Title:       "Genomics Artifact"
Description: "Captures citations, evidence and other supporting documentation for the observation or report."
* ^context[+].type = #element
* ^context[=].expression = "DiagnosticReport"
* ^context[+].type = #element
* ^context[=].expression = "Observation"
* value[x] only RelatedArtifact

Extension:   RecommendedAction
Id:          recommended-action
Title:       "Recommended Action"
Description: "References a proposed action that is recommended based on the results of the diagnostic report."
* ^context[+].type = #element
* ^context[=].expression = "DiagnosticReport"
* ^context[+].type = #element
* ^context[=].expression = "Observation"
* value[x] only Reference(MedicationRecommendation or FollowupRecommendation)

Extension:   SupportingInformation
Id:          supporting-information
Title:       "Supporting Information"
Description: "Additional information relevant to interpreting/understanding the report."
* ^context[+].type = #element
* ^context[=].expression = "DiagnosticReport"
* ^context[+].type = #element
* ^context[=].expression = "Observation"
* value[x] only Reference(Observation or RiskAssessment or FamilyMemberHistory or DocumentReference)

Extension:   GenomicsReportRisk
Id:          genomics-report-risk
Title:       "Genomics Report Risk Assessment"
Description: "Risk Assessment delivered as part of the Genomics Report"
* ^context[+].expression = "DiagnosticReport"
* value[x] only Reference(RiskAssessment)

Extension:   AnnotationCode
Id:          annotation-code
Title:       "Annotation Code"
Description: "Codifies the content of an Annotation"
* ^context[+].type = #element
* ^context[=].expression = "Annotation"
* value[x] only CodeableConcept
* value[x] from CodedAnnotationTypesVS (example)

Extension:   GenomicReportNote
Id:          genomic-report-note
Title:       "Genomic Report Note"
Description: "Adds codified notes to a report to capture additional content"
* ^context[+].type = #element
* ^context[=].expression = "DiagnosticReport"
* value[x] only CodedAnnotation

Extension:   GenomicsFile
Id:          genomics-file
Title:       "Genomics File"
Description: "Used to transmit the contents of or links to files that were produced as part of the testing process. Examples are VCF, BAM, CRAM, and other similar files."
* ^context[+].type = #element
* ^context[=].expression = "DiagnosticReport"
* value[x] only Reference(GenomicsDocumentReference)
