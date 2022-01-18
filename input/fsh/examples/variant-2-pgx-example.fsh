Instance: variant-2-pgx-example
InstanceOf: Variant
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $loinc#69548-6 "Genetic variant assessment"
* effectiveDateTime = "2018"
* issued = "2018-03-06T00:00:00-05:00"
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* specimen = Reference(specimen)
* derivedFrom = Reference(sequence-2-pgx-example)
* component[0].code = $loinc#48018-6 "Gene studied ID"
* component[=].valueCodeableConcept = $geneId#2623 "CYP2C9"
* component[+].code = $loinc#48013-7 "Genomic reference sequence ID"
* component[=].valueCodeableConcept = $nuccore#NG_007726.3
* component[+].code = $loinc#81255-2 "dbSNP ID"
* component[=].valueCodeableConcept = $SNP#rs233455
* component[+].code = $loinc#69547-8 "Ref nucleotide"
* component[=].valueString = "T"
* component[+].code = $loinc#69551-0 "Alt allele"
* component[=].valueString = "G"
* component[+].code = $loinc#81254-5
* component[=].valueRange.low.value = 55227978
* component[=].valueRange.high.value = 55227979