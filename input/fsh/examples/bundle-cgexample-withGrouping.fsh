Instance: bundle-cgexample-withGrouping
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[0].fullUrl = "http://example.org/fhir/DiagnosticReport/report-withGrouping"
* entry[=].resource = report-withGrouping
* entry[+].fullUrl = "http://example.org/fhir/Patient/ExamplePatient"
* entry[=].resource = ExamplePatient
* entry[+].fullUrl = "http://example.org/fhir/Specimen/ExampleSpecimen"
* entry[=].resource = ExampleSpecimen
* entry[+].fullUrl = "http://example.org/fhir/Organization/ExampleLab"
* entry[=].resource = ExampleLab
* entry[+].fullUrl = "http://example.org/fhir/ServiceRequest/ExampleServiceRequest"
* entry[=].resource = ExampleServiceRequest
* entry[+].fullUrl = "http://example.org/fhir/Observation/overall-interp-1a"
* entry[=].resource = overall-interp-1a
* entry[+].fullUrl = "http://example.org/fhir/Observation/discrete-variant-1a"
* entry[=].resource = discrete-variant-1a
* entry[+].fullUrl = "http://example.org/fhir/Observation/dis-path-1a"
* entry[=].resource = dis-path-1a
* entry[+].fullUrl = "http://example.org/fhir/Observation/complex-variant-1a"
* entry[=].resource = complex-variant-1a
* entry[+].fullUrl = "http://example.org/fhir/Observation/complex-dis-path-1a"
* entry[=].resource = complex-dis-path-1a
* entry[+].fullUrl = "http://example.org/fhir/Observation/complex-component-D-1a"
* entry[=].resource = complex-component-D-1a
* entry[+].fullUrl = "http://example.org/fhir/Observation/complex-component-E-1a"
* entry[=].resource = complex-component-E-1a
* entry[+].fullUrl = "http://example.org/fhir/Observation/pharmPanel-1a"
* entry[=].resource = pharmPanel-1a
* entry[+].fullUrl = "http://example.org/fhir/Observation/haplotype-1a"
* entry[=].resource = haplotype-1a
* entry[+].fullUrl = "http://example.org/fhir/Observation/genotype-1a"
* entry[=].resource = genotype-1a
* entry[+].fullUrl = "http://example.org/fhir/Observation/metab-1a"
* entry[=].resource = metab-1a
* entry[+].fullUrl = "http://example.org/fhir/Observation/efficacy-1a"
* entry[=].resource = efficacy-1a
* entry[+].fullUrl = "http://example.org/fhir/Observation/highrisk-1a"
* entry[=].resource = highrisk-1a
* entry[+].fullUrl = "http://example.org/fhir/Task/usage-1a"
* entry[=].resource = usage-1a


Instance: report-withGrouping
InstanceOf: GenomicsReport
Usage: #inline
* basedOn = Reference(ExampleServiceRequest)
* status = #final
* category = $v2-0074#GE
* code.coding = $loinc#81247-9
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(ExampleLab)
* result[0] = Reference(overall-interp-1a)
* result[+] = Reference(discrete-variant-1a)
* result[+] = Reference(dis-path-1a)
* result[+] = Reference(complex-variant-1a)
* result[+] = Reference(complex-dis-path-1a)
* result[+] = Reference(pharmPanel-1a)
* result[+] = Reference(haplotype-1a)
* result[+] = Reference(genotype-1a)
* result[+] = Reference(metab-1a)
* result[+] = Reference(efficacy-1a)
* presentedForm.contentType = #text/plain
* presentedForm.data = "UHV0IHRoZSByZXBvcnQgdGV4dCBoZXJlIC0gbWltZS1lbmNvZGVk"

Instance: overall-interp-1a
InstanceOf: OverallInterpretation
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $loinc#51968-6
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(ExampleLab)
* valueCodeableConcept.coding[0] = $loinc#LA6576-8 "Positive"
* valueCodeableConcept.coding[+] = $sct#10828004 "Positive"
* specimen = Reference(ExampleSpecimen)

Instance: dis-path-1a
InstanceOf: DiagnosticImplication
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $tbd-codes-cs#diagnostic-implication
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(ExampleLab)
* derivedFrom = Reference(discrete-variant-1a)
* component[0].code = $loinc#53037-8
* component[=].valueCodeableConcept.coding = $loinc#LA6668-3 "Pathogenic"
* component[+].code = $loinc#81259-4
* component[=].valueCodeableConcept.coding = $medgen#C1970173 "Acyl-CoA dehydrogenase family, member 9, deficiency of"

Instance: complex-variant-1a
InstanceOf: Variant
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $loinc#69548-6
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(ExampleLab)
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* specimen = Reference(ExampleSpecimen)
* hasMember[0] = Reference(complex-component-D-1a)
* hasMember[+] = Reference(complex-component-E-1a)
* component.code = $loinc#81263-6
* component.valueCodeableConcept = $loinc#LA26218-0 "Haplotype"

Instance: complex-dis-path-1a
InstanceOf: DiagnosticImplication
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $tbd-codes-cs#diagnostic-implication
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(ExampleLab)
* derivedFrom = Reference(complex-variant-1a)
* component[0].code = $loinc#53037-8
* component[=].valueCodeableConcept.coding = $loinc#LA6668-3 "Pathogenic"
* component[+].code = $loinc#81259-4
* component[=].valueCodeableConcept.coding = $sct#293498008 "Debrisoquine adverse reaction (disorder)"

Instance: pharmPanel-1a
InstanceOf: Observation
Usage: #inline
* extension.url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/recommended-action"
* extension.valueReference = Reference(usage-1a)
* status = #final
* category = $observation-category#laboratory
* code = $ncimeta#C43359 "Panel"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(ExampleLab)
* hasMember[0] = Reference(haplotype-1a)
* hasMember[+] = Reference(genotype-1a)
* hasMember[+] = Reference(metab-1a)
* hasMember[+] = Reference(efficacy-1a)

Instance: haplotype-1a
InstanceOf: Haplotype
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $loinc#84414-2
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(ExampleLab)
* valueCodeableConcept.coding = $hla#*2
* specimen = Reference(ExampleSpecimen)
* derivedFrom = Reference(discrete-variant-1a)

Instance: genotype-1a
InstanceOf: Genotype
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $loinc#84413-4
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(ExampleLab)
* valueCodeableConcept = $pharmvar#"CYP2C9 *2/*5" "CYP2C9 *2/*5"
* specimen = Reference(ExampleSpecimen)
* derivedFrom = Reference(haplotype-1a)
* component[0].code = $loinc#48018-6
* component[=].valueCodeableConcept.coding = $geneId#2623 "CYP2C9"
* component[+].code = $loinc#48018-6
* component[=].valueCodeableConcept.coding = $geneId#23663 "VKORC1"

Instance: metab-1a
InstanceOf: TherapeuticImplication
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $tbd-codes-cs#therapeutic-implication
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(ExampleLab)
* derivedFrom = Reference(genotype-1a)
* component[0].code = $loinc#51963-7
* component[=].valueCodeableConcept.coding = $rxnorm#11289 "Warfarin"
* component[+].code = $loinc#53040-2
* component[=].valueCodeableConcept.coding = $loinc#LA25390-8 "Rapid metabolizer"

Instance: efficacy-1a
InstanceOf: TherapeuticImplication
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $tbd-codes-cs#therapeutic-implication
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(ExampleLab)
* derivedFrom = Reference(genotype-1a)
* component[0].code = $loinc#51961-1
* component[=].valueCodeableConcept.coding = $loinc#LA6676-6 "Resistant"
* component[+].code = $loinc#51963-7
* component[=].valueCodeableConcept.coding = $rxnorm#11289 "Warfarin"

Instance: highrisk-1a
InstanceOf: TherapeuticImplication
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $tbd-codes-cs#therapeutic-implication
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(ExampleLab)
* derivedFrom = Reference(genotype-1a)
* component[0].code = $loinc#83009-1
* component[=].valueCodeableConcept.coding = $loinc#LA19542-2 "Low risk"
* component[+].code = $loinc#51963-7
* component[=].valueCodeableConcept.coding = $rxnorm#11289 "Warfarin"

Instance: usage-1a
InstanceOf: MedicationRecommendation
Usage: #inline
* status = #requested
* intent = #proposal
* code.coding = $loinc#LA26423-6 "Increase dose"
* code.text = "May need higher dosage than usual."
* focus = Reference(MedicationStatementWarfarin)
* for = Reference(ExamplePatient)
* requester = Reference(ExampleLab)
* reasonReference = Reference(metab-1a)

Instance: complex-component-D-1a
InstanceOf: Variant
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $loinc#69548-6 "Genetic variant assessment"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(ExampleLab)
* valueCodeableConcept.coding = $loinc#LA9633-4 "Present"
* specimen = Reference(ExampleSpecimen)
* component[0].code = $loinc#81252-9 "Discrete genetic variant"
* component[=].valueCodeableConcept.coding = $clinvar#31934 "NM_000106.5(CYP2D6):c.886C>T (p.Arg296Cys)"
* component[+].code = $loinc#51958-7
* component[=].valueCodeableConcept.coding = $refseq#NM_000106.5
* component[+].code = $loinc#48004-6
* component[=].valueCodeableConcept.coding.version = "15.11"
* component[=].valueCodeableConcept.coding = $varnomen#c.886C>T
* component[+].code = $loinc#48005-3
* component[=].valueCodeableConcept.coding.version = "15.11"
* component[=].valueCodeableConcept.coding = $varnomen#p.Arg296Cys
* component[+].code = $loinc#48019-4
* component[=].valueCodeableConcept.coding = $loinc#LA6690-7 "Substitution"
* component[+].code = $loinc#48006-1
* component[=].valueCodeableConcept.coding = $loinc#LA6698-0 "Missense"

Instance: complex-component-E-1a
InstanceOf: Variant
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $loinc#69548-6 "Genetic variant assessment"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(ExampleLab)
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* specimen = Reference(ExampleSpecimen)
* component[0].code = $loinc#81252-9 "Discrete genetic variant"
* component[=].valueCodeableConcept.coding.version = "???"
* component[=].valueCodeableConcept.coding = $clinvar#38486 "NM_000106.5(CYP2D6):c.1457G>C (p.Ser486Thr)"
* component[+].code = $loinc#51958-7
* component[=].valueCodeableConcept = $refseq#NM_000106.5
* component[+].code = $loinc#48004-6
* component[=].valueCodeableConcept.coding.version = "15.11"
* component[=].valueCodeableConcept.coding = $varnomen#c.1457G>C

Instance: discrete-variant-1a
InstanceOf: Variant
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $loinc#69548-6 "Genetic variant assessment"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(ExampleLab)
* valueCodeableConcept.coding = $loinc#LA9633-4 "Present"
* specimen = Reference(ExampleSpecimen)
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

