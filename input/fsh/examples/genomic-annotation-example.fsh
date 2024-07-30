Instance: populationfrequency-Annotation
InstanceOf: GenomicAnnotation
Description: "Example of displaying population allele frequency in a genomic annotation resource"
Usage: #example
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#genomic-annotation
* subject = Reference(Patient/HG00403)
* derivedFrom = Reference(Observation/variant-with-molec-consequences)
* component[+].code = $LNC#92821-8 "Allelic frequency in Population"
* component[=].valueQuantity.value = 0.006739014
* component[=].valueQuantity.system = "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/annotation-module-cs"
* component[=].valueQuantity.unit = "decimal"
* component[=].valueQuantity.code = #gnomad3 "gnomad3"
