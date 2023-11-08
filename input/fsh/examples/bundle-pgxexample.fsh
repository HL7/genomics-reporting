Instance: bundle-pgxexample
InstanceOf: Bundle
Description: "Example bundle with a PGx report and a variety of observations."
Usage: #example
* type = #transaction
* entry[0].fullUrl = "http://example.org/fhir/DiagnosticReport/pgx-report"
* entry[=].resource = pgx-report
* entry[=].request.method = #POST
* entry[=].request.url = "DiagnosticReport"
* entry[+].fullUrl = "http://example.org/fhir/Patient/ExamplePatient"
* entry[=].resource = ExamplePatient
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"
* entry[+].fullUrl = "http://example.org/fhir/Specimen/ExampleSpecimen"
* entry[=].resource = ExampleSpecimen
* entry[=].request.method = #POST
* entry[=].request.url = "Specimen"
* entry[+].fullUrl = "http://example.org/fhir/Organization/ExampleLab"
* entry[=].resource = ExampleLab
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"
* entry[+].fullUrl = "http://example.org/fhir/ServiceRequest/pgx-request"
* entry[=].resource = pgx-request
* entry[=].request.method = #POST
* entry[=].request.url = "ServiceRequest"
* entry[+].fullUrl = "http://example.org/fhir/Observation/med-impact-pgx-example"
* entry[=].resource = med-impact-pgx-example
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "http://example.org/fhir/Observation/genotype-pgx-example"
* entry[=].resource = genotype-pgx-example
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "http://example.org/fhir/Observation/haplotype-1-pgx-example"
* entry[=].resource = haplotype-1-pgx-example
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "http://example.org/fhir/Observation/haplotype-2-pgx-example"
* entry[=].resource = haplotype-2-pgx-example
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "http://example.org/fhir/Observation/variant-1-pgx-example"
* entry[=].resource = variant-1-pgx-example
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "http://example.org/fhir/Observation/variant-2-pgx-example"
* entry[=].resource = variant-2-pgx-example
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "http://example.org/fhir/MolecularSequence/sequence-1-pgx-example"
* entry[=].resource = sequence-1-pgx-example
* entry[=].request.method = #POST
* entry[=].request.url = "MolecularSequence"
* entry[+].fullUrl = "http://example.org/fhir/MolecularSequence/sequence-2-pgx-example"
* entry[=].resource = sequence-2-pgx-example
* entry[=].request.method = #POST
* entry[=].request.url = "MolecularSequence"
* entry[+].fullUrl = "http://example.org/fhir/Task/med-usage-impact-task-pgx-example"
* entry[=].resource = med-usage-impact-task-pgx-example
* entry[=].request.method = #POST
* entry[=].request.url = "Task"
* entry[+].fullUrl = "http://example.org/fhir/MedicationStatement/current-med-example"
* entry[=].resource = current-med-example
* entry[=].request.method = #POST
* entry[=].request.url = "MedicationStatement"

Instance: pgx-report
InstanceOf: GenomicsReport
Usage: #inline
* extension.url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/recommended-action"
* extension.valueReference = Reference(med-usage-impact-task-pgx-example)
* basedOn = Reference(pgx-request)
* status = #final
* category[Genetics] = $DIAGNOSTICSERVICE#GE
* code = $LNC#81247-9
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2016"
* issued = "2018-03-06T00:00:00-05:00"
* performer = Reference(ExampleLab)
* result[0] = Reference(med-impact-pgx-example) "genetics impact for medication metabolism accessment"
* result[+] = Reference(genotype-pgx-example)
* result[+] = Reference(haplotype-1-pgx-example)
* result[+] = Reference(haplotype-2-pgx-example)
* result[+] = Reference(variant-1-pgx-example)
* result[+] = Reference(variant-2-pgx-example)

Instance: pgx-request
InstanceOf: ServiceRequest
Usage: #inline
* status = #active
* intent = #original-order
* code = $LNC#81247-9
* subject = Reference(ExamplePatient)
* reasonCode.text = "Worried about family planning"

Instance: med-impact-pgx-example
InstanceOf: TherapeuticImplication
Usage: #inline
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#therapeutic-implication "Therapeutic Implication"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2018"
* issued = "2018-03-06T00:00:00-05:00"
* performer = Reference(ExampleLab)
* derivedFrom = Reference(genotype-pgx-example)
* component[0].code = TbdCodesCS#therapeutic-implication
* component[=].valueCodeableConcept = $LNC#LA25390-8 "Rapid metabolizer"
* component[+].code = $LNC#51963-7 "Medication assessed"
* component[=].valueCodeableConcept = $RXN#103 "mercaptopurine"

Instance: genotype-pgx-example
InstanceOf: Genotype
Usage: #inline
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = $LNC#84413-4 "genotype display name"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2018"
* issued = "2018-03-06T00:00:00-05:00"
* performer = Reference(ExampleLab)
* valueCodeableConcept = $PHARMVAR#"CYP2C9 "CYP2C9 *4/*35B"
* specimen = Reference(ExampleSpecimen)
* derivedFrom[0] = Reference(haplotype-1-pgx-example)
* derivedFrom[+] = Reference(haplotype-2-pgx-example)
* component.code = $LNC#48018-6 "Gene studied ID"
* component.valueCodeableConcept = $HGNCID#HGNC:2623 "CYP2C9"

Instance: haplotype-1-pgx-example
InstanceOf: Haplotype
Usage: #inline
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = $LNC#84414-2 "Haplotype Name"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2018"
* issued = "2018-03-06T00:00:00-05:00"
* performer = Reference(ExampleLab)
* valueCodeableConcept = $PHARMVAR#"CYP2C9 "CYP2C9 *35B"
* specimen = Reference(ExampleSpecimen)
* derivedFrom = Reference(variant-1-pgx-example)
* component.code = $LNC#48018-6 "Gene studied ID"
* component.valueCodeableConcept = $HGNCID#HGNC:2623 "CYP2C9"

Instance: haplotype-2-pgx-example
InstanceOf: Haplotype
Usage: #inline
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = $LNC#84414-2 "Haplotype Name"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2018"
* issued = "2018-03-06T00:00:00-05:00"
* performer = Reference(ExampleLab)
* valueCodeableConcept = $PHARMVAR#"CYP2C9 "CYP2C9 *4"
* specimen = Reference(ExampleSpecimen)
* derivedFrom = Reference(variant-2-pgx-example)
* component.code = $LNC#48018-6 "Gene studied ID"
* component.valueCodeableConcept = $HGNCID#HGNC:2623 "CYP2C9"

Instance: variant-1-pgx-example
InstanceOf: Variant
Usage: #inline
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = $LNC#69548-6 "Genetic variant assessment"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2018"
* issued = "2018-03-06T00:00:00-05:00"
* performer = Reference(ExampleLab)
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* specimen = Reference(ExampleSpecimen)
* derivedFrom = Reference(sequence-1-pgx-example)
* component[0].code = $LNC#48018-6 "Gene studied ID"
* component[=].valueCodeableConcept = $HGNCID#HGNC:2623 "CYP2C9"
* component[+].code = $LNC#81252-9
* component[=].valueCodeableConcept = $SNP#rs12345
* component[+].code = $LNC#69547-8 "Ref nucleotide"
* component[=].valueString = "T"
* component[+].code = $LNC#69551-0 "Alt allele"
* component[=].valueString = "G"
* component[+].code = $LNC#81254-5
* component[=].valueRange.low.value = 55227976
* component[=].valueRange.high.value = 55227977

Instance: variant-2-pgx-example
InstanceOf: Variant
Usage: #inline
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = $LNC#69548-6 "Genetic variant assessment"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2018"
* issued = "2018-03-06T00:00:00-05:00"
* performer = Reference(ExampleLab)
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* specimen = Reference(ExampleSpecimen)
* derivedFrom = Reference(sequence-2-pgx-example)
* component[0].code = $LNC#48018-6 "Gene studied ID"
* component[=].valueCodeableConcept = $HGNCID#HGNC:2623 "CYP2C9"
* component[+].code = $LNC#48013-7 "Genomic reference sequence ID"
* component[=].valueCodeableConcept = $NUCCORE#NG_007726.3
* component[+].code = $LNC#81252-9
* component[=].valueCodeableConcept = $SNP#rs233455
* component[+].code = $LNC#69547-8 "Ref nucleotide"
* component[=].valueString = "T"
* component[+].code = $LNC#69551-0 "Alt allele"
* component[=].valueString = "G"
* component[+].code = $LNC#81254-5
* component[=].valueRange.low.value = 55227978
* component[=].valueRange.high.value = 55227979

Instance: sequence-1-pgx-example
InstanceOf: MolecularSequence
Usage: #inline
* type = #dna
* coordinateSystem = 0
* referenceSeq.orientation = #sense
* referenceSeq.referenceSeqId = $NUCCORE#NG-007726.3
* referenceSeq.windowStart = 55227970
* referenceSeq.windowEnd = 55227980

Instance: sequence-2-pgx-example
InstanceOf: MolecularSequence
Usage: #inline
* type = #dna
* coordinateSystem = 0
* referenceSeq.orientation = #sense
* referenceSeq.referenceSeqId = $NUCCORE#NG-007726.3
* referenceSeq.windowStart = 55227970
* referenceSeq.windowEnd = 55227980

Instance: current-med-example
InstanceOf: MedicationStatement
Usage: #inline
* status = #unknown
* medicationCodeableConcept = $RXN#103 "mercaptopurine"
* subject = Reference(ExamplePatient)
