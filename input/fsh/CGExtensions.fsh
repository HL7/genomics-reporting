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

Extension:   RelatedArtifactComponent
Id:          related-artifact-component
Title:       "Related Artifact for Observation component"
Description: "Use the RelatedArtifact at the Observation.component element (not valid in the R4 extension)"
* ^context[0].type = #element
* ^context[0].expression = "Observation.component"
* value[x] only RelatedArtifact

Extension:  SamplePopulation
Id:      	sample-population-group
Title:   	"Sample Population"
Description: "The population the sample/variant was present in or obtained from”
* ^context[0].type = #element
* ^context[0].expression = "Observation.component"
* value[x] only CodeableConcept
* value[x] from PopulationVS (example)

Extension:   AnnotationModule
Id:      	annotation-module
Title:   	"Annotation module"
Description: "The annotation module that performed the computation"
* ^context[0].type = #element
* ^context[0].expression = "Observation.component"
* value[x] only CodeableConcept
* value[x] from AnnotationModuleVS 

