Instance: Inline-Instance-for-complexVariant-nonHGVS-1
InstanceOf: Variant
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $loinc#69548-6 "Genetic variant assessment"
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* component[0].code = $loinc#51958-7 "Transcript ref sequence ID"
* component[=].valueCodeableConcept = $refseq#NM_022787.3 "NM_022787.3"
* component[+].code = $loinc#81254-5
* component[=].valueRange.low.value = 769
* component[=].valueRange.high.value = 769
* component[+].code = $loinc#69547-8 "Genomic ref allele [ID]"
* component[=].valueString = "G"
* component[+].code = $loinc#69551-0 "Genomic alt allele [ID]"
* component[=].valueString = "A"