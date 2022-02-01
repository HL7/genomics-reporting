Profile:        GenomicImplication
Parent:         GenomicsBase
Id:             implication
Title:          "Genomics Implication"
Description:    "Properties common to genmoic implications expressed as computable discrete elements."
* ^abstract = true
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* extension contains GenomicsArtifact named related-artifact 0..1
* value[x] 0..0
* derivedFrom ^slicing.discriminator.type = #profile
* derivedFrom ^slicing.discriminator.path = "$this.resolve()"
* derivedFrom ^slicing.rules = #open
* derivedFrom ^slicing.description = "Slice based on the resolve().code type"
* derivedFrom 1..*
* derivedFrom contains variant 0..* and
    genotype 0..* and
    haplotype 0..*
* derivedFrom[variant] only Reference(Variant)
* derivedFrom[genotype] only Reference(Genotype)
* derivedFrom[haplotype] only Reference(Haplotype)
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
* component contains
    evidence-level 0..* and
    prognosis 0..1
* component[evidence-level].code = LNC#93044-6
* component[evidence-level] ^short = "Level of Evidence"
* component[evidence-level].value[x] only CodeableConcept
* component[evidence-level].value[x] 1..1
* component[evidence-level].value[x] from EvidenceLevelExampleVS (example)
//* component[evidence-level].value[x] from http://loinc.org/vs/LL5356-2 (example)
* component[prognosis] ^short = "Prognosis"
* component[prognosis] ^definition = "E.g. Better outcome, poorer outcome"
* component[prognosis].code = TbdCodesCS#prognostic-implication
* component[prognosis].value[x] only CodeableConcept
* component[prognosis].value[x] 1..1
//* component[prognosis].value[x] from (example) (extensible)

Profile:        DiagnosticImplication
Parent:         GenomicImplication
Id:             diagnostic-implication
Title:          "Diagnostic Implication"
Description:    "Observation stating a linkage between one or more genotype/haplotype/variation Observations and evidence for or against a particular disease, condition, or cancer diagnosis."
* extension contains GenomicsReportRisk named report-risk 0..*
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* code = TbdCodesCS#diagnostic-implication
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
* component contains
    predicted-phenotype 0..* and
    mode-of-inheritance	0..1 and
    clinical-significance 0..1 and
    functional-effect 0..*
* component[predicted-phenotype] ^short = "Predicted phenotype"
* component[predicted-phenotype] ^definition = "An observable characteristic (e.g., condition; disease) of an individual, as predicted by the presence of associated molecular finding(s)associated with the variant.  A code set is not specified, but it is ideal to use terms related to medical findings.  Some examples are SNOMED CT descendants of 'Clinical finding' (404684003), ICD-10-CM chapters 1-18 (codes starting with letters A-R), and/or all of Human Phenotype Ontology (HPO). For example, if an individual's variant is associated with Type I Ehlers-Danlos syndrome, a valid response from SNOMED CT would be 'Ehlers-Danlos syndrome, type 1 (code 83470009)'."
* component[predicted-phenotype].code = LNC#81259-4
* component[predicted-phenotype].value[x] only CodeableConcept
* component[predicted-phenotype].value[x] ^binding.strength = #example
* component[predicted-phenotype].value[x] ^binding.description = "Binding not yet defined"
* component[predicted-phenotype].value[x] 1..1
* component[mode-of-inheritance] ^short = "Mode of Inheritance"
// * component[mode-of-inheritance] ^definition = "" // MLT: no definition provided.
* component[mode-of-inheritance].code = TbdCodesCS#condition-inheritance
* component[mode-of-inheritance].value[x] only CodeableConcept
* component[mode-of-inheritance].value[x] 1..1
* component[mode-of-inheritance].value[x] from ConditionInheritanceModeVS (preferred)
* component[clinical-significance] ^short = "Clinical significance"
// * component[clinical-significance] ^definition = "" // MLT: no definition provided.
* component[clinical-significance].code = LNC#53037-8
* component[clinical-significance].value[x] only CodeableConcept
* component[clinical-significance].value[x] 1..1
* component[clinical-significance].value[x] from http://loinc.org/vs/LL4034-6 (extensible)
* component[functional-effect].code = TbdCodesCS#functional-effect
* component[functional-effect] ^short = "Functional Effect"
* component[functional-effect] ^definition = "The effect of a variant on downstream biological products or pathways (from Sequence Ontology)."
* component[functional-effect].value[x] only CodeableConcept
* component[functional-effect].value[x] 1..1
* component[functional-effect].value[x] from FunctionalEffectVS (extensible)

Profile:        TherapeuticImplication
Parent:         GenomicImplication
Id:             therapeutic-implication
Title:          "Therapeutic Implication"
Description:    "Profile with properties for observations that convey the potential impact of genomic characteristics on a medication or non-medicinal therapy."
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* code = TbdCodesCS#therapeutic-implication
* extension contains TherapyAssessed named therapy-assessed 0..*
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
* component contains
    phenotypic-treatment-context 0..* and
    medication-assessed 0..* and
    therapy-assessed 0..* and
    predicted-therapeutic-implication 0..*
* component[phenotypic-treatment-context].code = LNC#81259-4
* component[phenotypic-treatment-context] ^short = "Phenotypic treatment context"
* component[phenotypic-treatment-context] ^definition = "A condition whose treatment in medication-assessed or therapy-assessed is contextually impacted by the variant.  A code set is not specified, but it is ideal to use terms related to medical findings.  Some examples are SNOMED CT descendants of 'Clinical finding' (404684003), ICD-10-CM chapters 1-18 (codes starting with letters A-R), and all of Human Phenotype Ontology (HPO).  For example, if an individual's variant affects the efficacy of imatinib in non-small cell lung cancer, a valid response from SNOMED CT would be 'Non-small cell lung cancer (code 254637007)'."
* component[phenotypic-treatment-context].value[x] only CodeableConcept
* component[phenotypic-treatment-context].value[x] ^binding.strength = #example
* component[phenotypic-treatment-context].value[x] ^binding.description = "Binding not yet defined"
* component[phenotypic-treatment-context].value[x] 1..1
* component[medication-assessed].code = LNC#51963-7
* component[medication-assessed] ^short = "Medication Assessed"
* component[medication-assessed] ^definition = "The medication whose implication is being described."
* component[medication-assessed].value[x] only CodeableConcept
* component[medication-assessed].value[x] ^binding.strength = #example
* component[medication-assessed].value[x] ^binding.description = "Binding not yet defined"
* component[medication-assessed].value[x] 1..1
* component[therapy-assessed] ^short = "Non-medication therapy assessed"
* component[therapy-assessed] ^definition = "The non-medication therapy whose implication on the cancer outcome is being predicted. E.g. altered diet, radiation therapy, surgery, etc."
* component[therapy-assessed].code = TbdCodesCS#associated-therapy
* component[therapy-assessed].value[x] only CodeableConcept
* component[therapy-assessed].value[x] ^binding.strength = #example
* component[therapy-assessed].value[x] ^binding.description = "Binding not yet defined"
* component[therapy-assessed].value[x] 1..1
* component[predicted-therapeutic-implication] ^short = "Predicted Therapeutic Implication"
* component[predicted-therapeutic-implication] ^definition = "A predicted ramification based on the presence of associated molecular finding(s). Ramifications may include alterations in drug metabolism (or pharmacokinetics) that determine the concentration of the drug, prodrug, and/or break-down products over time; alterations in drug efficacy (or pharmacodynamics) that determine how effective a drug is at a given concentration; alterations that alter the risk of adverse drug events, or other types of implications that indicate altered responsiveness to other types of therapies."
* component[predicted-therapeutic-implication].code = TbdCodesCS#predicted-therapeutic-implication
* component[predicted-therapeutic-implication].value[x] only CodeableConcept
* component[predicted-therapeutic-implication].value[x] 1..1
* component[predicted-therapeutic-implication].value[x] from GeneticTherapeuticImplicationsVS (extensible)

Profile:        MedicationRecommendation
Parent:         Task
Id:             medication-recommendation
Title:          "Medication Recommendation"
Description:    "Task proposing medication recommendations based on genetic results."
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* status 1..1
* status = TaskStatus#requested
* intent 1..1
* intent = TaskIntent#proposal
* code from http://loinc.org/vs/LL4049-4 
// * code = LNC#82116-5    //"Medication usage suggestion [Type]"
// * input[0].valueCodeableConcept 1..*
// * input[0].valueCodeableConcept from http://loinc.org/vs/LL4049-4 (preferred)
* focus only Reference(MedicationStatement)
* for only Reference(Patient)
* requester only Reference(Organization)
* reasonReference only Reference(TherapeuticImplication)

Profile:        FollowupRecommendation
Parent:         Task
Id:             followup-recommendation
Title:          "Followup Recommendation"
Description:    "Task describing the followup that is recommended"
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* status 1..1
* status = TaskStatus#requested
* intent 1..1
* intent = TaskIntent#proposal
* code from http://loinc.org/vs/LL1037-2 (extensible)
//* description = "Recommendation Document"
* for only Reference(Patient)
* requester only Reference(Organization)
