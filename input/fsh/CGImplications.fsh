Profile:        GenomicImplication
Parent:         GenomicsBase
Id:             implication
Title:          "Genomic Implication"
Description:    "Properties common to genetic implications expressed as computable discrete elements."

* extension contains http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/RelatedArtifact named relatedArtifact 0..1
* value[x] 0..0
* derivedFrom ^slicing.discriminator.type = #type
* derivedFrom ^slicing.discriminator.path = "resolve().code"
* derivedFrom ^slicing.rules = #open
* derivedFrom ^slicing.description = "Slice based on the resolve().code type"
* derivedFrom 1..*
* derivedFrom contains variant 0..*
* derivedFrom[variant] only Reference (http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant)
//genotype
//haplotype
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
* component contains
    evidence-level 0..1 and
    prognosis 0..1
* component[evidence-level] ^short = "Level of Evidence"
* component[evidence-level].code = LNC#93044-6
* component[evidence-level].value[x] only CodeableConcept
* component[evidence-level].value[x] 1..1
* component[evidence-level].value[x] from http://loinc.org/vs/LL5356-2 (extensible)
* component[prognosis] ^short = "Prognosis"
* component[prognosis] ^definition = "E.g. Better outcome, poorer outcome"
* component[prognosis].code = TBD#prognostic-implication
* component[prognosis].value[x] only CodeableConcept
* component[prognosis].value[x] 1..1
//* component[prognosis].value[x] from (example) (extensible)

Profile:        DiagnosticImplication
Parent:         GenomicImplication
Id:             diagnostic-implication
Title:          "Diagnostic Implication"
Description:    "Finding of whether a particular genotype/haplotype/variation or combination-thereof provides evidence for or against a particular type of cancer or the effectiveness of different interventions."
* code.coding.system = "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes"
* code.coding.code = TBD#diagnostic-implication
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
* component contains
    associated-phenotype 0..* and
    associated-cancer 0..* and
    mode-of-inheritance	0..1 and
    clinical-significance 0..1
* component[associated-phenotype] ^short = "Associated phenotype"
* component[associated-phenotype] ^definition = "The possible phenotype associated with the genetic variant found in this study."
* component[associated-phenotype].code = LNC#81259-4
* component[associated-phenotype].value[x] only CodeableConcept
* component[associated-phenotype].value[x] ^binding.strength = #example
* component[associated-phenotype].value[x] ^binding.description = "Binding not yet defined"
* component[associated-phenotype].value[x] 1..1
* component[associated-cancer] ^short = "Associated cancer"
// * component[associated-cancer] ^definition = "" // MLT: no definition provided.
* component[associated-cancer].code.coding.system = "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes"
* component[associated-cancer].code.coding.code = TBD#associated-cancer
* component[associated-cancer].value[x] only CodeableConcept
* component[associated-cancer].value[x] ^binding.strength = #example
* component[associated-cancer].value[x] ^binding.description = "Binding not yet defined"
* component[associated-cancer].value[x] 1..1
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