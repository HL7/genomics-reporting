Instance: discrete-variant
InstanceOf: Variant
Usage: #example
* status = #final
* category = $observation-category#laboratory
* code = $loinc#69548-6 "Genetic variant assessment"
* subject = Reference(Patient/patient-1a)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(Organization/lab-1a)
* valueCodeableConcept.coding = $loinc#LA9633-4 "Present"
* specimen = Reference(Specimen/specimen-1a)
* component[0].code = $loinc#81252-9 "Discrete genetic variant"
* component[=].valueCodeableConcept.coding.version = "???"
* component[=].valueCodeableConcept.coding = $clinvar#30880 "NM_014049.4(ACAD9):c.1249C>T (p.Arg417Cys)"
* component[+].code = $loinc#48018-6
* component[=].valueCodeableConcept.coding = $geneId#21497 "ACAD9"
* component[+].code = $loinc#51958-7
* component[=].valueCodeableConcept.coding = $refseq#NM_014049.4
* component[+].code = $loinc#48013-7
* component[=].valueCodeableConcept.coding = $refseq#NG_017064.1
* component[+].code = $loinc#81290-9
* component[=].valueCodeableConcept.coding = $varnomen#NC_000003.11:g.128625063C>T
* component[+].code = $loinc#81255-2
* component[=].valueCodeableConcept.coding.version = "137"
* component[=].valueCodeableConcept.coding = $SNP#rs368949613
* component[+].code = $loinc#48004-6
* component[=].valueCodeableConcept.coding.version = "15.11"
* component[=].valueCodeableConcept.coding = $varnomen#c.1249C>T
* component[+].code = $loinc#48005-3
* component[=].valueCodeableConcept.coding.version = "15.11"
* component[=].valueCodeableConcept.coding = $varnomen#p.Arg417Cys
* component[+].code = $loinc#48019-4
* component[=].valueCodeableConcept.coding = $loinc#LA6690-7 "Substitution"
* component[+].code = $loinc#48006-1
* component[=].valueCodeableConcept.coding = $loinc#LA6698-0 "Missense"
* component[+].code = $loinc#69547-8
* component[=].valueString = "C"
* component[+].code = $loinc#81254-5
* component[=].valueRange.low.value = 31731
* component[=].valueRange.high.value = 31731
* component[+].code = $loinc#69551-0
* component[=].valueString = "T"
* component[+].code = $loinc#48001-2
* component[=].valueCodeableConcept.coding = $Chrom-Loc#3q21
* component[+].code = $loinc#48002-0
* component[=].valueCodeableConcept.coding = $loinc#LA6683-2 "Germline"
* component[+].code = $loinc#53034-5
* component[=].valueCodeableConcept.coding = $loinc#LA6706-1 "Heterozygous"
* component[+].code = $loinc#81258-6
* component[=].valueQuantity = 47 '%'
* component[+].code = $loinc#82121-5
* component[=].valueQuantity = 208 '1'
* component[+].code = $loinc#82155-3
* component[=].valueQuantity = 1 '1'
* component[+].code.coding = $loinc#81299-0
* component[=].valueQuantity.value = 0.48
* component[+].code = $loinc#81300-6
* component[=].valueQuantity = 1396929 '1'
* component[+].code = $loinc#81301-4
* component[=].valueRange.low.value = 13200589
* component[=].valueRange.high.value = 15592000
* component[+].code = $loinc#81302-2
* component[=].valueRange.low.value = 14184616
* component[=].valueRange.high.value = 15581544