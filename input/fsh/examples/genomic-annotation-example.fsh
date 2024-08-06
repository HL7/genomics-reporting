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
* component[sample-population-allele-frequency][0]
  * code = $LNC#92821-8 "Allelic frequency in Population"
  * extension[annotation-module].valueCodeableConcept = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/annotation-module-cs#gnomad3 "gnomAD3"
  * extension[sample-population].valueCodeableConcept =  http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/sample-population-cs#east-asian "East Asian"
  * valueQuantity.value = 0.28
* component[sample-population-allele-frequency][1]
  * code = $LNC#92821-8 "Allelic frequency in Population"
  * extension[annotation-module].valueCodeableConcept = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/annotation-module-cs#thousandgenomes "1000genomes"
  * extension[sample-population].valueCodeableConcept =  http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/sample-population-cs#east-asian "East Asian"
  * valueQuantity.value = 0.28