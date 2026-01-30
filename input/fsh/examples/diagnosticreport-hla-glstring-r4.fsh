Instance: diagnosticreport-hla-glstring-r4 
InstanceOf: GenomicReport
Description: "Example GenomicReport including an HLA glstring"
Usage: #example
* basedOn[+] = Reference(servicerequest-hla-a-r4)
* status = #final
* category[Genetics] = $DIAGNOSTICSERVICE#GE "Genetics"
* code.coding[+] = $LNC#51969-4 "Genetic analysis report"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2023-06-01"
* performer = Reference(ExampleLab)
* specimen = Reference(specimen-hla-r4)
* result[+] = Reference(genotype-hla-a-glstring-r4)
* result[+] = Reference(haplotype-hla-a-1-r4)