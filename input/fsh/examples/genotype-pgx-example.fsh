Instance: genotype-pgx-example
InstanceOf: Genotype
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $loinc#84413-4 "genotype display name"
* effectiveDateTime = "2018"
* issued = "2018-03-06T00:00:00-05:00"
* valueCodeableConcept = $pharmvar#"CYP2C9 *4/*35B" "CYP2C9 *4/*35B"
* specimen = Reference(specimen)
* derivedFrom[0] = Reference(haplotype-1-pgx-example)
* derivedFrom[+] = Reference(haplotype-2-pgx-example)
* component.code = $loinc#48018-6 "Gene studied ID"
* component.valueCodeableConcept = $geneId#2623 "CYP2C9"