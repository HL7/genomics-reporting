Instance: report-withGrouping
InstanceOf: GenomicsReport
Usage: #inline
* basedOn = Reference(DiagnosticRequest/request-1a)
* status = #final
* category = $v2-0074#GE
* code.coding = $loinc#81247-9
* subject = Reference(patient-1a)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(lab-1a)
* result[0] = Reference(overall-interp-1a)
* result[+] = Reference(Observation/discrete-variant-1a)
* result[+] = Reference(dis-path-1a)
* result[+] = Reference(complex-variant-1a)
* result[+] = Reference(complex-dis-path-1a)
* result[+] = Reference(pharmPanel-1a)
* result[+] = Reference(haplotype-1a)
* result[+] = Reference(genotype-1a)
* result[+] = Reference(metab-1a)
* result[+] = Reference(efficacy-1a)
* presentedForm.contentType = #text/plain
* presentedForm.data = "UHV0IHRoZSByZXBvcnQgdGV4dCBoZXJlIC0gbWltZS1lbmNvZGVk"