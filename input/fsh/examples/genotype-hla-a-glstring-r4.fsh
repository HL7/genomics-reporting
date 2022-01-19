Instance: genotype-hla-a-glstring-r4
InstanceOf: Genotype
Usage: #example
* basedOn.display = "Sequence-based typing of HLA-A for sample-id=123456789"
* status = #final
* category = ObsCat#laboratory
* code.coding[0] = LNC#84413-4 "Genotype display name"
* code.coding[+] = LNC#57290-9 "HLA-A [Type] by High resolution"
* effectiveDateTime = "2018-07-26"
* performer.type = "Organization"
* performer.display = "aTypingLab, Inc"
* valueCodeableConcept.coding.version = "1.0"
* valueCodeableConcept.coding = $glstring#hla#3.31.0#HLA-A*03:01:01:01+HLA-A*30:01:01
* method.text = "PACBIO Sequel"
* specimen.display = "buccal swab: 123456789"
* derivedFrom[0].type = "Observation"
* derivedFrom[=].display = "HLA-A Allele: HLA-A*03:01:01:01"
* derivedFrom[+].type = "Observation"
* derivedFrom[=].display = "HLA-A Allele: HLA-A*30:01:01"
* component.code = LNC#48018-6 "Gene studied [ID]"
* component.valueCodeableConcept = HGNCID#HGNC:4931 "HLA-A"