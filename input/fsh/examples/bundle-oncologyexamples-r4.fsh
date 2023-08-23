Instance: bundle-oncologyexamples-r4
InstanceOf: Bundle
Description: "Example bundle with an oncology report with SNVs, TMB, MSI, and therapy matches."
Usage: #example
* type = #transaction
* entry[0].fullUrl = "urn:uuid:d0b4affa-91d6-46d1-af01-b30d9f16ef6d"
* entry[=].resource = Inline-Instance-for-oncologyexamples-r4-1
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"
* entry[+].fullUrl = "urn:uuid:a48256f8-db37-44e0-a0f6-d7af16c7c9ef"
* entry[=].resource = Inline-Instance-for-oncologyexamples-r4-2
* entry[=].request.method = #POST
* entry[=].request.url = "Practitioner"
* entry[+].fullUrl = "urn:uuid:a5d6a6a9-4859-480e-85b2-56974fef3b9d"
* entry[=].resource = Inline-Instance-for-oncologyexamples-r4-3
* entry[=].request.method = #POST
* entry[=].request.url = "Specimen"
* entry[+].fullUrl = "urn:uuid:40e85eda-4d31-4bd2-a5a0-c39d63f9824f"
* entry[=].resource = Inline-Instance-for-oncologyexamples-r4-4
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:64b91716-6431-41bd-8fd4-7ac99bebdee9"
* entry[=].resource = Inline-Instance-for-oncologyexamples-r4-5
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:16fdd5fc-e665-48af-99e4-48d603f3e12d"
* entry[=].resource = Inline-Instance-for-oncologyexamples-r4-6
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:772de7d7-e1bd-4183-bdb5-cea8eda317cd"
* entry[=].resource = Inline-Instance-for-oncologyexamples-r4-7
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:b33eb7ec-d83e-49d2-b0f3-729d024ebe01"
* entry[=].resource = Inline-Instance-for-oncologyexamples-r4-8
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:1bf9642d-fd1c-4819-8c5d-44fae4bad524"
* entry[=].resource = Inline-Instance-for-oncologyexamples-r4-9
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:1301943b-55db-4adf-8355-3635f7268a1b"
* entry[=].resource = Inline-Instance-for-oncologyexamples-r4-10
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:05713d1c-0df5-46d5-a5a9-2085eef56c20"
* entry[=].resource = Inline-Instance-for-oncologyexamples-r4-11
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:294f1401-e2eb-4df1-b6d2-09e1b7a6eca4"
* entry[=].resource = Inline-Instance-for-oncologyexamples-r4-12
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:294f1401-e2eb-4df1-b6d2-09e1b7a6ecb6"
* entry[=].resource = Inline-Instance-for-oncologyexamples-r4-14
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:ad7a499b-a43b-4cc8-bf46-cac62d9ecae5"
* entry[=].resource = Inline-Instance-for-oncologyexamples-r4-13
* entry[=].request.method = #POST
* entry[=].request.url = "DiagnosticReport"

Instance: Inline-Instance-for-oncologyexamples-r4-1
InstanceOf: Patient
Usage: #inline
* identifier.value = "1007"
* name.given[0] = "Carrot"
* name.given[+] = "John"
* name.given[+] = "Mr"
* gender = #male
* birthDate = "1962-12-31"
* generalPractitioner = Reference(urn:uuid:a48256f8-db37-44e0-a0f6-d7af16c7c9ef)

Instance: Inline-Instance-for-oncologyexamples-r4-10
InstanceOf: TherapeuticImplication
Usage: #inline
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#therapeutic-implication "Therapeutic Implication"
* subject = Reference(urn:uuid:d0b4affa-91d6-46d1-af01-b30d9f16ef6d)
* performer = Reference(urn:uuid:a48256f8-db37-44e0-a0f6-d7af16c7c9ef)
* method = $LNC#LA26811-2 "Computational analysis"
* specimen = Reference(urn:uuid:a5d6a6a9-4859-480e-85b2-56974fef3b9d)
* derivedFrom = Reference(urn:uuid:16fdd5fc-e665-48af-99e4-48d603f3e12d)
* component[0].code = TbdCodesCS#therapeutic-implication
* component[=].valueCodeableConcept = $LNC#LA6677-4 "Responsive"
* component[+].code = $LNC#93044-6 "Level of Evidence"
* component[=].valueCodeableConcept = $LNC#LA30200-2 "Very strong evidence pathogenic"
* component[+].code = $LNC#81259-4
* component[=].valueCodeableConcept.text = "Polycythemia vera (PV)"
* component[+].code = $LNC#51963-7 "Medication assessed"
* component[=].valueCodeableConcept.text = "AT9283"

Instance: Inline-Instance-for-oncologyexamples-r4-11
InstanceOf: TherapeuticImplication
Usage: #inline
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#therapeutic-implication "Therapeutic Implication"
* subject = Reference(urn:uuid:d0b4affa-91d6-46d1-af01-b30d9f16ef6d)
* performer = Reference(urn:uuid:a48256f8-db37-44e0-a0f6-d7af16c7c9ef)
* method = $LNC#LA26811-2 "Computational analysis"
* specimen = Reference(urn:uuid:a5d6a6a9-4859-480e-85b2-56974fef3b9d)
* derivedFrom = Reference(urn:uuid:16fdd5fc-e665-48af-99e4-48d603f3e12d)
* component[0].code = TbdCodesCS#therapeutic-implication
* component[=].valueCodeableConcept = $LNC#LA6677-4 "Responsive"
* component[+].code = $LNC#93044-6 "Level of Evidence"
* component[=].valueCodeableConcept = $LNC#LA30200-2 "Very strong evidence pathogenic"
* component[+].code = $LNC#81259-4
* component[=].valueCodeableConcept.text = "Polycythemia vera (PV)"
* component[+].code = $LNC#51963-7 "Medication assessed"
* component[=].valueCodeableConcept.text = "SNX-5422"

Instance: Inline-Instance-for-oncologyexamples-r4-12
InstanceOf: TherapeuticImplication
Usage: #inline
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#therapeutic-implication "Therapeutic Implication"
* subject = Reference(urn:uuid:d0b4affa-91d6-46d1-af01-b30d9f16ef6d)
* performer = Reference(urn:uuid:a48256f8-db37-44e0-a0f6-d7af16c7c9ef)
* method = $LNC#LA26811-2 "Computational analysis"
* specimen = Reference(urn:uuid:a5d6a6a9-4859-480e-85b2-56974fef3b9d)
* derivedFrom = Reference(urn:uuid:16fdd5fc-e665-48af-99e4-48d603f3e12d)
* component[0].code = TbdCodesCS#therapeutic-implication
* component[=].valueCodeableConcept = $LNC#LA6677-4 "Responsive"
* component[+].code = $LNC#93044-6 "Level of Evidence"
* component[=].valueCodeableConcept = $LNC#LA30200-2 "Very strong evidence pathogenic"
* component[+].code = $LNC#81259-4
* component[=].valueCodeableConcept.text = "Polycythemia vera (PV)"
* component[+].code = $LNC#51963-7 "Medication assessed"
* component[=].valueCodeableConcept.text = "TG02"

Instance: Inline-Instance-for-oncologyexamples-r4-13
InstanceOf: GenomicsReport
Usage: #inline
* status = #final
* category[Genetics] = $DIAGNOSTICSERVICE#GE
* code = $LNC#81247-9 "Master HL7 genetic variant reporting panel"
  * text = "Genetic analysis report"
* subject = Reference(urn:uuid:d0b4affa-91d6-46d1-af01-b30d9f16ef6d)
* performer = Reference(urn:uuid:a48256f8-db37-44e0-a0f6-d7af16c7c9ef)
* specimen = Reference(urn:uuid:a5d6a6a9-4859-480e-85b2-56974fef3b9d)
* result[0] = Reference(urn:uuid:16fdd5fc-e665-48af-99e4-48d603f3e12d) "SNV analysis for JAK2 variant"
* result[+] = Reference(urn:uuid:772de7d7-e1bd-4183-bdb5-cea8eda317cd) "SNV analysis for KDR variant"
* result[+] = Reference(urn:uuid:b33eb7ec-d83e-49d2-b0f3-729d024ebe01) "SNV analysis for ERBB4 variant"
* result[+] = Reference(urn:uuid:40e85eda-4d31-4bd2-a5a0-c39d63f9824f) "TMB value analysis"
* result[+] = Reference(urn:uuid:64b91716-6431-41bd-8fd4-7ac99bebdee9) "MSI status analysis"
* result[+] = Reference(urn:uuid:1bf9642d-fd1c-4819-8c5d-44fae4bad524) "Therapy match result 1"
* result[+] = Reference(urn:uuid:1301943b-55db-4adf-8355-3635f7268a1b) "Therapy match result 2"
* result[+] = Reference(urn:uuid:05713d1c-0df5-46d5-a5a9-2085eef56c20) "Therapy match result 3"
* result[+] = Reference(urn:uuid:294f1401-e2eb-4df1-b6d2-09e1b7a6eca4) "Therapy match result 4"

Instance: Inline-Instance-for-oncologyexamples-r4-2
InstanceOf: Practitioner
Usage: #inline
* identifier.value = "4654765876"
* name.given[0] = "Akerman"
* name.given[+] = "Philip"
* name.given[+] = "Prof"
* address.city = "Castro Valley"
* address.state = "CA"

Instance: Inline-Instance-for-oncologyexamples-r4-3
InstanceOf: Specimen
Usage: #inline
* identifier.value = "076e1948-2217-11e9-94d8-12e241dc1f66"
* status = #available
* subject = Reference(urn:uuid:d0b4affa-91d6-46d1-af01-b30d9f16ef6d)
* collection.collector = Reference(urn:uuid:a48256f8-db37-44e0-a0f6-d7af16c7c9ef)

Instance: Inline-Instance-for-oncologyexamples-r4-4
InstanceOf: MolecularBiomarker
Usage: #inline
* status = #final
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/molecular-biomarker"
* category[0] = $OBSCAT#laboratory
* category[1] = $DIAGNOSTICSERVICE#GE
* code = $LNC#94076-7 "Mutations/Megabase [# Ratio] in Tumor"
* subject = Reference(urn:uuid:d0b4affa-91d6-46d1-af01-b30d9f16ef6d)
* performer = Reference(urn:uuid:a48256f8-db37-44e0-a0f6-d7af16c7c9ef)
* valueQuantity = 25.0 '1/1000000{Base}' "somatic variants per megabase of sequenced DNA"
* specimen = Reference(urn:uuid:a5d6a6a9-4859-480e-85b2-56974fef3b9d)
* component[biomarker-category].code = TbdCodesCS#biomarker-category
* component[biomarker-category].valueCodeableConcept.coding = MolecularBiomarkerOntologyCS#molgen "molecular sequence adjacent category"

Instance: Inline-Instance-for-oncologyexamples-r4-5
InstanceOf: MolecularBiomarker
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/molecular-biomarker"
* status = #final "final"
* category[0] = $OBSCAT#laboratory
* category[1] = $DIAGNOSTICSERVICE#GE
* code = $LNC#81695-9 "Microsatellite instability [Interpretation] in Cancer specimen Qualitative"
* subject = Reference(urn:uuid:d0b4affa-91d6-46d1-af01-b30d9f16ef6d)
* performer = Reference(urn:uuid:a48256f8-db37-44e0-a0f6-d7af16c7c9ef)
* valueCodeableConcept = $LNC#LA14122-8 "Stable"
* specimen = Reference(urn:uuid:a5d6a6a9-4859-480e-85b2-56974fef3b9d)
* component[biomarker-category].code = TbdCodesCS#biomarker-category
* component[biomarker-category].valueCodeableConcept.coding = MolecularBiomarkerOntologyCS#molgen "molecular sequence adjacent category"

Instance: Inline-Instance-for-oncologyexamples-r4-6
InstanceOf: Variant
Usage: #inline
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = $LNC#69548-6 "Genetic variant assessment"
* subject = Reference(urn:uuid:d0b4affa-91d6-46d1-af01-b30d9f16ef6d)
* performer = Reference(urn:uuid:a48256f8-db37-44e0-a0f6-d7af16c7c9ef)
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* method = $LNC#LA26398-0 "Sequencing"
* specimen = Reference(urn:uuid:a5d6a6a9-4859-480e-85b2-56974fef3b9d)
* component[0].code = $LNC#81290-9 "Genomic DNA change (gHGVS)"
* component[=].valueCodeableConcept = $HGVS#9:g.5073770G>T "9:g.5073770G>T"
* component[+].code = $LNC#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept = $HGVS#p.Val617Phe "p.Val617Phe"
* component[+].code = $LNC#48002-0 "Genomic source class"
* component[=].valueCodeableConcept = $LNC#LA6683-2 "Germline"
* component[+].code = $LNC#48018-6 "Gene studied ID"
* component[=].valueCodeableConcept.coding.system = "http://www.genenames.org/geneId"
* component[=].valueCodeableConcept.coding.display = "JAK2"

Instance: Inline-Instance-for-oncologyexamples-r4-7
InstanceOf: Variant
Usage: #inline
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = $LNC#69548-6 "Genetic variant assessment"
* subject = Reference(urn:uuid:d0b4affa-91d6-46d1-af01-b30d9f16ef6d)
* performer = Reference(urn:uuid:a48256f8-db37-44e0-a0f6-d7af16c7c9ef)
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* method = $LNC#LA26398-0 "Sequencing"
* specimen = Reference(urn:uuid:a5d6a6a9-4859-480e-85b2-56974fef3b9d)
* component[0].code = $LNC#81290-9 "Genomic DNA change (gHGVS)"
* component[=].valueCodeableConcept = $HGVS#4:g.55972974T>A "4:g.55972974T>A"
* component[+].code = $LNC#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept = $HGVS#p.Gln472His "p.Gln472His"
* component[+].code = $LNC#48002-0 "Genomic source class"
* component[=].valueCodeableConcept = $LNC#LA6683-2 "Germline"
* component[+].code = $LNC#48018-6 "Gene studied ID"
* component[=].valueCodeableConcept.coding.system = "http://www.genenames.org/geneId"
* component[=].valueCodeableConcept.coding.display = "KDR"

Instance: Inline-Instance-for-oncologyexamples-r4-8
InstanceOf: Variant
Usage: #inline
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = $LNC#69548-6 "Genetic variant assessment"
* subject = Reference(urn:uuid:d0b4affa-91d6-46d1-af01-b30d9f16ef6d)
* performer = Reference(urn:uuid:a48256f8-db37-44e0-a0f6-d7af16c7c9ef)
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* method = $LNC#LA26398-0 "Sequencing"
* specimen = Reference(urn:uuid:a5d6a6a9-4859-480e-85b2-56974fef3b9d)
* component[0].code = $LNC#81290-9 "Genomic DNA change (gHGVS)"
* component[=].valueCodeableConcept = $HGVS#2:g.212578380del "2:g.212578380del"
* component[+].code = $LNC#48002-0 "Genomic source class"
* component[=].valueCodeableConcept = $LNC#LA6683-2 "Germline"
* component[+].code = $LNC#48018-6 "Gene studied ID"
* component[=].valueCodeableConcept.coding.system = "http://www.genenames.org/geneId"
* component[=].valueCodeableConcept.coding.display = "ERBB4"

Instance: Inline-Instance-for-oncologyexamples-r4-9
InstanceOf: TherapeuticImplication
Usage: #inline
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#therapeutic-implication "Therapeutic Implication"
* subject = Reference(urn:uuid:d0b4affa-91d6-46d1-af01-b30d9f16ef6d)
* performer = Reference(urn:uuid:a48256f8-db37-44e0-a0f6-d7af16c7c9ef)
* method = $LNC#LA26811-2 "Computational analysis"
* specimen = Reference(urn:uuid:a5d6a6a9-4859-480e-85b2-56974fef3b9d)
* derivedFrom = Reference(urn:uuid:16fdd5fc-e665-48af-99e4-48d603f3e12d)
* component[0].code = TbdCodesCS#therapeutic-implication
* component[=].valueCodeableConcept = $LNC#LA6677-4 "Responsive"
* component[+].code = $LNC#93044-6 "Level of Evidence"
* component[=].valueCodeableConcept = $LNC#LA30200-2 "Very strong evidence pathogenic"
* component[+].code = $LNC#81259-4
* component[=].valueCodeableConcept.text = "Polycythemia vera (PV)"
* component[+].code = $LNC#51963-7 "Medication assessed"
* component[=].valueCodeableConcept.text = "Ruxolitinib"


Instance: Inline-Instance-for-oncologyexamples-r4-14
InstanceOf: TherapeuticImplication
Usage: #inline
* extension.url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/therapy-assessed"
* extension.valueReference = Reference(PlanDefRuxolitinib)
* contained[+] = PlanDefRuxolitinib
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#therapeutic-implication "Therapeutic Implication"
* subject = Reference(urn:uuid:d0b4affa-91d6-46d1-af01-b30d9f16ef6d)
* derivedFrom = Reference(urn:uuid:16fdd5fc-e665-48af-99e4-48d603f3e12d)

Instance: PlanDefRuxolitinib
InstanceOf: PlanDefinition
Usage: #inline
Description: "Plan Definition including Ruxolitinib (for example only)"
* status = #draft
* name = "RuxolitinibPlan"
* description = """
This is not a fully defined resource, just here as a place holder to show how a PlanDefinition could be packaged.
"""

/*
NOTE - Planned to use this ResearchStudy as an example of the 'therapy-assesed' extension above, but the publisher (as of Mar 19 2022)
       kept complaining that ResearchStudy was not a valid resource when building the example.

Instance: ResearchStudyNCT02928978
InstanceOf: ResearchStudy
Usage: #inline
Description: "Ruxolitinib for Premalignant Breast Disease (TBCRC 042)"
* title = "Ruxolitinib for Premalignant Breast Disease (TBCRC 042)"
* identifier[+].system = "http://clinicaltrials.gov"
* identifier[=].value = "NCT02928978"
* status = #active
* description = """
This study is evaluating how ruxolitinib affects premalignant breast cells. One half of the study participants will receive ruxolitinib for approximately 15 days, and the other half will receive a placebo (sugar pill) for approximately 15 days. Once study participants have completed their ruxolitinib or placebo, participants will undergo surgery to remove the premalignant breast tissue.
"""
*/