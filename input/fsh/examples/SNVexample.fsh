Instance: SNVexample
InstanceOf: Variant
Usage: #example
* status = #final
* category = $observation-category#laboratory
* code = $loinc#69548-6 "Genetic variant assessment"
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* method = $loinc#LA26398-0 "Sequencing"
* specimen.identifier.system = "http://slk-kliniken.de/fhir/namingSystem/tissueID"
* specimen.identifier.value = "16-123456-23"
* component[0].code = $loinc#48018-6 "Gene studied ID"
* component[=].valueCodeableConcept = $geneId#HGNC:644 "AR"
* component[+].code = $loinc#48001-2 "Cytogenetic (chromosome) location"
* component[=].valueCodeableConcept.text = "chrX"
* component[+].code = $loinc#62374-4 "Human reference sequence assembly version"
* component[=].valueCodeableConcept = $loinc#LA14029-5 "GRCh37"
* component[+].code = $loinc#48002-0 "Genomic source class"
* component[=].valueCodeableConcept.coding = $loinc#LA6684-0 "Somatic"
* component[+].code = $loinc#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept = $varnomen#p.(Ala412Val) "p.(Ala412Val)"
* component[+].code = $loinc#48006-1 "Amino acid change type"
* component[=].valueCodeableConcept = $loinc#LA6698-0 "Missense"
* component[+].code = $loinc#51958-7 "Transcript reference sequence [ID]"
* component[=].valueCodeableConcept = $refseq#NM_000044.3 "NM_000044.3"
* component[+].code = $loinc#81258-6 "Sample VAF"
* component[=].valueQuantity.value = 0.44
* component[=].valueQuantity.system = "http://unitsofmeasure.org"
* component[=].valueQuantity.unit = "decimal"
* component[+].code = $loinc#82121-5 "Allelic read depth"
* component[=].valueQuantity = 120 '{reads}/{base}' "reads per base pair"