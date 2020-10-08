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
* component[evidence-level].valueCodeableConcept 1..1
* component[evidence-level].valueCodeableConcept from http://loinc.org/vs/LL5356-2 (extensible)
* component[prognosis] ^short = "Prognosis"
* component[prognosis] ^definition = "E.g. Better outcome, poorer outcome"
* component[prognosis].code = TBD#prognostic-implication
* component[prognosis].value[x] only CodeableConcept
* component[prognosis].valueCodeableConcept 1..1
//* component[prognosis].valueCodeableConcept from (example) (extensible)
