Instance: genotype-hla-a-glstring-r4
InstanceOf: Genotype
Description: "Genotype example: Sequence-based typing of HLA-A"
Usage: #example
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code.coding[0] = $LNC#84413-4 "Genotype display name"
* code.coding[+] = $LNC#57290-9 "HLA-A [Type] by High resolution"
* effectiveDateTime = "2018-07-26"
* performer.type = "Organization"
* performer.display = "aTypingLab, Inc"
* valueCodeableConcept.coding.version = "1.0"
* valueCodeableConcept.coding = $GLSTRING#hla#3.31.0#HLA-A*03:01:01:01+HLA-A*30:01:01
* method.text = "PACBIO Sequel"
* specimen = Reference(specimen-hla-r4)
* derivedFrom[0] = Reference(haplotype-hla-a-1-r4)
* component.code = $LNC#48018-6 "Gene studied [ID]"
* component.valueCodeableConcept = $HGNCID#HGNC:4931 "HLA-A"