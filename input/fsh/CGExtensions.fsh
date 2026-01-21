Extension:   RecommendedAction
Id:          recommended-action
Title:       "Recommended Action"
Description: "References a proposed action that is recommended based on the results of the diagnostic report."
* ^context[+].type = #element
* ^context[=].expression = "DiagnosticReport"
* ^context[+].type = #element
* ^context[=].expression = "Observation"
* value[x] only Reference(MedicationRecommendation or FollowupRecommendation)

Extension:   GenomicRiskAssessment
Id:          genomic-risk-assessment
Title:       "Genomic Risk Assessment"
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

Extension:   TherapyAssessedReference
Id:          therapy-assessed-reference
Title:       "Therapy Assessed reference to a FHIR resource"
Description: "Used to reference a specific therapy that was assessed (e.g. a FHIR ResearchStudy, a FHIR CarePlan, or a FHIR PlanDefinition)."
* ^context[0].type = #element
* ^context[0].expression = "Observation.component"
* value[x] only Reference(CarePlan or ResearchStudy or PlanDefinition)

Extension:   MedicationAssessedReference
Id:          medication-assessed-reference
Title:       "Medication Assessed reference to a FHIR resource"
Description: "Used to reference a specific medication that was assessed (e.g. a FHIR Medication or a FHIR MedicationKnowledge)."
* ^context[0].type = #element
* ^context[0].expression = "Observation.component"
* value[x] only Reference(Medication or MedicationKnowledge)

Extension:   RepeatMotifOrder
Id:          repeat-motif-order
Title:       "Repeat Motif Order"
Description: "Use to group and order repeat expansion motifs."
* ^context[0].type = #element
* ^context[0].expression = "Observation.component"
* value[x] only positiveInt

Extension:   KnowledgebaseAncestryGroup
Id:          knowledgebase-ancestry-group
Title:       "Knowledgebase Ancestry Group"
Description: "Used to identify the sample ancestry group using terms obtained from the knowledgebase"
* ^context[0].type = #element
* ^context[0].expression = "Observation.component"
* value[x] only CodeableConcept
