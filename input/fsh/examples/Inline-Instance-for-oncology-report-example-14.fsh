Instance: Inline-Instance-for-oncology-report-example-14
InstanceOf: Variant
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $loinc#69548-6 "Genetic variant assessment"
* subject = Reference(urn:uuid:f7a438e6-f484-453d-97e8-aa4d51008648)
* performer = Reference(urn:uuid:fc16d84c-8584-4e1d-baae-64e2f95bfe17)
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* method = $loinc#LA26398-0 "Sequencing"
* specimen.identifier.system = "http://molit.eu/fhir/genomics/NamingSystem/cegat/tissueID"
* specimen.identifier.value = "UNKNOWN"
* component[0].code = $loinc#48002-0 "Genomic source class"
* component[=].valueCodeableConcept = $loinc#LA6684-0 "Somatic"
* component[+].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $geneId#HGNC:11086 "SLIT2"
* component[+].code = $loinc#62374-4 "Human reference sequence assembly version"
* component[=].valueCodeableConcept = $loinc#LA14029-5 "GRCh37"
* component[+].code = $loinc#48004-6 "DNA change (c.HGVS)"
* component[=].valueCodeableConcept = $varnomen#c.1290C>A "c.1290C>A"
* component[+].code = $loinc#48019-4 "DNA change type"
* component[=].valueCodeableConcept = $sequenceontology#SO:1000002 "substitution"
* component[+].code = $loinc#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept = $varnomen#p.N430K "p.N430K"
* component[+].code = $tbd-codes-cs#molecular-consequence "Molecular Consequence"
* component[=].valueCodeableConcept = $sequenceontology#SO:0001583 "missense_variant"
* component[+].code = $loinc#51958-7 "Transcript reference sequence [ID]"
* component[=].valueCodeableConcept = $refseq#NM_004787.3 "NM_004787.3"
* component[+].code = $loinc#69547-8 "Genomic ref allele [ID]"
* component[=].valueString = "C"
* component[+].code = $loinc#81258-6 "Sample VAF"
* component[=].valueQuantity = 0.2642 '1' "relative frequency of a particular allele in the specimen"
* component[+].code = $loinc#82121-5 "Allelic read depth"
* component[=].valueQuantity = 53 '{reads}/{base}' "reads per base pair"