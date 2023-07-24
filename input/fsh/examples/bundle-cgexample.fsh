Instance: bundle-cgexample
InstanceOf: Bundle
Description: "Example bundle showing a variety of profiles."
Usage: #example
* type = #collection
* entry[0].fullUrl = "http://example.org/fhir/DiagnosticReport/report"
* entry[=].resource = report
* entry[+].fullUrl = "http://example.org/fhir/Patient/ExamplePatient"
* entry[=].resource = ExamplePatient
* entry[+].fullUrl = "http://example.org/fhir/Specimen/ExampleSpecimen"
* entry[=].resource = ExampleSpecimen
* entry[+].fullUrl = "http://example.org/fhir/Organization/ExampleLab"
* entry[=].resource = ExampleLab
* entry[+].fullUrl = "http://example.org/fhir/ServiceRequest/ExampleServiceRequest"
* entry[=].resource = ExampleServiceRequest
* entry[+].fullUrl = "http://example.org/fhir/Observation/overall-interp"
* entry[=].resource = overall-interp
* entry[+].fullUrl = "http://example.org/fhir/Observation/discrete-variant"
* entry[=].resource = discrete-variant
* entry[+].fullUrl = "http://example.org/fhir/Observation/dis-path"
* entry[=].resource = dis-path
* entry[+].fullUrl = "http://example.org/fhir/Observation/complex-variant"
* entry[=].resource = complex-variant
* entry[+].fullUrl = "http://example.org/fhir/Observation/complex-dis-path"
* entry[=].resource = complex-dis-path
* entry[+].fullUrl = "http://example.org/fhir/Observation/complex-component-D"
* entry[=].resource = complex-component-D
* entry[+].fullUrl = "http://example.org/fhir/Observation/complex-component-E"
* entry[=].resource = complex-component-E
* entry[+].fullUrl = "http://example.org/fhir/Observation/haplotype"
* entry[=].resource = haplotype
* entry[+].fullUrl = "http://example.org/fhir/Observation/genotype"
* entry[=].resource = genotype
* entry[+].fullUrl = "http://example.org/fhir/Observation/metab"
* entry[=].resource = metab
* entry[+].fullUrl = "http://example.org/fhir/Observation/efficacy"
* entry[=].resource = efficacy
* entry[+].fullUrl = "http://example.org/fhir/Observation/highrisk"
* entry[=].resource = highrisk
* entry[+].fullUrl = "http://example.org/fhir/Task/usage"
* entry[=].resource = usage

Instance: report
InstanceOf: GenomicsReport
Usage: #inline
* basedOn = Reference(ExampleServiceRequest)
* status = #final
* category[Genetics] = $DIAGNOSTICSERVICE#GE
* code.coding = $LNC#81247-9
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(ExampleLab)
* result[0] = Reference(overall-interp)
* result[+] = Reference(discrete-variant)
* result[+] = Reference(dis-path)
* result[+] = Reference(complex-variant)
* result[+] = Reference(complex-dis-path)
* result[+] = Reference(haplotype)
* result[+] = Reference(genotype)
* result[+] = Reference(metab)
* result[+] = Reference(efficacy)
* presentedForm.contentType = #text/plain
* presentedForm.data = "UHV0IHRoZSByZXBvcnQgdGV4dCBoZXJlIC0gbWltZS1lbmNvZGVk"

Instance: overall-interp
InstanceOf: OverallInterpretation
Usage: #inline
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = $LNC#51968-6
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(ExampleLab)
* valueCodeableConcept.coding[0] = $LNC#LA6576-8 "Positive"
* valueCodeableConcept.coding[+] = $SCT#10828004 "Positive"
* specimen = Reference(ExampleSpecimen)

Instance: discrete-variant
InstanceOf: Variant
Usage: #inline
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = $LNC#69548-6 "Genetic variant assessment"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(ExampleLab)
* valueCodeableConcept.coding = $LNC#LA9633-4 "Present"
* specimen = Reference(ExampleSpecimen)
* component[0].code = $LNC#81252-9 "Discrete genetic variant"
* component[=].valueCodeableConcept.coding.version = "???"
* component[=].valueCodeableConcept.coding = $CLINVAR#30880 "NM_014049.4(ACAD9):c.1249C>T (p.Arg417Cys)"
* component[+].code = $LNC#48018-6
* component[=].valueCodeableConcept.coding = $HGNCID#HGNC:21497 "ACAD9"
* component[+].code = $LNC#51958-7
* component[=].valueCodeableConcept.coding = $NCBIREFSEQ#NM_014049.4
* component[+].code = $LNC#48013-7
* component[=].valueCodeableConcept.coding = $NCBIREFSEQ#NG_017064.1
* component[+].code = $LNC#81290-9
* component[=].valueCodeableConcept.coding = $HGVS#NC_000003.11:g.128625063C>T
* component[+].code = $LNC#81252-9
* component[=].valueCodeableConcept.coding.version = "137"
* component[=].valueCodeableConcept.coding = $SNP#rs368949613
* component[+].code = $LNC#48004-6
* component[=].valueCodeableConcept.coding.version = "15.11"
* component[=].valueCodeableConcept.coding = $HGVS#c.1249C>T
* component[+].code = $LNC#48005-3
* component[=].valueCodeableConcept.coding.version = "15.11"
* component[=].valueCodeableConcept.coding = $HGVS#p.Arg417Cys
* component[+].code = $LNC#48019-4
* component[=].valueCodeableConcept.coding = $LNC#LA6690-7 "Substitution"
* component[+].code = $LNC#69547-8
* component[=].valueString = "C"
* component[+].code = $LNC#81254-5
* component[=].valueRange.low.value = 31731
* component[=].valueRange.high.value = 31731
* component[+].code = $LNC#69551-0
* component[=].valueString = "T"
* component[+].code = $LNC#48001-2
* component[=].valueCodeableConcept.text = "3q21"
* component[+].code = $LNC#48002-0
* component[=].valueCodeableConcept.coding = $LNC#LA6683-2 "Germline"
* component[+].code = $LNC#53034-5
* component[=].valueCodeableConcept.coding = $LNC#LA6706-1 "Heterozygous"
* component[+].code = $LNC#81258-6
* component[=].valueQuantity = 47 '%'
* component[+].code = $LNC#82121-5
* component[=].valueQuantity = 208 '1'
* component[+].code = $LNC#82155-3
* component[=].valueQuantity = 1 '1'
* component[+].code.coding = $LNC#81299-0
* component[=].valueQuantity.value = 0.48
* component[+].code = $LNC#81300-6
* component[=].valueQuantity = 1396929 '1'
* component[+].code = $LNC#81301-4
* component[=].valueRange.low.value = 13200589
* component[=].valueRange.high.value = 15592000
* component[+].code = $LNC#81302-2
* component[=].valueRange.low.value = 14184616
* component[=].valueRange.high.value = 15581544

Instance: dis-path
InstanceOf: DiagnosticImplication
Usage: #inline
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#diagnostic-implication
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(ExampleLab)
* derivedFrom = Reference(discrete-variant)
* component[0].code = $LNC#53037-8
* component[=].valueCodeableConcept.coding = $LNC#LA6668-3 "Pathogenic"
* component[+].code = $LNC#81259-4
* component[=].valueCodeableConcept.coding = $MEDGEN#C1970173 "Acyl-CoA dehydrogenase family, member 9, deficiency of"

Instance: complex-variant
InstanceOf: Variant
Usage: #inline
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = $LNC#69548-6
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(ExampleLab)
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* specimen = Reference(ExampleSpecimen)
* hasMember[0] = Reference(complex-component-D)
* hasMember[+] = Reference(complex-component-E)
* component.code = $LNC#81263-6
* component.valueCodeableConcept = $LNC#LA26218-0 "Haplotype"

Instance: complex-dis-path
InstanceOf: DiagnosticImplication
Usage: #inline
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#diagnostic-implication
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(ExampleLab)
* derivedFrom = Reference(complex-variant)
* component[0].code = $LNC#53037-8
* component[=].valueCodeableConcept.coding = $LNC#LA6668-3 "Pathogenic"
* component[+].code = $LNC#81259-4
* component[=].valueCodeableConcept.coding = $SCT#293498008 "Debrisoquine adverse reaction (disorder)"

Instance: complex-component-D
InstanceOf: Variant
Usage: #inline
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = $LNC#69548-6 "Genetic variant assessment"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(ExampleLab)
* valueCodeableConcept.coding = $LNC#LA9633-4 "Present"
* specimen = Reference(ExampleSpecimen)
* component[0].code = $LNC#81252-9 "Discrete genetic variant"
* component[=].valueCodeableConcept.coding = $CLINVAR#31934 "NM_000106.5(CYP2D6):c.886C>T (p.Arg296Cys)"
* component[+].code = $LNC#51958-7
* component[=].valueCodeableConcept.coding = $NCBIREFSEQ#NM_000106.5
* component[+].code = $LNC#48004-6
* component[=].valueCodeableConcept.coding.version = "15.11"
* component[=].valueCodeableConcept.coding = $HGVS#c.886C>T
* component[+].code = $LNC#48005-3
* component[=].valueCodeableConcept.coding.version = "15.11"
* component[=].valueCodeableConcept.coding = $HGVS#p.Arg296Cys
* component[+].code = $LNC#48019-4
* component[=].valueCodeableConcept.coding = $LNC#LA6690-7 "Substitution"

Instance: complex-component-E
InstanceOf: Variant
Usage: #inline
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = $LNC#69548-6 "Genetic variant assessment"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(ExampleLab)
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* specimen = Reference(ExampleSpecimen)
* component[0].code = $LNC#81252-9 "Discrete genetic variant"
* component[=].valueCodeableConcept.coding.version = "???"
* component[=].valueCodeableConcept.coding = $CLINVAR#38486 "NM_000106.5(CYP2D6):c.1457G>C (p.Ser486Thr)"
* component[+].code = $LNC#51958-7
* component[=].valueCodeableConcept = $NCBIREFSEQ#NM_000106.5
* component[+].code = $LNC#48004-6
* component[=].valueCodeableConcept.coding.version = "15.11"
* component[=].valueCodeableConcept.coding = $HGVS#c.1457G>C

Instance: haplotype
InstanceOf: Haplotype
Usage: #inline
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = $LNC#84414-2
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(ExampleLab)
* valueCodeableConcept.coding = $HLAALLELE#*2
* specimen = Reference(ExampleSpecimen)
* derivedFrom = Reference(discrete-variant)

Instance: genotype
InstanceOf: Genotype
Usage: #inline
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = $LNC#84413-4
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(ExampleLab)
* valueCodeableConcept = $PHARMVAR#"CYP2C9 *2/*5" "CYP2C9 *2/*5"
* specimen = Reference(ExampleSpecimen)
* derivedFrom = Reference(haplotype)
* component[0].code = $LNC#48018-6
* component[=].valueCodeableConcept.coding = $HGNCID#HGNC:2623 "CYP2C9"
* component[+].code = $LNC#48018-6
* component[=].valueCodeableConcept.coding = $HGNCID#HGNC:23663 "VKORC1"

Instance: metab
InstanceOf: TherapeuticImplication
Usage: #inline
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#therapeutic-implication
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(ExampleLab)
* derivedFrom = Reference(genotype)
* component[0].code = $LNC#51963-7
* component[=].valueCodeableConcept.coding = $RXN#11289 "Warfarin"
* component[+].code = TbdCodesCS#therapeutic-implication
* component[=].valueCodeableConcept.coding = $LNC#LA25390-8 "Rapid metabolizer"

Instance: efficacy
InstanceOf: TherapeuticImplication
Usage: #inline
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#therapeutic-implication
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(ExampleLab)
* derivedFrom = Reference(genotype)
* component[0].code = TbdCodesCS#therapeutic-implication
* component[=].valueCodeableConcept.coding = $LNC#LA6676-6 "Resistant"
* component[+].code = $LNC#51963-7
* component[=].valueCodeableConcept.coding = $RXN#11289 "Warfarin"

Instance: highrisk
InstanceOf: TherapeuticImplication
Usage: #inline
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#therapeutic-implication
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(ExampleLab)
* derivedFrom = Reference(genotype)
* component[0].code = TbdCodesCS#therapeutic-implication
* component[=].valueCodeableConcept.coding = $LNC#LA19542-2 "Low risk"
* component[+].code = $LNC#51963-7
* component[=].valueCodeableConcept.coding = $RXN#11289 "Warfarin"

Instance: usage
InstanceOf: MedicationRecommendation
Usage: #inline
* status = #requested
* intent = #proposal
* code.coding = $LNC#LA26423-6 "Increase dose"
* code.text = "May need higher dosage than usual."
* focus = Reference(MedicationStatementWarfarin)
* for = Reference(ExamplePatient)
* requester = Reference(ExampleLab)
* reasonReference = Reference(metab)

