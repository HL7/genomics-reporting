Profile:        GenomicImplication
Parent:         GenomicsBase
Id:             implication
Title:          "Genomic Implication"
Description:    "Properties common to genmoic implications expressed as computable discrete elements."

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
    evidence-level 0..1 and
    prognosis 0..1
* component[evidence-level].code = LNC#93044-6
* component[evidence-level] ^short = "Level of Evidence"
* component[evidence-level].value[x] only CodeableConcept
* component[evidence-level].value[x] 1..1
* component[evidence-level].value[x] from http://loinc.org/vs/LL5356-2 (extensible)
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

* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* code = TbdCodesCS#diagnostic-implication
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
* component contains
    associated-phenotype 0..1 and
    mode-of-inheritance	0..1 and
    clinical-significance 0..1 and
    functional-effect 0..*
* component[associated-phenotype] ^short = "Associated phenotype"
* component[associated-phenotype] ^definition = " An observable characteristic (e.g., condition; disease) of an individual, as associated with the variant.  A code set is not specified, but it is ideal to use terms related to medical findings.  Some examples are SNOMED CT descendants of 'Clinical finding' (404684003), ICD-10-CM chapters 1-18 (codes starting with letters A-R), and/or all of Human Phenotype Ontology (HPO). For example, if an individual's variant is associated with Type I Ehlers-Danlos syndrome, a valid response from SNOMED CT would be 'Ehlers-Danlos syndrome, type 1 (code 83470009)'."
* component[associated-phenotype].code = LNC#81259-4
* component[associated-phenotype].value[x] only CodeableConcept
* component[associated-phenotype].value[x] ^binding.strength = #example
* component[associated-phenotype].value[x] ^binding.description = "Binding not yet defined"
* component[associated-phenotype].value[x] 1..1
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


* ^abstract = false

Profile:        TherapeuticImplication
Parent:         GenomicImplication
Id:             therapeutic-implication
Title:          "Therapeutic Implication"
Description:    "Profile with properties for observations that convey the potential impact of genomic characteristics on a medication or non-medicinal therapy."

* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* code = TbdCodesCS#therapeutic-implication
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
* component contains
    phenotypic-treatment-context 0..* and
    medication-assessed 0..* and
    therapy-assessed 0..* and
    effect-medication-metabolism 0..1 and
    effect-medication-risk 0..1 and
    effect-treatment-efficacy 0..*
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
* component[effect-medication-metabolism] ^short = "Effect medication metabolism"
* component[effect-medication-metabolism] ^definition = "A variant's effect on the metabolism of the medication referenced in medication-assessed. The metabolism (or pharmacokinetics) of a drug determines the concentration of the drug, prodrug, and/or break-down products over time. Therefore, variants that affect a drug's metabolism will alter the concentration of drug/prodrug/metabolites over time.  Example: Due to this variant, the patient is a 'slow metabolizer' (i.e. the drug's metabolism is slowed)"
* component[effect-medication-metabolism].code = LNC#53040-2
* component[effect-medication-metabolism].value[x] only CodeableConcept
* component[effect-medication-metabolism].value[x] 1..1
* component[effect-medication-metabolism].value[x] from http://loinc.org/vs/LL3856-3 (preferred)
* component[effect-medication-risk] ^short = "Effect medication risk"
* component[effect-medication-risk] ^definition = "A variant's effect on the risk of the medication specified by the medication-assessed component.   Bindings are currently limited to 'high risk' and 'low risk' (LOINC Answers for LL2353-2).  Example: Due to this variant, the drug is at high risk of causing an adverse reaction."
* component[effect-medication-risk].code = LNC#83009-1
* component[effect-medication-risk].value[x] only CodeableConcept
* component[effect-medication-risk].value[x] 1..1
* component[effect-medication-risk].value[x] from http://loinc.org/vs/LL2353-2 (extensible)
// ******
// ****** MLT: TODO: Add effect-medication-transport ******
// ******
* component[effect-treatment-efficacy] ^short = "Effect treatment efficacy"
* component[effect-treatment-efficacy] ^definition = "A variant's effect on the efficacy of the treatment referenced in medication-assessed or therapy-assessed. The efficacy (or pharmacodynamics) of a drug determines how effective a drug is at a given concentration. Therefore variants that affect a drug's efficacy will alter the potency of a drug. Example: Due to this variant, the drug will be less efficacious against this target. Caveat: Different value sets are in common use for germline vs. somatic use cases. Germline use cases generally use some flavor of CPIC/PharmGKB drug efficacy Value Set (e.g. here), and align with our definition. Somatic use cases generally use some flavor of LOINC LL539-8 answer list, which is similar to https://www.oncokb.org/levels (e.g. here). Codes used for somatic use cases are often stated from the perspective of the tumor (e.g. 'given this mutation, the tumor is resistant to the drug') whereas codes for germline use cases are stated from the perspective of the drug (e.g. 'given this mutation, the drug will be less effective')."
* component[effect-treatment-efficacy].code = LNC#51961-1
* component[effect-treatment-efficacy].value[x] only CodeableConcept
* component[effect-treatment-efficacy].value[x] 1..1
* component[effect-treatment-efficacy].value[x] from http://loinc.org/vs/LL539-8 (preferred)
* ^abstract = false

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
