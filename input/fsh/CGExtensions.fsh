
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
* value[x] only Reference(MedicationRecommendation or FollowupRecommendation)

Extension:   SupportingInformation
Id:          supporting-information
Title:       "Supporting Information"
Description: "Additional information relevant to interpreting/understanding the report."
* ^context[0].type = #element
* ^context[0].expression = "DiagnosticReport"
* ^context[1].type = #element
* ^context[1].expression = "Observation"
* value[x] only Reference(Observation or RiskAssessment or FamilyMemberHistory or DocumentReference)

Extension:   GenomicsReportRisk
Id:          genomics-report-risk
Title:       "Genomics Report Risk Assessment"
Description: "Risk Assessment delivered as part of the Genomics Report"
* ^context[0].type = #element
* ^context[0].expression = "DiagnosticReport"
* ^context[1].type = #element
* ^context[1].expression = "Observation"
* value[x] only Reference(RiskAssessment)

Extension:   GenomicsFile
Id:          genomics-file
Title:       "Genomics File"
Description: "Used to transmit the contents of or links to files that were produced as part of the testing process. Examples are VCF, BAM, CRAM, and other similar files."
* ^context[0].type = #element
* ^context[0].expression = "DiagnosticReport"
* value[x] only Reference(GenomicsDocumentReference)


Extension:   TherapyAssessedLink
Id:          therapy-assessed-link
Title:       "Therapy Assessed Link"
Description: "Used to reference a specific therapy (e.g. a FHIR ResearchStudy, a FHIR CarePlan)."
* ^context[0].type = #element
* ^context[0].expression = "TherapeuticImplication"
* value[x] only Reference(CarePlan or ResearchStudy or PlanDefinition)
