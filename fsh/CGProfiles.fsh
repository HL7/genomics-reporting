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


Profile:        GenomicFinding
Parent:         GenomicsBase
Id:             finding
Title:          "Finding"
Description:    "Properties common to genetic findings whose results are expressed as computable discrete elements (e.g. genotypes, haplotypes, variants, etc.). (FSH version)"

* specimen only Reference(GenomicSpecimen)
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
* component contains GeneStudied 0..* and CytogenicLocation 0..* and RefSequenceAssembly 0..*
* component[GeneStudied] ^short = "Gene studied [ID]"
* component[GeneStudied] ^definition = "HUGO Gene Nomenclature Committee (HGNC) identifier for a gene. List the gene(s) examined in full or in part by the study. If the study addresses multiple genes, these can be recorded in multiple gene studied components. The required coding will use the HGNC gene symbol as the display text and HGNC gene ID as the code."
* component[GeneStudied].code = LNC#48018-6
* component[GeneStudied].value[x] only CodeableConcept
* component[GeneStudied].value[x] ^short = "If no HGNC code issued for this gene yet, NCBI gene IDs SHALL be used."
* component[GeneStudied].valueCodeableConcept 1..1
* component[GeneStudied].valueCodeableConcept from HGNC (extensible)
* component[CytogenicLocation] ^short = "Cytogenetic (chromosome) location"
* component[CytogenicLocation] ^definition = "Some observations have multiple component observations. These component observations are expressed as separate code value pairs that share the same attributes. Examples include systolic and diastolic component observations for blood pressure measurement and multiple component observations for genetics observations."
* component[CytogenicLocation].code = LNC#48001-2
* component[CytogenicLocation].value[x] only CodeableConcept
* component[CytogenicLocation].valueCodeableConcept 1..1
* component[RefSequenceAssembly] ^short = "Human reference sequence assembly version"
* component[RefSequenceAssembly] ^definition = "Human reference sequence assembly version"
* component[RefSequenceAssembly].code = LNC#62374-4
* component[RefSequenceAssembly].value[x] only CodeableConcept
* component[RefSequenceAssembly].valueCodeableConcept 1..1
* component[RefSequenceAssembly].valueCodeableConcept from http://loinc.org/vs/LL378-1 (extensible)


Profile:        TMB
Parent:         GenomicsBase
Id:             tmb
Title:          "Tumor Mutation Burden"
Description:    "Definitions for the tmb resource profile. The total number of mutations (changes) found in the DNA of cancer cells. [Source: NCI Dictionary](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/tumor-mutational-burden)"

* code = LNC#94076-7 // Mutations/Megabase [# Ratio] in Tumor
* valueQuantity = UCUM#1/1000000{Base}
* valueQuantity.unit = "Mutations/Megabase"
* interpretation from HighLowCodesVS