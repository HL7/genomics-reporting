Instance: diagnosticreport-hla-glstring-r4
InstanceOf: GenomicsReport
Description: "Example GenomicsReport including an HLA glstring"
Usage: #example
* basedOn[0].display = "Sequence-based typing of HLA-A for sample-id=123456789"
* basedOn[+].display = "Sequence-based typing of HLA-B for sample-id=123456789"
* basedOn[+].display = "Sequence-based typing of HLA-C for sample-id=123456789"
* status = #final
* category[Genetics] = $DIAGNOSTICSERVICE#GE "Genetics"
* code.coding[0] = $LNC#81247-9 "Master HL7 genetic variant reporting panel"
* code.coding[+] = $HGNCID#588 "Histocompatibility complex (HLA)"
* effectiveDateTime = "2018-07-26"
* performer.display = "aTypingLab, Inc"
* specimen.display = "buccal swab: 123456789"
* result[0].type = "Observation"
* result[=].display = "HLA-A genotype: HLA-A:01:01:01G+HLA-A*01:02"
* result[+].type = "Observation"
* result[=].display = "HLA-B genotype: HLA-B*15:01:01:01+HLA-B*40:01:02:01/HLA-B*40:01:02:02/HLA-B*40:01:02:04/HLA-B*40:01:02:06"
* result[+].type = "Observation"
* result[=].display = "HLA-C genotype: HLA-C*07:04:01:01/HLA-C*07:04:01:03+HLA-C*12:03:01:01/HLA-C*12:03:01:06"