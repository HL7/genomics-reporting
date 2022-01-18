Instance: haplotype-1-pgx-example
InstanceOf: Haplotype
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $loinc#84414-2 "Haplotype Name"
* effectiveDateTime = "2018"
* issued = "2018-03-06T00:00:00-05:00"
* valueCodeableConcept = $pharmvar#"CYP2C9 *35B" "CYP2C9 *35B"
* specimen = Reference(specimen)
* derivedFrom = Reference(variant-1-pgx-example)
* component.code = $loinc#48018-6 "Gene studied ID"
* component.valueCodeableConcept = $geneId#2623 "CYP2C9"