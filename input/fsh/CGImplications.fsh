Profile:        GenomicImplication
Parent:         GenomicsBase
Id:             implication
Title:          "Genomic Implication"
Description:    "Properties common to genetic implications expressed as computable discrete elements."

* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* extension contains http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/RelatedArtifact named relatedArtifact 0..1
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
* component[prognosis].code = TbdCodes#prognostic-implication
* component[prognosis].value[x] only CodeableConcept
* component[prognosis].value[x] 1..1
//* component[prognosis].value[x] from (example) (extensible)

Profile:        DiagnosticImplication
Parent:         GenomicImplication
Id:             diagnostic-implication
Title:          "Diagnostic Implication"
Description:    "Observation stating a linkage between one or more genotype/haplotype/variation Observations and evidence for or against a particular disease, condition, or cancer diagnosis."

* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* code = TbdCodes#diagnostic-implication
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
* component contains
    associated-phenotype 0..* and
    mode-of-inheritance	0..1 and
    clinical-significance 0..1 and
    functional-effect 0..*
* component[associated-phenotype] ^short = "Associated phenotype"
* component[associated-phenotype] ^definition = "The possible phenotype associated with the genetic variant found in this study."
* component[associated-phenotype].code = LNC#81259-4
* component[associated-phenotype].value[x] only CodeableConcept
* component[associated-phenotype].value[x] ^binding.strength = #example
* component[associated-phenotype].value[x] ^binding.description = "Binding not yet defined"
* component[associated-phenotype].value[x] 1..1
//* component[associated-cancer] ^short = "Associated cancer"
//* component[associated-cancer] ^definition = "" // MLT: no definition provided.
//* component[associated-cancer].code = TbdCodes#associated-cancer
//* component[associated-cancer].value[x] only CodeableConcept
//* component[associated-cancer].value[x] ^binding.strength = #example
//* component[associated-cancer].value[x] ^binding.description = "Binding not yet defined"
//* component[associated-cancer].value[x] 1..1
* component[mode-of-inheritance] ^short = "Mode of Inheritance"
// * component[mode-of-inheritance] ^definition = "" // MLT: no definition provided.
* component[mode-of-inheritance].code = LNC#79742-3
* component[mode-of-inheritance].value[x] only CodeableConcept
* component[mode-of-inheritance].value[x] 1..1
* component[mode-of-inheritance].value[x] from http://loinc.org/vs/LL3731-8 (preferred)
* component[clinical-significance] ^short = "Clinical significance"
// * component[clinical-significance] ^definition = "" // MLT: no definition provided.
* component[clinical-significance].code = LNC#53037-8
* component[clinical-significance].value[x] only CodeableConcept
* component[clinical-significance].value[x] 1..1
* component[clinical-significance].value[x] from http://loinc.org/vs/LL4034-6 (extensible)
* component[functional-effect].code = TbdCodes#functional-effect
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
* code.coding.system = "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/TbdCodes"
* code.coding.code = TbdCodes#therapeutic-implication
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
* component contains
    associated-phenotype 0..* and
    associated-cancer 0..* and
    medication-assessed 0..* and
    therapy-assessed 0..* and
    effect-medication-metabolism 0..1 and
    effect-medication-high-risk 0..1 and
    effect-medication-efficacy 0..*
* component[associated-phenotype].code = LNC#81259-4
* component[associated-phenotype] ^short = "Associated phenotype"
* component[associated-phenotype] ^definition = "The possible phenotype associated with the genetic variant found in this study."
* component[associated-phenotype].value[x] only CodeableConcept
* component[associated-phenotype].value[x] ^binding.strength = #example
* component[associated-phenotype].value[x] ^binding.description = "Binding not yet defined"
* component[associated-phenotype].value[x] 1..1
* component[associated-cancer].code = TbdCodes#associated-cancer
* component[associated-cancer] ^short = "Associated cancer"
// * component[associated-cancer] ^definition = "" // MLT: no definition provided.
* component[associated-cancer].value[x] only CodeableConcept
* component[associated-cancer].value[x] ^binding.strength = #example
* component[associated-cancer].value[x] ^binding.description = "Binding not yet defined"
* component[associated-cancer].value[x] 1..1
* component[medication-assessed].code = LNC#51963-7
* component[medication-assessed] ^short = "Medication Assessed"
* component[medication-assessed] ^definition = "The medication whose implication is being described."
* component[medication-assessed].value[x] only CodeableConcept
* component[medication-assessed].value[x] ^binding.strength = #example
* component[medication-assessed].value[x] ^binding.description = "Binding not yet defined"
* component[medication-assessed].value[x] 1..1
* component[therapy-assessed] ^short = "Associated cancer"
* component[therapy-assessed] ^definition = "The non-medication therapy whose implication on the cancer outcome is being predicted. E.g. altered diet, radiation therapy, surgery, etc."
* component[therapy-assessed].code = TbdCodes#associated-therapy
* component[therapy-assessed].value[x] only CodeableConcept
* component[therapy-assessed].value[x] ^binding.strength = #example
* component[therapy-assessed].value[x] ^binding.description = "Binding not yet defined"
* component[therapy-assessed].value[x] 1..1
* component[effect-medication-metabolism] ^short = "Effect medication metabolism"
* component[effect-medication-metabolism] ^definition = "Genomic variation's effect on drug metabolism"
* component[effect-medication-metabolism].code = LNC#53040-2
* component[effect-medication-metabolism].value[x] only CodeableConcept
* component[effect-medication-metabolism].value[x] 1..1
* component[effect-medication-metabolism].value[x] from http://loinc.org/vs/LL3856-3 (preferred)
* component[effect-medication-high-risk] ^short = "Effect medication high risk"
// * component[effect-medication-high-risk] ^definition = "" // MLT: no definition provided.
* component[effect-medication-high-risk].code = LNC#83009-1
* component[effect-medication-high-risk].value[x] only CodeableConcept
* component[effect-medication-high-risk].value[x] 1..1
* component[effect-medication-high-risk].value[x] from http://loinc.org/vs/LL2353-2 (extensible)
// ******
// ****** MLT: TODO: Add effect-medication-transport ******
// ******
* component[effect-medication-efficacy] ^short = "Effect medication high risk"
* component[effect-medication-efficacy] ^definition = "Variation's effect on drug efficacy"
* component[effect-medication-efficacy].code = LNC#51961-1
* component[effect-medication-efficacy].value[x] only CodeableConcept
* component[effect-medication-efficacy].value[x] 1..1
* component[effect-medication-efficacy].value[x] from http://loinc.org/vs/LL539-8 (preferred)
* ^abstract = false

Profile:        TaskMedChg
Parent:         Task
Id:             task-med-chg
Title:          "Medication Usage Task"
Description:    "Task proposing actions based on genetic results."

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

Profile:        TaskRecFollowup
Parent:         Task
Id:             task-rec-followup
Title:          "Recommended Followup"
Description:    "Task describing the followup that is recommended"

* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* status 1..1
* status = TaskStatus#requested
* intent 1..1
* intent = TaskIntent#proposal
* code from http://loinc.org/vs/LL1037-2 (extensible)
* description = "Recommendation Document"
* for only Reference(Patient)
* requester only Reference(Organization)
* reasonReference only Reference(TherapeuticImplication)
