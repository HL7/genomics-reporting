Instance: bundle-cgexample-withGrouping
InstanceOf: Bundle
Description: "Example bundle showing a variety of profiles, including how groupings of Observations might be delivered."
Usage: #example
* type = #collection
* entry[+].fullUrl = "http://example.org/fhir/DiagnosticReport/report-withGrouping"
* entry[=].resource = report-withGrouping
* entry[+].fullUrl = "http://example.org/fhir/Patient/ExamplePatient"
* entry[=].resource = ExamplePatient
* entry[+].fullUrl = "http://example.org/fhir/Specimen/ExampleSpecimen"
* entry[=].resource = ExampleSpecimen
* entry[+].fullUrl = "http://example.org/fhir/Organization/ExampleLab"
* entry[=].resource = ExampleLab
* entry[+].fullUrl = "http://example.org/fhir/ServiceRequest/ExampleServiceRequest"
* entry[=].resource = ExampleServiceRequest
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
InstanceOf: GenomicReport
Usage: #inline
* basedOn = Reference(ExampleServiceRequest)
* status = #final
* category[Genetics] = $DIAGNOSTICSERVICE#GE
* code.coding = $LNC#51969-4 "Genetic analysis report"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(ExampleLab)
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
* conclusionCode[+] = $LNC#LA6576-8 "Positive"
* conclusionCode[+] = $SCT#10828004 "Positive"

Instance: dis-path-1a
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
* derivedFrom = Reference(discrete-variant-1a)
* component[+].code = $LNC#53037-8
* component[=].valueCodeableConcept.coding = $LNC#LA6668-3 "Pathogenic"
* component[+].code = $LNC#81259-4
* component[=].valueCodeableConcept.coding = $MONDO#MONDO:0012624 "acyl-CoA dehydrogenase 9 deficiency"

Instance: complex-variant-1a
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
* hasMember[+] = Reference(complex-component-D-1a)
* hasMember[+] = Reference(complex-component-E-1a)
/* extra slice
* component.code = $LNC#81263-6
* component.valueCodeableConcept = $LNC#LA26218-0 "Haplotype"
*/

Instance: complex-dis-path-1a
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
* derivedFrom = Reference(complex-variant-1a)
* component[+].code = $LNC#53037-8
* component[=].valueCodeableConcept.coding = $LNC#LA6668-3 "Pathogenic"
* component[+].code = $LNC#81259-4
* component[=].valueCodeableConcept.coding = $SCT#293498008 "Debrisoquine adverse reaction (disorder)"

Instance: pharmPanel-1a
InstanceOf: Observation
Usage: #inline
* extension.url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/recommended-action"
* extension.valueReference = Reference(usage-1a)
* status = #final
* category[+].coding = $OBSCAT#laboratory
* category[+].coding = $DIAGNOSTICSERVICE#GE
* code = $NCIT#C43359 "Group"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(ExampleLab)
* hasMember[+] = Reference(haplotype-1a)
* hasMember[+] = Reference(genotype-1a)
* hasMember[+] = Reference(metab-1a)
* hasMember[+] = Reference(efficacy-1a)

Instance: haplotype-1a
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
* valueCodeableConcept.coding = $HLAALLELE#HLA-A*02:01
* specimen = Reference(ExampleSpecimen)
* derivedFrom = Reference(discrete-variant-1a)

Instance: genotype-1a
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
* valueCodeableConcept.coding[0] = $PHARMVAR#PV00538 "CYP2C9*2"
* valueCodeableConcept.coding[+] = $PHARMVAR#PV00541 "CYP2C9*5"
* valueCodeableConcept.text = "CYP2C9 *2/*5"
* specimen = Reference(ExampleSpecimen)
* derivedFrom = Reference(haplotype-1a)
* component[+].code = $LNC#48018-6
* component[=].valueCodeableConcept.coding = $HGNCID#HGNC:2623 "CYP2C9"
* component[+].code = $LNC#48018-6
* component[=].valueCodeableConcept.coding = $HGNCID#HGNC:23663 "VKORC1"

Instance: metab-1a
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
* derivedFrom = Reference(genotype-1a)
* component[+].code = $LNC#51963-7
* component[=].valueCodeableConcept.coding = $RXN#11289 "Warfarin"
* component[+].code = TbdCodesCS#therapeutic-implication
* component[=].valueCodeableConcept.coding = $LNC#LA25390-8 "Rapid metabolizer"

Instance: efficacy-1a
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
* derivedFrom = Reference(genotype-1a)
* component[+].code = TbdCodesCS#therapeutic-implication
* component[=].valueCodeableConcept.coding = $LNC#LA6676-6 "Resistant"
* component[+].code = $LNC#51963-7
* component[=].valueCodeableConcept.coding = $RXN#11289 "Warfarin"

Instance: highrisk-1a
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
* derivedFrom = Reference(genotype-1a)
* component[+].code = TbdCodesCS#therapeutic-implication
* component[=].valueCodeableConcept.coding = $LNC#LA19542-2 "Low risk"
* component[+].code = $LNC#51963-7
* component[=].valueCodeableConcept.coding = $RXN#11289 "Warfarin"

Instance: usage-1a
InstanceOf: MedicationRecommendation
Usage: #inline
* status = #requested
* intent = #proposal
* code.coding = $LNC#LA26423-6 "Increase dose"
* code.text = "May need higher dosage than usual."
* focus = Reference(MedicationStatementWarfarin)
* for = Reference(ExamplePatient)
* requester = Reference(ExampleLab)
* reason.reference = Reference(metab-1a)

Instance: complex-component-D-1a
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
* component[+].code = $LNC#81252-9 "Discrete genetic variant"
* component[=].valueCodeableConcept.coding = $CLINVAR#31934 "NM_000106.5(CYP2D6):c.886C>T (p.Arg296Cys)"
* component[+].code = $LNC#51958-7
* component[=].valueCodeableConcept.coding = $NCBIREFSEQ#NM_000106.5
* component[+].code = $LNC#48004-6
* component[=].valueCodeableConcept.coding = $HGVS#NM_000106.5:c.886C>T
* component[+].code = $LNC#48005-3
* component[=].valueCodeableConcept.coding = $HGVS#NP_000097.3:p.Arg296Cys
* component[+].code = $LNC#48019-4
* component[=].valueCodeableConcept.coding = $LNC#LA6690-7 "Substitution"

Instance: complex-component-E-1a
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
* component[+].code = $LNC#81252-9 "Discrete genetic variant"
* component[=].valueCodeableConcept.coding = $CLINVAR#38486 "NM_000106.5(CYP2D6):c.1457G>C (p.Ser486Thr)"
* component[+].code = $LNC#51958-7
* component[=].valueCodeableConcept = $NCBIREFSEQ#NM_000106.5
* component[+].code = $LNC#48004-6
* component[=].valueCodeableConcept.coding = $HGVS#NM_000106.5:c.1457G>C

Instance: discrete-variant-1a
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
* component[+].code = $LNC#81252-9 "Discrete genetic variant"
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
* component[=].valueCodeableConcept.coding = $SNP#rs368949613
* component[+].code = $LNC#48004-6
* component[=].valueCodeableConcept.coding = $HGVS#NM_014049.4:c.1249C>T
* component[+].code = $LNC#48005-3
* component[=].valueCodeableConcept.coding = $HGVS#NP_054768.2:p.Arg417Cys
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
* component[+].code = $LNC#81301-4
* component[=].valueRange.low.value = 13200589
* component[=].valueRange.high.value = 15592000
* component[+].code = $LNC#81302-2
* component[=].valueRange.low.value = 14184616
* component[=].valueRange.high.value = 15581544
/* - extra slices
* component[+].code = $LNC#81299-0
* component[=].valueQuantity.value = 0.48
* component[+].code = $LNC#81300-6
* component[=].valueQuantity = 1396929 '1'
*/
