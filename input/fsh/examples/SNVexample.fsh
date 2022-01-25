Instance: SNVexample
InstanceOf: Variant
Description: "Example Variant"
Usage: #example
* status = #final
* category = ObsCat#laboratory
* code = LNC#69548-6 "Genetic variant assessment"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* method = LNC#LA26398-0 "Sequencing"
* specimen.identifier.system = "http://slk-kliniken.de/fhir/namingSystem/tissueID"
* specimen.identifier.value = "16-123456-23"
* component[0].code = LNC#48018-6 "Gene studied ID"
* component[=].valueCodeableConcept = HGNCID#HGNC:644 "AR"
* component[+].code = LNC#48001-2 "Cytogenetic (chromosome) location"
* component[=].valueCodeableConcept.text = "chrX"
* component[+].code = LNC#62374-4 "Human reference sequence assembly version"
* component[=].valueCodeableConcept = LNC#LA14029-5 "GRCh37"
* component[+].code = LNC#48002-0 "Genomic source class"
* component[=].valueCodeableConcept.coding = LNC#LA6684-0 "Somatic"
* component[+].code = LNC#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept = HGVS#p.(Ala412Val) "p.(Ala412Val)"
* component[+].code = LNC#48006-1 "Amino acid change type"
* component[=].valueCodeableConcept = LNC#LA6698-0 "Missense"
* component[+].code = LNC#51958-7 "Transcript reference sequence [ID]"
* component[=].valueCodeableConcept = NCBIrefseq#NM_000044.3 "NM_000044.3"
* component[+].code = LNC#81258-6 "Sample VAF"
* component[=].valueQuantity.value = 0.44
* component[=].valueQuantity.system = "http://unitsofmeasure.org"
* component[=].valueQuantity.unit = "decimal"
* component[+].code = LNC#82121-5 "Allelic read depth"
* component[=].valueQuantity = 120 '{reads}/{base}' "reads per base pair"