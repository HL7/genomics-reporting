Instance: haplotype-hla-a-1-r4
InstanceOf: Haplotype
Usage: #example
* basedOn.type = "ServiceRequest"
* basedOn.display = "Sequence-based typing of HLA-A for sample 001-246802468"
* status = #final
* category = ObsCat#laboratory
* code.coding[0] = LNC#84414-2 "Haplotype name"
* code.coding[+] = LNC#57290-9 "HLA-A [Type] by High resolution"
* effectiveDateTime = "2018-07-26"
* performer.type = "Organization"
* performer.display = "aTypingLab, Inc"
* valueCodeableConcept.coding.version = "3.31.0"
* valueCodeableConcept.coding = $hla#HLA-A*03:01:01:01
* specimen.display = "buccal swab: 123456789"
* derivedFrom.type = "MolecularSequence"
* derivedFrom.display = "Sequence for HLA-A*03:01:01:01"
* component.code = LNC#48018-6 "Gene studied [ID]"
* component.valueCodeableConcept = HGNCID#HGNC:4931 "HLA-A"
  * text = "HLA-A"