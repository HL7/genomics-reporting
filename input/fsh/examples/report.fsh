Instance: report
InstanceOf: GenomicsReport
Usage: #inline
* basedOn = Reference(DiagnosticRequest/request)
* status = #final
* category = $v2-0074#GE
* code.coding = $loinc#81247-9
* subject = Reference(patient)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(lab)
* result[0] = Reference(overall-interp)
* result[+] = Reference(Observation/discrete-variant)
* result[+] = Reference(dis-path)
* result[+] = Reference(complex-variant)
* result[+] = Reference(complex-dis-path)
* result[+] = Reference(haplotype)
* result[+] = Reference(genotype)
* result[+] = Reference(metab)
* result[+] = Reference(efficacy)
* presentedForm.contentType = #text/plain
* presentedForm.data = "UHV0IHRoZSByZXBvcnQgdGV4dCBoZXJlIC0gbWltZS1lbmNvZGVk"