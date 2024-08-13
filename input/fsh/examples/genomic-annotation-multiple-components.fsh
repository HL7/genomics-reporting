Instance: populationfrequency-multiple-Annotation
InstanceOf: GenomicAnnotation
Description: "Example of displaying population allele frequency in a genomic annotation resource with the information being obtained from various different resources"
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
  * extension[sample-population].valueCodeableConcept =  http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/sample-population-cs#east-asian "East-Asian"
  * valueQuantity.value = 0.28
* component[sample-population-allele-frequency][1]
  * code = $LNC#92821-8 "Allelic frequency in Population"
  * extension[annotation-module].valueCodeableConcept = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/annotation-module-cs#thousandgenomes "1000genomes"
  * extension[sample-population].valueCodeableConcept =  http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/sample-population-cs#east-asian "East-Asian"
  * extension[workflow-relatedArtifact].valueRelatedArtifact.type = #documentation
  * extension[workflow-relatedArtifact].valueRelatedArtifact.citation = "Francis, J. H., Silverman, R. F., Canestraro, J., Bossert, D., Della Rocca, D., Hatzoglou, V., Abramson, D. H., & Diamond, E. L. (2024). Histiocytosis of the orbit and its association with KRAS mutations. Blood Advances. https://doi.org/10.1182/bloodadvances.2024014031 "
  * extension[workflow-relatedArtifact].valueRelatedArtifact.label = "PMID: 39133877"
  * extension[workflow-relatedArtifact].valueRelatedArtifact.url = "https://pubmed.ncbi.nlm.nih.gov/39133877/"
  * valueQuantity.value = 0.28
* component[sample-population-allele-frequency][2]
  * code = $LNC#92821-8 "Allelic frequency in Population"
  * extension[annotation-module].valueCodeableConcept = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/annotation-module-cs#gnomad3 "gnomAD3"
  * extension[sample-population].valueCodeableConcept =  http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/sample-population-cs#north-american "North-American"
  * valueQuantity.value = 0.256
* component[clinical-significance]
  * code = $LNC#53037-8 "Genetic variation clinical significance [Imp]"
  * valueCodeableConcept = https://loinc.org/LA26333-7#LA26333-7 "Uncertain significance"
