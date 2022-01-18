Instance: pharmPanel-1a
InstanceOf: Observation
Usage: #inline
* extension.url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/recommended-action"
* extension.valueReference = Reference(usage-1a)
* status = #final
* category = $observation-category#laboratory
* code = $ncimeta#C43359 "Panel"
* subject = Reference(patient-1a)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(lab-1a)
* hasMember[0] = Reference(haplotype-1a)
* hasMember[+] = Reference(genotype-1a)
* hasMember[+] = Reference(metab-1a)
* hasMember[+] = Reference(efficacy-1a)