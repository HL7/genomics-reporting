Instance: CGObservationExamplehaplotype-hla-a-1-r4
InstanceOf: Observation
Description: "Example for Observation. "
* basedOn.display = "Sequence-based typing of HLA-A for sample 001-246802468"
* basedOn.type = #ServiceRequest
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code.coding[0] = http://loinc.org#84414-2 "Haplotype name"
* code.coding[1] = http://loinc.org#57290-9 "HLA-A [Type] by High resolution"
* component.code.coding = http://loinc.org#48018-6 "Gene studied [ID]"
* component.valueCodeableConcept.text = "HLA-A"
* derivedFrom.display = "Sequence for HLA-A*03:01:01:01"
* derivedFrom.type = #MolecularSequence
* effectiveDateTime = "2018-07-26"
* id = "haplotype-hla-a-1-r4"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/haplotype"
* performer.display = "aTypingLab, Inc"
* performer.type = #Organization
* specimen.display = "buccal swab: 123456789"
* status = #final
* valueCodeableConcept.coding = http://www.ebi.ac.uk/ipd/imgt/hla#HLA-A*03:01:01:01
* valueCodeableConcept.coding.version = "3.31.0"
