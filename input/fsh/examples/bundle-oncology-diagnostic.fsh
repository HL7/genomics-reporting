Instance: bundle-oncology-diagnostic
InstanceOf: Bundle
Usage: #example
* type = #transaction
* entry[0].fullUrl = "urn:uuid:d0b4affa-91d6-46d1-af01-b30d9f16ef6d"
* entry[=].resource = Inline-Instance-for-oncology-diagnostic-1
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"
* entry[+].fullUrl = "urn:uuid:a48256f8-db37-44e0-a0f6-d7af16c7c9ef"
* entry[=].resource = Inline-Instance-for-oncology-diagnostic-2
* entry[=].request.method = #POST
* entry[=].request.url = "Practitioner"
* entry[+].fullUrl = "urn:uuid:a5d6a6a9-4859-480e-85b2-56974fef3b9d"
* entry[=].resource = Inline-Instance-for-oncology-diagnostic-3
* entry[=].request.method = #POST
* entry[=].request.url = "Specimen"
* entry[+].fullUrl = "urn:uuid:40e85eda-4d31-4bd2-a5a0-c39d63f9824f"
* entry[=].resource = Inline-Instance-for-oncology-diagnostic-4
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:16fdd5fc-e665-48af-99e4-48d603f3e12d"
* entry[=].resource = Inline-Instance-for-oncology-diagnostic-5
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:1bf9642d-fd1c-4819-8c5d-44fae4bad524"
* entry[=].resource = Inline-Instance-for-oncology-diagnostic-6
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:ad7a499b-a43b-4cc8-bf46-cac62d9ecae5"
* entry[=].resource = Inline-Instance-for-oncology-diagnostic-7
* entry[=].request.method = #POST
* entry[=].request.url = "DiagnosticReport"

Instance: Inline-Instance-for-oncology-diagnostic-1
InstanceOf: Patient
Usage: #inline
* identifier.value = "1007"
* name.given[0] = "Carrot"
* name.given[+] = "John"
* name.given[+] = "Mr"
* gender = #male
* birthDate = "1962-12-31"
* generalPractitioner = Reference(urn:uuid:a48256f8-db37-44e0-a0f6-d7af16c7c9ef)

Instance: Inline-Instance-for-oncology-diagnostic-2
InstanceOf: Practitioner
Usage: #inline
* identifier.value = "4654765876"
* name.given[0] = "Akerman"
* name.given[+] = "Philip"
* name.given[+] = "Prof"
* address.city = "Castro Valley"
* address.state = "CA"

Instance: Inline-Instance-for-oncology-diagnostic-3
InstanceOf: Specimen
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/specimen"
* identifier.value = "076e1948-2217-11e9-94d8-12e241dc1f66"
* status = #available
* subject = Reference(urn:uuid:d0b4affa-91d6-46d1-af01-b30d9f16ef6d)
* collection.collector = Reference(urn:uuid:a48256f8-db37-44e0-a0f6-d7af16c7c9ef)

Instance: Inline-Instance-for-oncology-diagnostic-4
InstanceOf: Observation
Usage: #inline
* status = #final
* code.text = "Tumor Mutational Burden"
* subject = Reference(urn:uuid:d0b4affa-91d6-46d1-af01-b30d9f16ef6d)
* performer = Reference(urn:uuid:a48256f8-db37-44e0-a0f6-d7af16c7c9ef)
* valueQuantity = 25.0 '1/1000000{Base}' "Mutations/Megabase"
* specimen = Reference(urn:uuid:a5d6a6a9-4859-480e-85b2-56974fef3b9d)

Instance: Inline-Instance-for-oncology-diagnostic-5
InstanceOf: Variant
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $loinc#69548-6 "Genetic variant assessment"
* subject = Reference(urn:uuid:d0b4affa-91d6-46d1-af01-b30d9f16ef6d)
* performer = Reference(urn:uuid:a48256f8-db37-44e0-a0f6-d7af16c7c9ef)
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* method = $loinc#LA26398-0 "Sequencing"
* specimen = Reference(urn:uuid:a5d6a6a9-4859-480e-85b2-56974fef3b9d)
* component[0].code = $loinc#62374-4 "Human reference sequence assembly version"
* component[=].valueCodeableConcept = $loinc#LA14029-5 "GRCh37"
* component[+].code = $loinc#81290-9 "Genomic DNA change (gHGVS)"
* component[=].valueCodeableConcept = $varnomen#NC_000007.13:g.140453136A>T "NC_000007.13:g.140453136A>T"
* component[+].code = $loinc#81252-9 "Discrete genetic variant"
* component[=].valueCodeableConcept = $clinvar#13961 "Clinvar ID 13961"
* component[+].code = $loinc#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept = $varnomen#p.Val600Glu "p.Val600Glu"
* component[+].code = $loinc#48006-1 "Amino acid change type"
* component[=].valueCodeableConcept = $loinc#LA6698-0 "Missense"
* component[+].code = $loinc#48018-6 "Gene studied ID"
* component[=].valueCodeableConcept = $geneId#HGNC:1097 "BRAF"

Instance: Inline-Instance-for-oncology-diagnostic-6
InstanceOf: DiagnosticImplication
Usage: #inline
* extension.url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-artifact"
* extension.valueRelatedArtifact.type = #justification
* extension.valueRelatedArtifact.display = "https://pmkb.weill.cornell.edu/therapies/103"
* status = #final
* category = $observation-category#laboratory
* code = $tbd-codes-cs#diagnostic-implication "Diagnostic Implication"
* subject = Reference(urn:uuid:d0b4affa-91d6-46d1-af01-b30d9f16ef6d)
* performer = Reference(urn:uuid:a48256f8-db37-44e0-a0f6-d7af16c7c9ef)
* method = $loinc#LA26811-2 "Computational analysis"
* specimen = Reference(urn:uuid:a5d6a6a9-4859-480e-85b2-56974fef3b9d)
* derivedFrom = Reference(urn:uuid:16fdd5fc-e665-48af-99e4-48d603f3e12d)
* component[0].code = $loinc#53037-8 "Genetic variation clinical significance [Imp]"
* component[=].valueCodeableConcept = $loinc#LA6668-3 "Pathogenic"
* component[+].code = $loinc#93044-6 "Level of Evidence"
* component[=].valueCodeableConcept = $loinc#LA30200-2 "Very strong evidence pathogenic"
* component[+].code = $loinc#81259-4
* component[=].valueCodeableConcept.text = "melanoma"

Instance: Inline-Instance-for-oncology-diagnostic-7
InstanceOf: GenomicsReport
Usage: #inline
* status = #final
* category = $v2-0074#GE
* code = $loinc#81247-9 "Master HL7 genetic variant reporting panel"
  * text = "Genetic analysis report"
* subject = Reference(urn:uuid:d0b4affa-91d6-46d1-af01-b30d9f16ef6d)
* performer = Reference(urn:uuid:a48256f8-db37-44e0-a0f6-d7af16c7c9ef)
* specimen = Reference(urn:uuid:a5d6a6a9-4859-480e-85b2-56974fef3b9d)
* result[0] = Reference(urn:uuid:16fdd5fc-e665-48af-99e4-48d603f3e12d) "BRAF V600E mutation observed"
* result[+] = Reference(urn:uuid:1bf9642d-fd1c-4819-8c5d-44fae4bad524) "melanoma implicated"
