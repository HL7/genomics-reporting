Instance: pgx-report
InstanceOf: GenomicsReport
Usage: #inline
* extension.url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/recommended-action"
* extension.valueReference = Reference(med-usage-impact-task-pgx-example)
* basedOn = Reference(pgx-request)
* status = #final
* category = $v2-0074#GE "Genetics"
* code = $loinc#81247-9
* subject = Reference(patient)
* effectiveDateTime = "2016"
* issued = "2018-03-06T00:00:00-05:00"
* performer = Reference(lab)
* result[0] = Reference(med-impact-pgx-example) "genetics impact for medication metabolism accessment"
* result[+] = Reference(genotype-pgx-example)
* result[+] = Reference(haplotype-1-pgx-example)
* result[+] = Reference(haplotype-2-pgx-example)
* result[+] = Reference(variant-1-pgx-example)
* result[+] = Reference(variant-2-pgx-example)