Instance: diagnosticreport-hla-glstring-r4 
InstanceOf: GenomicReport
Description: "Example GenomicReport including an HLA glstring"
Usage: #example
* basedOn[0] = Reference(servicerequest-hla-a-r4)
* status = #final
* category[Genetics] = $DIAGNOSTICSERVICE#GE "Genetics"
* code.coding[0] = $LNC#81247-9 "Master HL7 genetic variant reporting panel"
* code.coding[+] = $HGNCID#HGNC:588 "Histocompatibility complex (HLA)"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2023-06-01"
* performer = Reference(ExampleLab)
* specimen = Reference(specimen-hla-r4)
* result[0] = Reference(genotype-hla-a-glstring-r4)
* result[+] = Reference(haplotype-hla-a-1-r4)