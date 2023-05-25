Instance: RepeatExpansion
InstanceOf: Variant
Description: "Repeat Expansion Variant"
Usage: #example
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = $LNC#69548-6 "Genetic variant assessment"
* valueCodeableConcept = $LNC#LA9633-4 "Present"

* component[0].code = $LNC#48018-6 "Gene studied ID"
* component[=].valueCodeableConcept = $HGNCID#HGNC:8565 "PABPN1"

* component[+].code = $LNC#48001-2 "Cytogenetic (chromosome) location"
* component[=].valueCodeableConcept.text = "chr14"

* component[+].code = $LNC#51958-7 "Transcript reference sequence [ID]"
* component[=].valueCodeableConcept = $NCBIREFSEQ#NM_004643.4 "NM_004643.4"

* component[+].code = $LNC#48004-6 "DNA change (c.HGVS)"
* component[=].valueCodeableConcept.coding = $HGVS#NM_004643.3:c.3GGC[14] "NM_004643.3:c.3GGC[14]"

* component[+].code = $LNC#81254-5 "Genomic allele start-end"
* component[=].valueRange.low.value = 3

* component[+].code = $LNC#81252-9 "Discrete genetic variant"
* component[=].valueCodeableConcept.coding = $CLINVAR#503634 "NM_004643.3(PABPN1):c.3GGC[11] (p.Ala11_Gly12insAlaAlaAlaAla)"

* component[+].code = TbdCodesCS#repeat-motif "Repeat Expansion Motif"
* component[=].valueString = "GGC"
* component[=].extension[RepeatMotifOrder].valuePositiveInt = 1

* component[+].code = TbdCodesCS#repeat-number "Number of Repeat Expansions"
* component[=].valueQuantity.value = 11
* component[=].extension[RepeatMotifOrder].valuePositiveInt = 1


Instance: MultipleRepeatExpansions
InstanceOf: Variant
Description: "Repeat Expansion Variant with multiple motifs"
Usage: #example
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = $LNC#69548-6 "Genetic variant assessment"
* valueCodeableConcept = $LNC#LA9633-4 "Present"

* component[0].code = $LNC#48018-6 "Gene studied ID"
* component[=].valueCodeableConcept = $HGNCID#HGNC:8565 "PABPN1"

* component[+].code = $LNC#48001-2 "Cytogenetic (chromosome) location"
* component[=].valueCodeableConcept.text = "chr14"

* component[+].code = $LNC#51958-7 "Transcript reference sequence [ID]"
* component[=].valueCodeableConcept = $NCBIREFSEQ#NM_004643.4 "NM_004643.4"

* component[+].code = $LNC#48004-6 "DNA change (c.HGVS)"
* component[=].valueCodeableConcept.coding = $HGVS#NM_004643.3:c.3GGC[6]GCA[3]GCG[1] "NM_004643.3:c.3GGC[6]GCA[3]GCG[1]"

* component[+].code = $LNC#81254-5 "Genomic allele start-end"
* component[=].valueRange.low.value = 3

* component[+].code = TbdCodesCS#repeat-motif "Repeat Expansion Motif"
* component[=].valueString = "GGC"
* component[=].extension[RepeatMotifOrder].valuePositiveInt = 1

* component[+].code = TbdCodesCS#repeat-number "Number of Repeat Expansions"
* component[=].valueQuantity.value = 6
* component[=].extension[RepeatMotifOrder].valuePositiveInt = 1

* component[+].code = TbdCodesCS#repeat-motif "Repeat Expansion Motif"
* component[=].valueString = "GCA"
* component[=].extension[RepeatMotifOrder].valuePositiveInt = 2

* component[+].code = TbdCodesCS#repeat-number "Number of Repeat Expansions"
* component[=].valueQuantity.value = 3
* component[=].extension[RepeatMotifOrder].valuePositiveInt = 2

* component[+].code = TbdCodesCS#repeat-motif "Repeat Expansion Motif"
* component[=].valueString = "GCG"
* component[=].extension[RepeatMotifOrder].valuePositiveInt = 3

* component[+].code = TbdCodesCS#repeat-number "Number of Repeat Expansions"
* component[=].valueQuantity.value = 1
* component[=].extension[RepeatMotifOrder].valuePositiveInt = 3
