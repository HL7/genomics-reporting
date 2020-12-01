Profile:        GenomicSpecimen
Parent:         Specimen
Id:             specimen
Title:          "Genomics specimen"
Description:    "A sample to be used for analysis."

* subject 1..1
* subject only Reference(Patient or Group or Location)

Profile:        GenomicsServiceRequest
Parent:         ServiceRequest
Id:             servicerequest
Title:          "Genomics service request"
Description:    "Request that initiated the diagnostic report."

* doNotPerform 0..0
* code ^binding.description = "For laboratory, LOINC is preferred."
* subject only Reference(Patient or Group or Location)
* supportingInfo only Reference(FamilyMemberHistory or RiskAssessment or Observation or DocumentReference)
* specimen only Reference(specimen)

Profile:        GenomicsBase
Parent:         Observation
Id:             genomics-base
Title:          "Genomics base"
Description:    "Base profile that defines characteristics shared by all genetic observations."

* category 1..*
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "coding"
* category ^slicing.rules = #open
* category ^slicing.ordered = false   // can be omitted, since false is the default
* category ^slicing.description = "Slice based on the category.code pattern"
* category contains labCategory 1..1
* category[labCategory] = ObsCat#laboratory
* subject 0..1
* subject only Reference(Patient or Group or Location)
* performer 0..1
* extension contains http://hl7.org/fhir/StructureDefinition/observation-secondaryFinding named secondaryfinding 0..1
* extension contains http://hl7.org/fhir/StructureDefinition/bodySite named bodyStructure 0..1
* ^abstract = true

Profile:        OverallInterpretation
Parent:         GenomicsBase
Id:             overall-interpretation
Title:          "Genomics base"
Description:    "Provides a coarse overall interpretation of the genomic results reported."
* code = LNC#51968-6
* specimen only Reference(GenomicSpecimen)
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from http://loinc.org/vs/LL541-4 (preferred)
* ^abstract = false

Profile:        SequencePhaseRelationship
Parent:         GenomicFinding
Id:             sequence-phase-relationship
Title:          "Sequence Phase Relationship"
Description:    "Indicates whether two entities are in Cis (same strand) or Trans (opposite strand) relationship to each other."
* code = LNC#82120-7
* valueCodeableConcept 1..1
* valueCodeableConcept from SeqPhaseRelationshipVS (required)
* method from http://loinc.org/vs/LL4050-2 (extensible)
* derivedFrom ^slicing.discriminator.type = #profile
* derivedFrom ^slicing.discriminator.path = "resolve()"
* derivedFrom ^slicing.rules = #open
* derivedFrom ^slicing.description = "Slice based on the component.code pattern"
* derivedFrom contains variant 0..* and 
    haplotype 0..*
* derivedFrom[variant] only Reference(Variant)
* derivedFrom[haplotype] only Reference(Haplotype)
* ^abstract = false

Profile:        GenomicsReport
Parent:         DiagnosticReport
Id:             genomics-report
Title:          "Genomics Report"
Description:    "Genomics profile of DiagnosticReport."

* extension contains RelatedArtifact named RelatedArtifact 0..* and
    RecommendedAction named RecommendedAction 0..* and
    SupportingInformation named SupportingInfo 0..* and
    DiagnosticReportRisk named diagnosticReport-risk 0..*
* extension[RecommendedAction].value[x] only Reference(Task)
* extension[SupportingInformation].value[x] only Reference(FamilyMemberHistory or RiskAssessment or Observation or DocumentReference)
* extension[DiagnosticReportRisk].value[x] only Reference(RiskAssessment)
* basedOn only Reference(GenomicsServiceRequest)
* code = LNC#81247-9
* subject only Reference(Patient or Group or Location)
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "coding.code"
* category ^slicing.rules = #open
* category ^slicing.description = "Slice based on the category code pattern"
* category contains Genetics 0..1
* category[Genetics].coding.system = "http://terminology.hl7.org/CodeSystem/v2-0074"
* category[Genetics].coding.code = DiagnosticService#GE
* performer 0..1
* effective[x] only dateTime
* specimen only Reference(GenomicSpecimen)
* result ^slicing.discriminator.type = #profile
* result ^slicing.discriminator.path = "resolve()"
* result ^slicing.rules = #open
* result ^slicing.description = "Slice based on the reference profile and code pattern"
* result contains gen-grouper 0..* and
    overall 0..1 and
    diagnostic-implication 0..* and
    therapeutic-implication 0..* and
    variant 0..* and
    sequence-phase-relation 0..* and 
    region-studied 0..*
* result[gen-grouper] only Reference(Grouper)
* result[gen-grouper] ^short = "Grouper"
* result[overall] only Reference(OverallInterpretation)
* result[overall] ^short = "Assessment of overall results"
* result[diagnostic-implication] only Reference(DiagnosticImplication)
* result[diagnostic-implication] ^short = "Diagnostic Implication"
* result[therapeutic-implication] only Reference(TherapeuticImplication)
* result[therapeutic-implication] ^short = "Therapeutic Implication"
* result[variant] only Reference(Variant)
* result[variant] ^short = "Variant"
* result[sequence-phase-relation] only Reference(SequencePhaseRelationship)
* result[sequence-phase-relation] ^short = "Sequence Phase Relationship"
* result[region-studied] only Reference(RegionStudied)
* result[region-studied] ^short = "Region Studied"
* imagingStudy 0..0
* media 0..1

Profile:        Grouper
Parent:         GenomicsBase
Id:             grouper
Title:          "Grouper"
Description:    "Organizes information within a genomic report."

* extension contains RecommendedAction named RecommendedAction 0..*
* code = TbdCodes#grouper
* hasMember ^slicing.discriminator.type = #profile
* hasMember ^slicing.discriminator.path = "resolve()"
* hasMember ^slicing.rules = #open
* hasMember ^slicing.description = "Slice based on the reference profile"
* hasMember contains grouper-ref 0..* and 
    overall 0..1 and
    diagnostic-implication 0..* and
    therapeutic-implication 0..* and
    haplotype 0..* and
    genotype 0..* and
    variant 0..* and
    region-studied 0..* and
    sequence-phase-relation 0..* 
* hasMember[grouper-ref] only Reference(Grouper)
* hasMember[grouper-ref] ^short = "Other Grouper"
* hasMember[overall] only Reference(OverallInterpretation)
* hasMember[overall] ^short = "Assessment of overall results"
* hasMember[diagnostic-implication] only Reference(DiagnosticImplication)
* hasMember[diagnostic-implication] ^short = "Inherited Disease Pathology"
* hasMember[therapeutic-implication] only Reference(TherapeuticImplication)
* hasMember[therapeutic-implication] ^short = "Therapeutic Implication"
* hasMember[haplotype] only Reference(Haplotype)
* hasMember[haplotype] ^short = "Haplotype"
* hasMember[genotype] only Reference(Genotype)
* hasMember[genotype] ^short = "Genotype"
* hasMember[variant] only Reference(Variant)
* hasMember[variant] ^short = "Variant"
* hasMember[region-studied] only Reference(RegionStudied)
* hasMember[region-studied] ^short = "Region Studied"
* hasMember[sequence-phase-relation] only Reference(SequencePhaseRelationship)
* hasMember[sequence-phase-relation] ^short = "Sequence Phase Relationship"
* ^abstract = false