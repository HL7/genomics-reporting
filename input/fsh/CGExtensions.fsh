
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

Extension:   GenomicsRiskAssessment
Id:          genomics-risk-assessment
Title:       "Genomics Risk Assessment"
Description: "RiskAssessment delivered as part of a genomics report or observation"
* ^context[0].type = #element
* ^context[0].expression = "DiagnosticReport"
* ^context[1].type = #element
* ^context[1].expression = "Observation"
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

Extension:   TherapyAssessed
Id:          therapy-assessed
Title:       "Therapy Assessed"
Description: "Used to reference a specific therapy that was assessed (e.g. a FHIR ResearchStudy, a FHIR CarePlan, or a FHIR PlanDefinition)."
* ^context[0].type = #element
* ^context[0].expression = "Observation"
* value[x] only Reference(CarePlan or ResearchStudy or PlanDefinition)

Extension:   MedicationAssessed
Id:          medication-assessed
Title:       "Medication Assessed"
Description: "Used to reference a specific medication that was assessed (e.g. a FHIR Medication or a FHIR MedicationKnowledge)."
* ^context[0].type = #element
* ^context[0].expression = "Observation"
* value[x] only Reference(Medication or MedicationKnowledge)

Extension:   RepeatMotifOrder
Id:          repeat-motif-order
Title:       "Repeat Motif Order"
Description: "Use to group and order repeat expansion details."
* ^context[0].type = #element
* ^context[0].expression = "Observation.component"
* value[x] only positiveInt
