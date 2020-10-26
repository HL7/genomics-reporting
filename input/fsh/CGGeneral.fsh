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
* subject only Reference(Patient or Group or Location)
* supportingInfo only Reference(FamilyMemberHistory or RiskAssessment or Observation or DocumentReference)
* specimen only Reference(specimen)

Profile:        GenomicsBase
Parent:         Observation
Id:             genomics-base
Title:          "Genomics base"
Description:    "Base profile that defines characteristics shared by all genetic observations."

* category 1..*
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "code"
* category ^slicing.rules = #open
* category ^slicing.ordered = false   // can be omitted, since false is the default
* category ^slicing.description = "Slice based on the category.code pattern"
* category contains labCategory 1..1
* category[labCategory] = ObsCat#laboratory
* subject 0..1
* subject only Reference(Patient or Group or Location)
* performer 0..1
* performer only Reference(Patient or Organization or Patient or RelatedPerson)
* extension contains http://hl7.org/fhir/StructureDefinition/observation-secondaryFinding named secondaryfinding 0..1
* extension contains http://hl7.org/fhir/StructureDefinition/bodySite named bodyStructure 0..1

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


Profile:        GenomicServiceRequest
Parent:         ServiceRequest
Id:             service-request
Title:          "Service Request"
Description:    "Request that initiated the diagnostic report."
* doNotPerform 0..0
* subject only Reference(Patient or Group or Location)
* supportingInfo only Reference(FamilyMemberHistory or RiskAssessment or Observation or DocumentReference)
* specimen only Reference(GenomicSpecimen)