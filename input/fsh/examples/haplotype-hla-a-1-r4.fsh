Instance: haplotype-hla-a-1-r4
InstanceOf: Haplotype
Description: "Example Haplotype Sequence-based typing of HLA-A"
Usage: #example
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code.coding[0] = $LNC#84414-2 "Haplotype name"
* code.coding[+] = $LNC#57290-9 "HLA-A [Type] by High resolution"
* effectiveDateTime = "2018-07-26"
* performer.type = "Organization"
* performer.display = "aTypingLab, Inc"
* valueCodeableConcept.coding.version = "3.31.0"
* valueCodeableConcept.coding = $HLAALLELE#HLA-A*03:01:01:01
* specimen = Reference(specimen-hla-r4)
* component.code = $LNC#48018-6 "Gene studied [ID]"
* component.valueCodeableConcept = $HGNCID#HGNC:4931 "HLA-A"
  * text = "HLA-A"