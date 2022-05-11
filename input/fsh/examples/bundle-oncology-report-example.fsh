Instance: bundle-oncology-report-example
InstanceOf: Bundle
Description: "Example oncology bundle including report, variants, and other resources."
Usage: #example
* type = #transaction
* entry[0].fullUrl = "urn:uuid:fc16d84c-8584-4e1d-baae-64e2f95bfe17"
* entry[=].resource = Inline-Instance-for-oncology-report-example-1
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"
* entry[=].request.ifNoneExist = "identifier=http://molit.eu/fhir/genomics/NamingSystem/organization|CEGAT"
* entry[+].fullUrl = "urn:uuid:f7a438e6-f484-453d-97e8-aa4d51008648"
* entry[=].resource = Inline-Instance-for-oncology-report-example-2
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"
* entry[=].request.ifNoneExist = "identifier=http://molit.eu/fhir/genomics/NamingSystem/cegat/patID|11111"
* entry[+].fullUrl = "urn:uuid:a2041c83-b73d-4fc8-9466-4ba4a92da516"
* entry[=].resource = Inline-Instance-for-oncology-report-example-3
* entry[=].request.method = #POST
* entry[=].request.url = "Specimen"
* entry[=].request.ifNoneExist = "identifier=http://molit.eu/fhir/genomics/NamingSystem/cegat/tissueID|UNKNOWN"
* entry[+].fullUrl = "urn:uuid:dac358c3-403a-4dbb-b478-4259aed882ae"
* entry[=].resource = Inline-Instance-for-oncology-report-example-4
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:1d773d66-cec7-44a2-b92a-46d00adeae00"
* entry[=].resource = Inline-Instance-for-oncology-report-example-5
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:842d9ab9-d940-4f0c-adf9-e5c528f5c0e5"
* entry[=].resource = Inline-Instance-for-oncology-report-example-6
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:9a9f9a4a-52e3-4738-bd0b-a25374bbf358"
* entry[=].resource = Inline-Instance-for-oncology-report-example-7
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:58828523-8893-45fc-973b-16290366c5e5"
* entry[=].resource = Inline-Instance-for-oncology-report-example-8
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:2c28b23f-3e9f-4c03-8c8f-0e76bc5dc9c2"
* entry[=].resource = Inline-Instance-for-oncology-report-example-9
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:41bebbe5-e06f-4867-aa22-7c06db69dbd1"
* entry[=].resource = Inline-Instance-for-oncology-report-example-10
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:1642f190-e2c6-4999-8040-b9b2a70618bf"
* entry[=].resource = Inline-Instance-for-oncology-report-example-11
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:c3587931-242f-4129-93f9-be24500c8f29"
* entry[=].resource = Inline-Instance-for-oncology-report-example-12
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:41695fc0-1fd5-4cc8-95e6-82b2848a5cb6"
* entry[=].resource = Inline-Instance-for-oncology-report-example-13
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:58eb14f6-4059-4168-86a9-155ae61d30e2"
* entry[=].resource = Inline-Instance-for-oncology-report-example-14
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:1a71e80f-b044-4a91-80e1-eadbe5a53dca"
* entry[=].resource = Inline-Instance-for-oncology-report-example-15
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:6a80003f-822d-489e-8286-1f1dcba56dfa"
* entry[=].resource = Inline-Instance-for-oncology-report-example-16
* entry[=].request.method = #POST
* entry[=].request.url = "DiagnosticReport"

Instance: Inline-Instance-for-oncology-report-example-1
InstanceOf: Organization
Usage: #inline
* identifier.system = "http://molit.eu/fhir/genomics/NamingSystem/organization"
* identifier.value = "CEGAT"
* name = "CEGAT"

Instance: Inline-Instance-for-oncology-report-example-10
InstanceOf: Variant
Usage: #inline
* status = #final
* category = $OBSCAT#laboratory
* code = $LNC#69548-6 "Genetic variant assessment"
* subject = Reference(urn:uuid:f7a438e6-f484-453d-97e8-aa4d51008648)
* performer = Reference(urn:uuid:fc16d84c-8584-4e1d-baae-64e2f95bfe17)
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* method = $LNC#LA26398-0 "Sequencing"
* specimen.identifier.system = "http://molit.eu/fhir/genomics/NamingSystem/cegat/tissueID"
* specimen.identifier.value = "UNKNOWN"
* component[0].code = $LNC#48002-0 "Genomic source class"
* component[=].valueCodeableConcept = $LNC#LA6684-0 "Somatic"
* component[+].code = $LNC#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $HGNCID#HGNC:1787 "CDKN2A"
* component[+].code = $LNC#62374-4 "Human reference sequence assembly version"
* component[=].valueCodeableConcept = $LNC#LA14029-5 "GRCh37"
* component[+].code = $LNC#48004-6 "DNA change (c.HGVS)"
* component[=].valueCodeableConcept = $HGVS#c.9_32del "c.9_32del"
* component[+].code = $LNC#48019-4 "DNA change type"
* component[=].valueCodeableConcept = $SEQONT#SO:0000159 "deletion"
* component[+].code = $LNC#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept = $HGVS#p.A4_P11del "p.A4_P11del"
* component[+].code = TbdCodesCS#molecular-consequence "Molecular Consequence"
* component[=].valueCodeableConcept = $SEQONT#SO:0001650 "inframe_variant"
* component[+].code = $LNC#51958-7 "Transcript reference sequence [ID]"
* component[=].valueCodeableConcept = $NCBIREFSEQ#NM_000077.4 "NM_000077.4"
* component[+].code = $LNC#69547-8 "Genomic ref allele [ID]"
* component[=].valueString = "AGGCTCCATGCTGCTCCCCGCCGCC"
* component[+].code = $LNC#81258-6 "Sample VAF"
* component[=].valueQuantity = 0.0536 '1' "relative frequency of a particular allele in the specimen"
* component[+].code = $LNC#82121-5 "Allelic read depth"
* component[=].valueQuantity = 112 '{reads}/{base}' "reads per base pair"

Instance: Inline-Instance-for-oncology-report-example-11
InstanceOf: Variant
Usage: #inline
* status = #final
* category = $OBSCAT#laboratory
* code = $LNC#69548-6 "Genetic variant assessment"
* subject = Reference(urn:uuid:f7a438e6-f484-453d-97e8-aa4d51008648)
* performer = Reference(urn:uuid:fc16d84c-8584-4e1d-baae-64e2f95bfe17)
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* method = $LNC#LA26398-0 "Sequencing"
* specimen.identifier.system = "http://molit.eu/fhir/genomics/NamingSystem/cegat/tissueID"
* specimen.identifier.value = "UNKNOWN"
* component[0].code = $LNC#48002-0 "Genomic source class"
* component[=].valueCodeableConcept = $LNC#LA6684-0 "Somatic"
* component[+].code = $LNC#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $HGNCID#HGNC:9949 "RECQL4"
* component[+].code = $LNC#62374-4 "Human reference sequence assembly version"
* component[=].valueCodeableConcept = $LNC#LA14029-5 "GRCh37"
* component[+].code = $LNC#48004-6 "DNA change (c.HGVS)"
* component[=].valueCodeableConcept = $HGVS#c.2086C>T "c.2086C>T"
* component[+].code = $LNC#48019-4 "DNA change type"
* component[=].valueCodeableConcept = $SEQONT#SO:1000002 "substitution"
* component[+].code = $LNC#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept = $HGVS#p.R696C "p.R696C"
* component[+].code = TbdCodesCS#molecular-consequence "Molecular Consequence"
* component[=].valueCodeableConcept = $SEQONT#SO:0001583 "missense_variant"
* component[+].code = $LNC#51958-7 "Transcript reference sequence [ID]"
* component[=].valueCodeableConcept = $NCBIREFSEQ#NM_004260.3 "NM_004260.3"
* component[+].code = $LNC#69547-8 "Genomic ref allele [ID]"
* component[=].valueString = "G"
* component[+].code = $LNC#81258-6 "Sample VAF"
* component[=].valueQuantity = 0.2568 '1' "relative frequency of a particular allele in the specimen"
* component[+].code = $LNC#82121-5 "Allelic read depth"
* component[=].valueQuantity = 148 '{reads}/{base}' "reads per base pair"

Instance: Inline-Instance-for-oncology-report-example-12
InstanceOf: Variant
Usage: #inline
* status = #final
* category = $OBSCAT#laboratory
* code = $LNC#69548-6 "Genetic variant assessment"
* subject = Reference(urn:uuid:f7a438e6-f484-453d-97e8-aa4d51008648)
* performer = Reference(urn:uuid:fc16d84c-8584-4e1d-baae-64e2f95bfe17)
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* method = $LNC#LA26398-0 "Sequencing"
* specimen.identifier.system = "http://molit.eu/fhir/genomics/NamingSystem/cegat/tissueID"
* specimen.identifier.value = "UNKNOWN"
* component[0].code = $LNC#48002-0 "Genomic source class"
* component[=].valueCodeableConcept = $LNC#LA6684-0 "Somatic"
* component[+].code = $LNC#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $HGNCID#HGNC:10483 "RYR1"
* component[+].code = $LNC#62374-4 "Human reference sequence assembly version"
* component[=].valueCodeableConcept = $LNC#LA14029-5 "GRCh37"
* component[+].code = $LNC#48004-6 "DNA change (c.HGVS)"
* component[=].valueCodeableConcept = $HGVS#c.4964G>A "c.4964G>A"
* component[+].code = $LNC#48019-4 "DNA change type"
* component[=].valueCodeableConcept = $SEQONT#SO:1000002 "substitution"
* component[+].code = $LNC#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept = $HGVS#p.R1655H "p.R1655H"
* component[+].code = TbdCodesCS#molecular-consequence "Molecular Consequence"
* component[=].valueCodeableConcept = $SEQONT#SO:0001583 "missense_variant"
* component[+].code = $LNC#51958-7 "Transcript reference sequence [ID]"
* component[=].valueCodeableConcept = $NCBIREFSEQ#NM_000540.2 "NM_000540.2"
* component[+].code = $LNC#69547-8 "Genomic ref allele [ID]"
* component[=].valueString = "G"
* component[+].code = $LNC#81258-6 "Sample VAF"
* component[=].valueQuantity = 0.2151 '1' "relative frequency of a particular allele in the specimen"
* component[+].code = $LNC#82121-5 "Allelic read depth"
* component[=].valueQuantity = 93 '{reads}/{base}' "reads per base pair"

Instance: Inline-Instance-for-oncology-report-example-13
InstanceOf: Variant
Usage: #inline
* status = #final
* category = $OBSCAT#laboratory
* code = $LNC#69548-6 "Genetic variant assessment"
* subject = Reference(urn:uuid:f7a438e6-f484-453d-97e8-aa4d51008648)
* performer = Reference(urn:uuid:fc16d84c-8584-4e1d-baae-64e2f95bfe17)
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* method = $LNC#LA26398-0 "Sequencing"
* specimen.identifier.system = "http://molit.eu/fhir/genomics/NamingSystem/cegat/tissueID"
* specimen.identifier.value = "UNKNOWN"
* component[0].code = $LNC#48002-0 "Genomic source class"
* component[=].valueCodeableConcept = $LNC#LA6684-0 "Somatic"
* component[+].code = $LNC#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $HGNCID#HGNC:10519 "SACS"
* component[+].code = $LNC#62374-4 "Human reference sequence assembly version"
* component[=].valueCodeableConcept = $LNC#LA14029-5 "GRCh37"
* component[+].code = $LNC#48004-6 "DNA change (c.HGVS)"
* component[=].valueCodeableConcept = $HGVS#c.12118G>A "c.12118G>A"
* component[+].code = $LNC#48019-4 "DNA change type"
* component[=].valueCodeableConcept = $SEQONT#SO:1000002 "substitution"
* component[+].code = $LNC#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept = $HGVS#p.A4040T "p.A4040T"
* component[+].code = TbdCodesCS#molecular-consequence "Molecular Consequence"
* component[=].valueCodeableConcept = $SEQONT#SO:0001583 "missense_variant"
* component[+].code = $LNC#51958-7 "Transcript reference sequence [ID]"
* component[=].valueCodeableConcept = $NCBIREFSEQ#NM_014363.5 "NM_014363.5"
* component[+].code = $LNC#69547-8 "Genomic ref allele [ID]"
* component[=].valueString = "C"
* component[+].code = $LNC#81258-6 "Sample VAF"
* component[=].valueQuantity = 0.3333 '1' "relative frequency of a particular allele in the specimen"
* component[+].code = $LNC#82121-5 "Allelic read depth"
* component[=].valueQuantity = 60 '{reads}/{base}' "reads per base pair"

Instance: Inline-Instance-for-oncology-report-example-14
InstanceOf: Variant
Usage: #inline
* status = #final
* category = $OBSCAT#laboratory
* code = $LNC#69548-6 "Genetic variant assessment"
* subject = Reference(urn:uuid:f7a438e6-f484-453d-97e8-aa4d51008648)
* performer = Reference(urn:uuid:fc16d84c-8584-4e1d-baae-64e2f95bfe17)
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* method = $LNC#LA26398-0 "Sequencing"
* specimen.identifier.system = "http://molit.eu/fhir/genomics/NamingSystem/cegat/tissueID"
* specimen.identifier.value = "UNKNOWN"
* component[0].code = $LNC#48002-0 "Genomic source class"
* component[=].valueCodeableConcept = $LNC#LA6684-0 "Somatic"
* component[+].code = $LNC#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $HGNCID#HGNC:11086 "SLIT2"
* component[+].code = $LNC#62374-4 "Human reference sequence assembly version"
* component[=].valueCodeableConcept = $LNC#LA14029-5 "GRCh37"
* component[+].code = $LNC#48004-6 "DNA change (c.HGVS)"
* component[=].valueCodeableConcept = $HGVS#c.1290C>A "c.1290C>A"
* component[+].code = $LNC#48019-4 "DNA change type"
* component[=].valueCodeableConcept = $SEQONT#SO:1000002 "substitution"
* component[+].code = $LNC#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept = $HGVS#p.N430K "p.N430K"
* component[+].code = TbdCodesCS#molecular-consequence "Molecular Consequence"
* component[=].valueCodeableConcept = $SEQONT#SO:0001583 "missense_variant"
* component[+].code = $LNC#51958-7 "Transcript reference sequence [ID]"
* component[=].valueCodeableConcept = $NCBIREFSEQ#NM_004787.3 "NM_004787.3"
* component[+].code = $LNC#69547-8 "Genomic ref allele [ID]"
* component[=].valueString = "C"
* component[+].code = $LNC#81258-6 "Sample VAF"
* component[=].valueQuantity = 0.2642 '1' "relative frequency of a particular allele in the specimen"
* component[+].code = $LNC#82121-5 "Allelic read depth"
* component[=].valueQuantity = 53 '{reads}/{base}' "reads per base pair"

Instance: Inline-Instance-for-oncology-report-example-15
InstanceOf: Variant
Usage: #inline
* status = #final
* category = $OBSCAT#laboratory
* code = $LNC#69548-6 "Genetic variant assessment"
* subject = Reference(urn:uuid:f7a438e6-f484-453d-97e8-aa4d51008648)
* performer = Reference(urn:uuid:fc16d84c-8584-4e1d-baae-64e2f95bfe17)
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* method = $LNC#LA26398-0 "Sequencing"
* specimen.identifier.system = "http://molit.eu/fhir/genomics/NamingSystem/cegat/tissueID"
* specimen.identifier.value = "UNKNOWN"
* component[0].code = $LNC#48002-0 "Genomic source class"
* component[=].valueCodeableConcept = $LNC#LA6684-0 "Somatic"
* component[+].code = $LNC#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $HGNCID#HGNC:11100 "SMARCA4"
* component[+].code = $LNC#62374-4 "Human reference sequence assembly version"
* component[=].valueCodeableConcept = $LNC#LA14029-5 "GRCh37"
* component[+].code = $LNC#48004-6 "DNA change (c.HGVS)"
* component[=].valueCodeableConcept = $HGVS#c.2372C>T "c.2372C>T"
* component[+].code = $LNC#48019-4 "DNA change type"
* component[=].valueCodeableConcept = $SEQONT#SO:1000002 "substitution"
* component[+].code = $LNC#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept = $HGVS#p.A791V "p.A791V"
* component[+].code = TbdCodesCS#molecular-consequence "Molecular Consequence"
* component[=].valueCodeableConcept = $SEQONT#SO:0001583 "missense_variant"
* component[+].code = $LNC#51958-7 "Transcript reference sequence [ID]"
* component[=].valueCodeableConcept = $NCBIREFSEQ#NM_001128849.1 "NM_001128849.1"
* component[+].code = $LNC#69547-8 "Genomic ref allele [ID]"
* component[=].valueString = "C"
* component[+].code = $LNC#81258-6 "Sample VAF"
* component[=].valueQuantity = 0.1938 '1' "relative frequency of a particular allele in the specimen"
* component[+].code = $LNC#82121-5 "Allelic read depth"
* component[=].valueQuantity = 160 '{reads}/{base}' "reads per base pair"

Instance: Inline-Instance-for-oncology-report-example-16
InstanceOf: DiagnosticReport
Usage: #inline
* identifier.system = "http://molit.eu/fhir/genomics/NamingSystem/cegat/reportID"
* identifier.value = "42867"
* status = #final
* category = $DIAGNOSTICSERVICE#GE "Genetics"
* code = $LNC#81247-9 "Master HL7 genetic variant reporting panel"
* subject = Reference(urn:uuid:f7a438e6-f484-453d-97e8-aa4d51008648)
* issued = "2019-09-15T11:35:05.722-04:00"
* performer = Reference(urn:uuid:fc16d84c-8584-4e1d-baae-64e2f95bfe17)
* specimen = Reference(urn:uuid:a2041c83-b73d-4fc8-9466-4ba4a92da516)
* result[0] = Reference(urn:uuid:dac358c3-403a-4dbb-b478-4259aed882ae)
* result[+] = Reference(urn:uuid:1d773d66-cec7-44a2-b92a-46d00adeae00)
* result[+] = Reference(urn:uuid:842d9ab9-d940-4f0c-adf9-e5c528f5c0e5)
* result[+] = Reference(urn:uuid:9a9f9a4a-52e3-4738-bd0b-a25374bbf358)
* result[+] = Reference(urn:uuid:58828523-8893-45fc-973b-16290366c5e5)
* result[+] = Reference(urn:uuid:2c28b23f-3e9f-4c03-8c8f-0e76bc5dc9c2)
* result[+] = Reference(urn:uuid:41bebbe5-e06f-4867-aa22-7c06db69dbd1)
* result[+] = Reference(urn:uuid:1642f190-e2c6-4999-8040-b9b2a70618bf)
* result[+] = Reference(urn:uuid:c3587931-242f-4129-93f9-be24500c8f29)
* result[+] = Reference(urn:uuid:41695fc0-1fd5-4cc8-95e6-82b2848a5cb6)
* result[+] = Reference(urn:uuid:58eb14f6-4059-4168-86a9-155ae61d30e2)
* result[+] = Reference(urn:uuid:1a71e80f-b044-4a91-80e1-eadbe5a53dca)

Instance: Inline-Instance-for-oncology-report-example-2
InstanceOf: Patient
Usage: #inline
* identifier.system = "http://molit.eu/fhir/genomics/NamingSystem/cegat/patID"
* identifier.value = "11111"

Instance: Inline-Instance-for-oncology-report-example-3
InstanceOf: Specimen
Usage: #inline
* identifier.system = "http://molit.eu/fhir/genomics/NamingSystem/cegat/tissueID"
* identifier.value = "UNKNOWN"
* type = $SPECIMENTYPE#TUMOR "Tumor"
* subject = Reference(urn:uuid:f7a438e6-f484-453d-97e8-aa4d51008648)
* collection.method.text = "Biopsy"
* collection.bodySite = $ICD10CM#C16.0

Instance: Inline-Instance-for-oncology-report-example-4
InstanceOf: Variant
Usage: #inline
* status = #final
* category = $OBSCAT#laboratory
* code = $LNC#69548-6 "Genetic variant assessment"
* subject = Reference(urn:uuid:f7a438e6-f484-453d-97e8-aa4d51008648)
* performer = Reference(urn:uuid:fc16d84c-8584-4e1d-baae-64e2f95bfe17)
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* method = $LNC#LA26398-0 "Sequencing"
* specimen.identifier.system = "http://molit.eu/fhir/genomics/NamingSystem/cegat/tissueID"
* specimen.identifier.value = "UNKNOWN"
* component[0].code = $LNC#48002-0 "Genomic source class"
* component[=].valueCodeableConcept = $LNC#LA6684-0 "Somatic"
* component[+].code = $LNC#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $HGNCID#HGNC:8975 "PIK3CA"
* component[+].code = $LNC#62374-4 "Human reference sequence assembly version"
* component[=].valueCodeableConcept = $LNC#LA14029-5 "GRCh37"
* component[+].code = $LNC#48004-6 "DNA change (c.HGVS)"
* component[=].valueCodeableConcept = $HGVS#c.3140A>G "c.3140A>G"
* component[+].code = $LNC#48019-4 "DNA change type"
* component[=].valueCodeableConcept = $SEQONT#SO:1000002 "substitution"
* component[+].code = $LNC#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept = $HGVS#p.H1047R "p.H1047R"
* component[+].code = TbdCodesCS#molecular-consequence "Molecular Consequence"
* component[=].valueCodeableConcept = $SEQONT#SO:0001583 "missense_variant"
* component[+].code = $LNC#51958-7 "Transcript reference sequence [ID]"
* component[=].valueCodeableConcept = $NCBIREFSEQ#NM_006218.3 "NM_006218.3"
* component[+].code = $LNC#69547-8 "Genomic ref allele [ID]"
* component[=].valueString = "A"
* component[+].code = $LNC#81258-6 "Sample VAF"
* component[=].valueQuantity = 0.2188 '1' "relative frequency of a particular allele in the specimen"
* component[+].code = $LNC#82121-5 "Allelic read depth"
* component[=].valueQuantity = 64 '{reads}/{base}' "reads per base pair"

Instance: Inline-Instance-for-oncology-report-example-5
InstanceOf: Variant
Usage: #inline
* status = #final
* category = $OBSCAT#laboratory
* code = $LNC#69548-6 "Genetic variant assessment"
* subject = Reference(urn:uuid:f7a438e6-f484-453d-97e8-aa4d51008648)
* performer = Reference(urn:uuid:fc16d84c-8584-4e1d-baae-64e2f95bfe17)
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* method = $LNC#LA26398-0 "Sequencing"
* specimen.identifier.system = "http://molit.eu/fhir/genomics/NamingSystem/cegat/tissueID"
* specimen.identifier.value = "UNKNOWN"
* component[0].code = $LNC#48002-0 "Genomic source class"
* component[=].valueCodeableConcept = $LNC#LA6684-0 "Somatic"
* component[+].code = $LNC#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $HGNCID#HGNC:7989 "NRAS"
* component[+].code = $LNC#62374-4 "Human reference sequence assembly version"
* component[=].valueCodeableConcept = $LNC#LA14029-5 "GRCh37"
* component[+].code = $LNC#48004-6 "DNA change (c.HGVS)"
* component[=].valueCodeableConcept = $HGVS#c.34G>T "c.34G>T"
* component[+].code = $LNC#48019-4 "DNA change type"
* component[=].valueCodeableConcept = $SEQONT#SO:1000002 "substitution"
* component[+].code = $LNC#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept = $HGVS#p.G12C "p.G12C"
* component[+].code = TbdCodesCS#molecular-consequence "Molecular Consequence"
* component[=].valueCodeableConcept = $SEQONT#SO:0001583 "missense_variant"
* component[+].code = $LNC#51958-7 "Transcript reference sequence [ID]"
* component[=].valueCodeableConcept = $NCBIREFSEQ#NM_002524.4 "NM_002524.4"
* component[+].code = $LNC#69547-8 "Genomic ref allele [ID]"
* component[=].valueString = "C"
* component[+].code = $LNC#81258-6 "Sample VAF"
* component[=].valueQuantity = 0.1793 '1' "relative frequency of a particular allele in the specimen"
* component[+].code = $LNC#82121-5 "Allelic read depth"
* component[=].valueQuantity = 145 '{reads}/{base}' "reads per base pair"

Instance: Inline-Instance-for-oncology-report-example-6
InstanceOf: Variant
Usage: #inline
* status = #final
* category = $OBSCAT#laboratory
* code = $LNC#69548-6 "Genetic variant assessment"
* subject = Reference(urn:uuid:f7a438e6-f484-453d-97e8-aa4d51008648)
* performer = Reference(urn:uuid:fc16d84c-8584-4e1d-baae-64e2f95bfe17)
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* method = $LNC#LA26398-0 "Sequencing"
* specimen.identifier.system = "http://molit.eu/fhir/genomics/NamingSystem/cegat/tissueID"
* specimen.identifier.value = "UNKNOWN"
* component[0].code = $LNC#48002-0 "Genomic source class"
* component[=].valueCodeableConcept = $LNC#LA6684-0 "Somatic"
* component[+].code = $LNC#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $HGNCID#HGNC:16712 "FBXW7"
* component[+].code = $LNC#62374-4 "Human reference sequence assembly version"
* component[=].valueCodeableConcept = $LNC#LA14029-5 "GRCh37"
* component[+].code = $LNC#48004-6 "DNA change (c.HGVS)"
* component[=].valueCodeableConcept = $HGVS#c.1394G>A "c.1394G>A"
* component[+].code = $LNC#48019-4 "DNA change type"
* component[=].valueCodeableConcept = $SEQONT#SO:1000002 "substitution"
* component[+].code = $LNC#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept = $HGVS#p.R465H "p.R465H"
* component[+].code = TbdCodesCS#molecular-consequence "Molecular Consequence"
* component[=].valueCodeableConcept = $SEQONT#SO:0001583 "missense_variant"
* component[+].code = $LNC#51958-7 "Transcript reference sequence [ID]"
* component[=].valueCodeableConcept = $NCBIREFSEQ#NM_001349798.2 "NM_001349798.2"
* component[+].code = $LNC#69547-8 "Genomic ref allele [ID]"
* component[=].valueString = "C"
* component[+].code = $LNC#81258-6 "Sample VAF"
* component[=].valueQuantity = 0.1053 '1' "relative frequency of a particular allele in the specimen"
* component[+].code = $LNC#82121-5 "Allelic read depth"
* component[=].valueQuantity = 57 '{reads}/{base}' "reads per base pair"

Instance: Inline-Instance-for-oncology-report-example-7
InstanceOf: Variant
Usage: #inline
* status = #final
* category = $OBSCAT#laboratory
* code = $LNC#69548-6 "Genetic variant assessment"
* subject = Reference(urn:uuid:f7a438e6-f484-453d-97e8-aa4d51008648)
* performer = Reference(urn:uuid:fc16d84c-8584-4e1d-baae-64e2f95bfe17)
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* method = $LNC#LA26398-0 "Sequencing"
* specimen.identifier.system = "http://molit.eu/fhir/genomics/NamingSystem/cegat/tissueID"
* specimen.identifier.value = "UNKNOWN"
* component[0].code = $LNC#48002-0 "Genomic source class"
* component[=].valueCodeableConcept = $LNC#LA6684-0 "Somatic"
* component[+].code = $LNC#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $HGNCID#HGNC:7133 "KMT2D"
* component[+].code = $LNC#62374-4 "Human reference sequence assembly version"
* component[=].valueCodeableConcept = $LNC#LA14029-5 "GRCh37"
* component[+].code = $LNC#48004-6 "DNA change (c.HGVS)"
* component[=].valueCodeableConcept = $HGVS#c.7900_7901delCA "c.7900_7901delCA"
* component[+].code = $LNC#48019-4 "DNA change type"
* component[=].valueCodeableConcept = $SEQONT#SO:0000159 "deletion"
* component[+].code = $LNC#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept = $HGVS#p.Q2634Afs*20 "p.Q2634Afs*20"
* component[+].code = TbdCodesCS#molecular-consequence "Molecular Consequence"
* component[=].valueCodeableConcept = $SEQONT#SO:0000865 "frameshift"
* component[+].code = $LNC#51958-7 "Transcript reference sequence [ID]"
* component[=].valueCodeableConcept = $NCBIREFSEQ#NM_003482.3 "NM_003482.3"
* component[+].code = $LNC#69547-8 "Genomic ref allele [ID]"
* component[=].valueString = "CTG"
* component[+].code = $LNC#81258-6 "Sample VAF"
* component[=].valueQuantity = 0.188 '1' "relative frequency of a particular allele in the specimen"
* component[+].code = $LNC#82121-5 "Allelic read depth"
* component[=].valueQuantity = 117 '{reads}/{base}' "reads per base pair"

Instance: Inline-Instance-for-oncology-report-example-8
InstanceOf: Variant
Usage: #inline
* status = #final
* category = $OBSCAT#laboratory
* code = $LNC#69548-6 "Genetic variant assessment"
* subject = Reference(urn:uuid:f7a438e6-f484-453d-97e8-aa4d51008648)
* performer = Reference(urn:uuid:fc16d84c-8584-4e1d-baae-64e2f95bfe17)
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* method = $LNC#LA26398-0 "Sequencing"
* specimen.identifier.system = "http://molit.eu/fhir/genomics/NamingSystem/cegat/tissueID"
* specimen.identifier.value = "UNKNOWN"
* component[0].code = $LNC#48002-0 "Genomic source class"
* component[=].valueCodeableConcept = $LNC#LA6684-0 "Somatic"
* component[+].code = $LNC#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $HGNCID#HGNC:8975 "PIK3CA"
* component[+].code = $LNC#62374-4 "Human reference sequence assembly version"
* component[=].valueCodeableConcept = $LNC#LA14029-5 "GRCh37"
* component[+].code = $LNC#48004-6 "DNA change (c.HGVS)"
* component[=].valueCodeableConcept = $HGVS#c.333G>T "c.333G>T"
* component[+].code = $LNC#48019-4 "DNA change type"
* component[=].valueCodeableConcept = $SEQONT#SO:1000002 "substitution"
* component[+].code = $LNC#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept = $HGVS#p.K111N "p.K111N"
* component[+].code = TbdCodesCS#molecular-consequence "Molecular Consequence"
* component[=].valueCodeableConcept = $SEQONT#SO:0001583 "missense_variant"
* component[+].code = $LNC#51958-7 "Transcript reference sequence [ID]"
* component[=].valueCodeableConcept = $NCBIREFSEQ#NM_006218.3 "NM_006218.3"
* component[+].code = $LNC#69547-8 "Genomic ref allele [ID]"
* component[=].valueString = "G"
* component[+].code = $LNC#81258-6 "Sample VAF"
* component[=].valueQuantity = 0.1471 '1' "relative frequency of a particular allele in the specimen"
* component[+].code = $LNC#82121-5 "Allelic read depth"
* component[=].valueQuantity = 68 '{reads}/{base}' "reads per base pair"

Instance: Inline-Instance-for-oncology-report-example-9
InstanceOf: Variant
Usage: #inline
* status = #final
* category = $OBSCAT#laboratory
* code = $LNC#69548-6 "Genetic variant assessment"
* subject = Reference(urn:uuid:f7a438e6-f484-453d-97e8-aa4d51008648)
* performer = Reference(urn:uuid:fc16d84c-8584-4e1d-baae-64e2f95bfe17)
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* method = $LNC#LA26398-0 "Sequencing"
* specimen.identifier.system = "http://molit.eu/fhir/genomics/NamingSystem/cegat/tissueID"
* specimen.identifier.value = "UNKNOWN"
* component[0].code = $LNC#48002-0 "Genomic source class"
* component[=].valueCodeableConcept = $LNC#LA6684-0 "Somatic"
* component[+].code = $LNC#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $HGNCID#HGNC:6126 "IRS2"
* component[+].code = $LNC#62374-4 "Human reference sequence assembly version"
* component[=].valueCodeableConcept = $LNC#LA14029-5 "GRCh37"
* component[+].code = $LNC#48004-6 "DNA change (c.HGVS)"
* component[=].valueCodeableConcept = $HGVS#c.3960C>T "c.3960C>T"
* component[+].code = $LNC#48019-4 "DNA change type"
* component[=].valueCodeableConcept = $SEQONT#SO:1000002 "substitution"
* component[+].code = $LNC#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept = $HGVS#p.= "p.="
* component[+].code = TbdCodesCS#molecular-consequence "Molecular Consequence"
* component[=].valueCodeableConcept = $SEQONT#SO:0001819 "synonymous_variant"
* component[+].code = $LNC#51958-7 "Transcript reference sequence [ID]"
* component[=].valueCodeableConcept = $NCBIREFSEQ#NM_003749.2 "NM_003749.2"
* component[+].code = $LNC#69547-8 "Genomic ref allele [ID]"
* component[=].valueString = "G"
* component[+].code = $LNC#81258-6 "Sample VAF"
* component[=].valueQuantity = 0.1343 '1' "relative frequency of a particular allele in the specimen"
* component[+].code = $LNC#82121-5 "Allelic read depth"
* component[=].valueQuantity = 134 '{reads}/{base}' "reads per base pair"
