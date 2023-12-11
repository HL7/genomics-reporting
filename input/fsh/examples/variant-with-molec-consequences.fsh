Instance: variant-with-molec-consequences
InstanceOf: Variant
Description: "Variant with molecular consequences"
Usage: #example
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = $LNC#69548-6 "Genetic variant assessment"
* subject = Reference(Patient/HG00403)
* effectiveDateTime = "2023-06-01"
* performer = Reference(ExampleLab)
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* component[+].code = $LNC#48002-0 "Genomic source class"
* component[=].valueCodeableConcept.coding = $LNC#LA6683-2 "Germline"
* component[+].code = http://loinc.org#48013-7 "Genomic reference sequence ID"
* component[=].valueCodeableConcept = http://www.ncbi.nlm.nih.gov/refseq#NC_000001.10
* component[+].code = $LNC#53034-5 "Allelic state"
* component[=].valueCodeableConcept = $LNC#LA6706-1 "Heterozygous"
* component[+].code = http://loinc.org#81252-9 "Discrete genetic variant"
* component[=].valueCodeableConcept = $HGVS#NC_000001.10:g.86852621A>G "NC_000001.10:g.86852621A>G"
* component[+].code = http://loinc.org#81258-6 "Sample VAF"
* component[=].valueQuantity = 0.6 '1' "relative frequency of a particular allele in the specimen"
* component[+].code = http://loinc.org#69547-8 "Genomic Ref allele [ID]"
* component[=].valueString = "A"
* component[+].code = http://loinc.org#69551-0 "Genomic Alt allele [ID]"
* component[=].valueString = "G"
* component[+].code = http://loinc.org#92822-6 "Genomic coord system"
* component[=].valueCodeableConcept = http://loinc.org#LA30100-4 "0-based interval counting"
* component[+].code = http://loinc.org#81254-5 //"Variant exact start-end"
* component[=].code.text = "Variant exact start-end"
* component[=].valueRange.low.value = 86852620
* component[+].code = http://loinc.org#92821-8 //"Population allele frequency"
* component[=].code.text = "Population allele frequency"
* component[=].valueQuantity = 0.327084 '1'