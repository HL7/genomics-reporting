Instance: diagnosticreport-hla-glstring-r4 
InstanceOf: GenomicsReport
Description: "Example GenomicsReport including an HLA glstring"
Usage: #example
* basedOn[0] = Reference(servicerequest-hla-a-r4)
* status = #final
* category[Genetics] = $DIAGNOSTICSERVICE#GE "Genetics"
* code.coding[0] = $LNC#81247-9 "Master HL7 genetic variant reporting panel"
* code.coding[+] = $HGNCID#HGNC:588 "Histocompatibility complex (HLA)"
* effectiveDateTime = "2018-07-26"
* performer.display = "aTypingLab, Inc"
* specimen = Reference(specimen-hla-r4)
* result[0] = Reference(genotype-hla-a-glstring-r4)
* result[+] = Reference(haplotype-hla-a-1-r4)