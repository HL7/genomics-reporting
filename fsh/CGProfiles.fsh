Profile:        GenomicSpecimen
Parent:         Specimen
Id:             specimen
Title:          "Genomics specimen"
Description:    "A sample to be used for analysis."

* subject 1..1
* subject only Reference(Patient or Group or Location)


Profile:        GenomicsBase
Parent:         Observation
Id:             genomics-base
Title:          "Genomics base"
Description:    "Base profile that defines characteristics shared by all genetic observations. (FSH version)"

* bodySite from http://hl7.org/fhir/StructureDefinition/bodySite (extensible) // MLT: optimized how this is represented. The original is a duplicate element modeled as an extension. Not sure why this was necessary.
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "code"
* category ^slicing.rules = #open
* category ^slicing.ordered = false   // can be omitted, since false is the default
* category ^slicing.description = "Slice based on the category.code pattern"
* category contains labCategory 1..*
* category[labCategory] = ObsCat#laboratory
* subject 0..1
* subject only Reference(Patient or Group or Location)
* performer 0..1
* performer only Reference(Patient or Organization or Patient or RelatedPerson)
* extension contains http://hl7.org/fhir/StructureDefinition/observation-secondaryFinding named secondaryfinding 0..1


Profile:        TMB
Parent:         GenomicsBase
Id:             tmb
Title:          "Tumor Mutation Burden"
Description:    "Definitions for the tmb resource profile. The total number of mutations (changes) found in the DNA of cancer cells. [Source: NCI Dictionary](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/tumor-mutational-burden)"

* code = LNC#94076-7 // Mutations/Megabase [# Ratio] in Tumor
* valueQuantity = UCUM#1/1000000{Base}
* valueQuantity.unit = "Mutations/Megabase"
* interpretation from HighLowCodesVS