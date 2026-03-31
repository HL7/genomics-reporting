// ============================================================
// Myriad Prequel® Prenatal Screen with AMPLIFY™ — POSITIVE
// Patient:  Jane Miller | DOB: 1997-11-11 | Report: 2024-06-17
// Accession: FAKERQIHPT13S | Barcode: 31200020477415
// Trisomy 13 POSITIVE (PPV 34.07%); Trisomy 18 / 21 NEGATIVE
// Method: cfDNA sequencing (NIPS v4.0; GRCh37/hg19)
// Lab:    Myriad Women's Health, Inc. | CLIA: 05D1102604
// ============================================================
//
// Bundle resources (15 entries):
//   1.  Patient                 — Jane Miller
//   2.  Practitioner            — Dr. Paul Smith (ordering)
//   3.  Organization            — University Medical Center (ordering)
//   4.  Organization            — Myriad Women's Health, Inc. (lab)
//   5.  ServiceRequest          — Prequel NIPS order
//   6.  Specimen                — Streck Cell-Free DNA Blood Tube
//   7.  MolecularBiomarker      — Fetal fraction 25.0%
//   8.  Variant                 — Chromosome 13 POSITIVE (copy number 3)
//   9.  Variant                 — Chromosome 18 NEGATIVE (copy number 2)
//   10. Variant                 — Chromosome 21 NEGATIVE (copy number 2)
//   11. DiagnosticImplication   — Trisomy 13 / Patau Syndrome (POSITIVE; PPV 34.07%)
//   12. DiagnosticImplication   — Trisomy 18 / Edwards Syndrome (NEGATIVE — euploid)
//   13. DiagnosticImplication   — Trisomy 21 / Down Syndrome (NEGATIVE — euploid)
//   14. FollowupRecommendation  — Genetic counseling
//   15. GenomicReport           — Summary diagnostic report
// ============================================================

Instance: bundle-prequel-prenatal-trisomy13
InstanceOf: Bundle
Description: "FHIR Bundle for a Myriad Prequel Prenatal Screen with AMPLIFY (cfDNA NIPS). Overall result POSITIVE: increased risk for Trisomy 13 (Patau Syndrome; PPV 34.07%). Chromosomes 18 and 21 are NEGATIVE (residual risk < 0.01% each). Fetal fraction 25.0%. Genetic counseling recommended."
Usage: #example
* type = #transaction

// 1. Patient
* entry[+].fullUrl = "urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000001"
* entry[=].resource = prequel-patient-jane-miller
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"

// 2. Practitioner (ordering)
* entry[+].fullUrl = "urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000002"
* entry[=].resource = prequel-practitioner-paul-smith
* entry[=].request.method = #POST
* entry[=].request.url = "Practitioner"

// 3. Organization – University Medical Center (ordering)
* entry[+].fullUrl = "urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000003"
* entry[=].resource = prequel-org-umc
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"

// 4. Organization – Myriad Women's Health (lab)
* entry[+].fullUrl = "urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000004"
* entry[=].resource = prequel-org-myriad
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"

// 5. ServiceRequest
* entry[+].fullUrl = "urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000005"
* entry[=].resource = prequel-service-request
* entry[=].request.method = #POST
* entry[=].request.url = "ServiceRequest"

// 6. Specimen
* entry[+].fullUrl = "urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000006"
* entry[=].resource = prequel-specimen-cfdna
* entry[=].request.method = #POST
* entry[=].request.url = "Specimen"

// 7. MolecularBiomarker – Fetal fraction
* entry[+].fullUrl = "urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000007"
* entry[=].resource = prequel-biomarker-fetal-fraction
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// 8. Variant – Chromosome 13 POSITIVE
* entry[+].fullUrl = "urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000008"
* entry[=].resource = prequel-variant-chr13-trisomy
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// 9. Variant – Chromosome 18 NEGATIVE
* entry[+].fullUrl = "urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000009"
* entry[=].resource = prequel-variant-chr18-negative
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// 10. Variant – Chromosome 21 NEGATIVE
* entry[+].fullUrl = "urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000010"
* entry[=].resource = prequel-variant-chr21-negative
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// 11. DiagnosticImplication – Trisomy 13 POSITIVE (Patau Syndrome)
* entry[+].fullUrl = "urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000011"
* entry[=].resource = prequel-dx-implication-patau
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// 12. DiagnosticImplication – Trisomy 18 NEGATIVE (Edwards Syndrome — euploid)
* entry[+].fullUrl = "urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000014"
* entry[=].resource = prequel-dx-implication-edwards-negative
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// 13. DiagnosticImplication – Trisomy 21 NEGATIVE (Down Syndrome — euploid)
* entry[+].fullUrl = "urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000015"
* entry[=].resource = prequel-dx-implication-down-negative
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// 14. FollowupRecommendation – Genetic counseling
* entry[+].fullUrl = "urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000012"
* entry[=].resource = prequel-task-genetic-counseling
* entry[=].request.method = #POST
* entry[=].request.url = "Task"

// 15. GenomicReport
* entry[+].fullUrl = "urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000013"
* entry[=].resource = prequel-genomic-report
* entry[=].request.method = #POST
* entry[=].request.url = "DiagnosticReport"


// ============================================================
// 1. PATIENT
// ============================================================
Instance: prequel-patient-jane-miller
InstanceOf: Patient
Usage: #inline
* identifier[+].system = "http://example.org/mrn"
* identifier[=].value = "FAKERQIHPT13S"
* name[+].family = "Miller"
* name[=].given[+] = "Jane"
* birthDate = "1997-11-11"
* gender = #female


// ============================================================
// 2. ORDERING PRACTITIONER
// ============================================================
Instance: prequel-practitioner-paul-smith
InstanceOf: Practitioner
Usage: #inline
* identifier[+].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[=].value = "4253506008"
* name[+].family = "Smith"
* name[=].given[+] = "Paul"
* name[=].prefix[+] = "Dr."


// ============================================================
// 3. ORDERING ORGANIZATION
// ============================================================
Instance: prequel-org-umc
InstanceOf: Organization
Usage: #inline
* name = "University Medical Center"
// In R6, Organization.address and .telecom moved under Organization.contact
* contact[+].address.line[+] = "123 Main Street"
* contact[=].address.city = "City"
* contact[=].address.state = "CA"
* contact[=].address.postalCode = "10231"
* contact[=].telecom[+].system = #phone
* contact[=].telecom[=].value = "(800) 555-1212"
* contact[=].telecom[+].system = #fax
* contact[=].telecom[=].value = "(800) 555-1212"


// ============================================================
// 4. LABORATORY ORGANIZATION
// ============================================================
Instance: prequel-org-myriad
InstanceOf: Organization
Usage: #inline
* name = "Myriad Women's Health, Inc."
// CLIA ID encoded as a CLIA identifier
* identifier[+].system = "urn:oid:2.16.840.1.113883.4.7"
* identifier[=].value = "05D1102604"
// In R6, Organization.address and .telecom moved under Organization.contact
* contact[+].address.line[+] = "180 Kimball Way"
* contact[=].address.city = "South San Francisco"
* contact[=].address.state = "CA"
* contact[=].address.postalCode = "94080"
* contact[=].telecom[+].system = #phone
* contact[=].telecom[=].value = "(888) 268-6795"
* contact[=].telecom[+].system = #url
* contact[=].telecom[=].value = "http://www.myriadwomenshealth.com"


// ============================================================
// 5. SERVICE REQUEST
// ============================================================
Instance: prequel-service-request
InstanceOf: ServiceRequest
Usage: #inline
* status = #completed
* intent = #order
// LOINC 24364-2 — using canonical LOINC display name per validator
* code.concept.coding[+].system = "http://loinc.org"
* code.concept.coding[=].code = #24364-2
* code.concept.coding[=].display = "Obstetric 1996 panel - Serum and Blood"
* code.concept.text = "Myriad Prequel Prenatal Screen with AMPLIFY technology — Chromosomes 13, 18, 21 aneuploidy screening (NIPS v4.0)"
* subject = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000001)
* requester = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000002)
* performer[+] = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000004)
* specimen[+] = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000006)
* authoredOn = "2024-06-06"
* note[+].text = "Singleton pregnancy; gestational age 8 weeks 0 days; ovum donor: N/A; patient height 5ft 6in; patient weight 120lbs; NT 1mm (ultrasound 2024-06-06); CRL 10cm; expected due date 2025-01-16"


// ============================================================
// 6. SPECIMEN — Streck Cell-Free DNA Blood Tube
// ============================================================
Instance: prequel-specimen-cfdna
InstanceOf: Specimen
Usage: #inline
* identifier[+].system = "http://example.org/barcode"
* identifier[=].value = "31200020477415"
// Streck Cell-Free DNA Blood Tube is a cfDNA blood collection tube
* type.coding[+] = $SPECIMENTYPE#BLDV "Blood venous"
* type.text = "Streck Cell-Free DNA Blood Tube (cell-free DNA)"
* subject = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000001)
* status = #available
* receivedTime = "2024-06-09"
* collection.collectedDateTime = "2024-06-06"
* collection.collector = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000002)


// ============================================================
// 7. MOLECULAR BIOMARKER — Fetal Fraction (25.0%)
// The fetal fraction (percentage of cfDNA in maternal blood that
// is fetal in origin) is a quality and analytical metric used
// in the NIPS algorithm; reported here as a MolecularBiomarker.
// ============================================================
Instance: prequel-biomarker-fetal-fraction
InstanceOf: MolecularBiomarker
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/molecular-biomarker"
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[mbCategory] = TbdCodesCS#biomarker-category
* category[geCategory] = $DIAGNOSTICSERVICE#GE
// LOINC 75605-6: Cell-free DNA.fetal/Cell-free DNA.total in Plasma cell-free DNA by Dosage of chromosome-specific cfDNA
* code.coding[+].system = "http://loinc.org"
* code.coding[=].code = #75605-6
* code.coding[=].display = "Cell-free DNA.fetal/Cell-free DNA.total in Plasma cell-free DNA by Dosage of chromosome-specific cfDNA"
* subject = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000001)
* effectiveDateTime = "2024-06-16"
* performer[+] = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000004)
* valueQuantity.value = 25.0
* valueQuantity.unit = "%"
* valueQuantity.system = $UCUM
* valueQuantity.code = #%
* specimen = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000006)
* note[+].text = "Fetal fraction is one component of the algorithm used and is combined with other quality metrics to determine the aneuploidy screening result."
* component[biomarker-category].valueCodeableConcept.text = "Cell-free fetal DNA fraction"


// ============================================================
// 8. VARIANT — Chromosome 13 POSITIVE (Trisomy 13 detected)
// Copy number 3; genomic source: fetal; PPV 34.07%
// Result: "Aneuploidy suspected (borderline value)"
// ============================================================
Instance: prequel-variant-chr13-trisomy
InstanceOf: Variant
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* subject = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000001)
* effectiveDateTime = "2024-06-16"
* performer[+] = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000004)
// valueCodeableConcept: Present (aneuploidy detected)
// Screening result interpretation belongs in DiagnosticImplication, not on the Variant
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* method.coding[+] = $LNC#LA26398-0 "Sequencing"
* method.text = "Sequencing with fetal chromosome analysis (NIPS v4.0); Genome Reference Consortium Human Build 37 (GRCh37)/hg19"
* specimen = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000006)
// -- GenomicFinding components --
* component[chromosome-identifier].valueCodeableConcept = $LNC#LA21266-4 "Chromosome 13"
* component[reference-sequence-assembly].valueCodeableConcept = $LNC#LA14029-5 "GRCh37"
// -- Variant components --
// Genomic source class: Fetal (LA10429-1)
* component[genomic-source-class].valueCodeableConcept = $LNC#LA10429-1 "Fetal"
// Copy number: 3 (trisomy); unit = '1' (dimensionless count) per UCUM
* component[copy-number].valueQuantity.value = 3
* component[copy-number].valueQuantity.system = $UCUM
* component[copy-number].valueQuantity.code = #1
// Sequence Ontology: copy_number_gain (SO:0001742)
* component[coding-change-type].valueCodeableConcept.coding[+].system = "http://www.sequenceontology.org"
* component[coding-change-type].valueCodeableConcept.coding[=].code = #SO:0001742
* component[coding-change-type].valueCodeableConcept.coding[=].display = "copy_number_gain"
// Clinical summary conclusion
* component[conclusion-string].valueString = "Results suggestive of trisomy for chromosome 13. Positive predictive value (PPV): 34.07% (34.07 in 100). Test performance: Sensitivity 99.0% (95% CI: 65.8-100.0); Specificity 99.96% (95% CI: 99.93-99.98)."


// ============================================================
// 9. VARIANT — Chromosome 18 NEGATIVE (euploid, copy number 2)
// ============================================================
Instance: prequel-variant-chr18-negative
InstanceOf: Variant
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* subject = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000001)
* effectiveDateTime = "2024-06-16"
* performer[+] = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000004)
// valueCodeableConcept: Absent (no aneuploidy detected)
// Screening result interpretation belongs in DiagnosticImplication, not on the Variant
* valueCodeableConcept = $LNC#LA9634-2 "Absent"
* method.coding[+] = $LNC#LA26398-0 "Sequencing"
* method.text = "Sequencing with fetal chromosome analysis (NIPS v4.0); GRCh37/hg19"
* specimen = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000006)
* component[chromosome-identifier].valueCodeableConcept = $LNC#LA21271-4 "Chromosome 18"
* component[reference-sequence-assembly].valueCodeableConcept = $LNC#LA14029-5 "GRCh37"
* component[genomic-source-class].valueCodeableConcept = $LNC#LA10429-1 "Fetal"
* component[copy-number].valueQuantity.value = 2
* component[copy-number].valueQuantity.system = $UCUM
* component[copy-number].valueQuantity.code = #1
* component[conclusion-string].valueString = "Results consistent with two copies of chromosome 18. Residual risk < 0.01% (1 in 10,000). Test performance: Sensitivity 97.9% (95% CI: 94.9-99.1); Specificity 99.96% (95% CI: 99.93-99.97)."


// ============================================================
// 10. VARIANT — Chromosome 21 NEGATIVE (euploid, copy number 2)
// ============================================================
Instance: prequel-variant-chr21-negative
InstanceOf: Variant
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* subject = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000001)
* effectiveDateTime = "2024-06-16"
* performer[+] = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000004)
// valueCodeableConcept: Absent (no aneuploidy detected)
// Screening result interpretation belongs in DiagnosticImplication, not on the Variant
* valueCodeableConcept = $LNC#LA9634-2 "Absent"
* method.coding[+] = $LNC#LA26398-0 "Sequencing"
* method.text = "Sequencing with fetal chromosome analysis (NIPS v4.0); GRCh37/hg19"
* specimen = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000006)
* component[chromosome-identifier].valueCodeableConcept = $LNC#LA21274-8 "Chromosome 21"
* component[reference-sequence-assembly].valueCodeableConcept = $LNC#LA14029-5 "GRCh37"
* component[genomic-source-class].valueCodeableConcept = $LNC#LA10429-1 "Fetal"
* component[copy-number].valueQuantity.value = 2
* component[copy-number].valueQuantity.system = $UCUM
* component[copy-number].valueQuantity.code = #1
* component[conclusion-string].valueString = "Results consistent with two copies of chromosome 21. Residual risk < 0.01% (1 in 10,000). Test performance: Sensitivity 99.7% (95% CI: 99.1-99.9); Specificity 99.96% (95% CI: 99.93-99.98)."


// ============================================================
// 11. DIAGNOSTIC IMPLICATION — Trisomy 13 / Patau Syndrome (POSITIVE)
// Derived from the chromosome 13 trisomy variant (entry 8).
// clinical-significance: Pathogenic (positive screening result, PPV 34.07%)
// ============================================================
Instance: prequel-dx-implication-patau
InstanceOf: DiagnosticImplication
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/diagnostic-implication"
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* subject = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000001)
* effectiveDateTime = "2024-06-16"
* performer[+] = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000004)
// Required: derivedFrom must reference a Variant, Genotype, Haplotype, or MolecularBiomarker
* derivedFrom[variant] = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000008)
// Pathogenic clinical significance
* component[clinical-significance].valueCodeableConcept = $LNC#LA6668-3 "Pathogenic"
// Predicted phenotype: Trisomy 13 / Patau Syndrome
// MONDO:0009141 "trisomy 13"
* component[predicted-phenotype].valueCodeableConcept.coding[+].system = "http://purl.obolibrary.org/obo/mondo.owl"
* component[predicted-phenotype].valueCodeableConcept.coding[=].code = #MONDO:0009141
* component[predicted-phenotype].valueCodeableConcept.coding[=].display = "trisomy 13"
* component[predicted-phenotype].valueCodeableConcept.text = "Trisomy 13 (Patau Syndrome)"
// Chromosomal trisomy is de novo (non-familial inheritance pattern for most cases)
* component[mode-of-inheritance].valueCodeableConcept.coding[+].system = "http://purl.obolibrary.org/obo/hp.owl"
* component[mode-of-inheritance].valueCodeableConcept.coding[=].code = #HP:0001466
* component[mode-of-inheritance].valueCodeableConcept.text = "Contiguous gene syndrome (chromosomal aneuploidy; typically sporadic)"
* component[conclusion-string].valueString = "POSITIVE: Aneuploidy suspected (borderline value). Results suggestive of trisomy for chromosome 13. Positive predictive value (PPV): 34.07% (34.07 in 100). Trisomy 13 (Patau syndrome) is a life-limiting condition caused by an extra copy of chromosome 13. Common features include heart defects, brain and spine abnormalities, polydactyly, micropthalmia, hypotonia, kidney problems, and cleft lip/palate. Most infants die within the first few weeks of life. This is a screening test — false positives can occur. Definitive diagnosis requires CVS or amniocentesis."


// ============================================================
// 12. DIAGNOSTIC IMPLICATION — Trisomy 18 / Edwards Syndrome (NEGATIVE — euploid)
// Derived from the chromosome 18 variant (entry 9).
// clinical-significance: Likely benign (negative screening result, residual risk < 0.01%)
// ============================================================
Instance: prequel-dx-implication-edwards-negative
InstanceOf: DiagnosticImplication
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/diagnostic-implication"
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* subject = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000001)
* effectiveDateTime = "2024-06-16"
* performer[+] = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000004)
* derivedFrom[variant] = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000009)
// Likely benign: negative NIPS result for Trisomy 18, residual risk < 0.01%
* component[clinical-significance].valueCodeableConcept = $LNC#LA26334-5 "Likely benign"
// Predicted phenotype assessed: Trisomy 18 (Edwards Syndrome)
// MONDO:0009869 "trisomy 18"
* component[predicted-phenotype].valueCodeableConcept.coding[+].system = "http://purl.obolibrary.org/obo/mondo.owl"
* component[predicted-phenotype].valueCodeableConcept.coding[=].code = #MONDO:0009869
* component[predicted-phenotype].valueCodeableConcept.coding[=].display = "trisomy 18"
* component[predicted-phenotype].valueCodeableConcept.text = "Trisomy 18 (Edwards Syndrome)"
* component[conclusion-string].valueString = "NEGATIVE: Results consistent with two copies of chromosome 18. Residual risk < 0.01% (1 in 10,000). Test performance: Sensitivity 97.9% (95% CI: 94.9-99.1); Specificity 99.96% (95% CI: 99.93-99.97)."


// ============================================================
// 13. DIAGNOSTIC IMPLICATION — Trisomy 21 / Down Syndrome (NEGATIVE — euploid)
// Derived from the chromosome 21 variant (entry 10).
// clinical-significance: Likely benign (negative screening result, residual risk < 0.01%)
// ============================================================
Instance: prequel-dx-implication-down-negative
InstanceOf: DiagnosticImplication
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/diagnostic-implication"
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* subject = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000001)
* effectiveDateTime = "2024-06-16"
* performer[+] = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000004)
* derivedFrom[variant] = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000010)
// Likely benign: negative NIPS result for Trisomy 21, residual risk < 0.01%
* component[clinical-significance].valueCodeableConcept = $LNC#LA26334-5 "Likely benign"
// Predicted phenotype assessed: Trisomy 21 (Down Syndrome)
// MONDO:0008608 "trisomy 21"
* component[predicted-phenotype].valueCodeableConcept.coding[+].system = "http://purl.obolibrary.org/obo/mondo.owl"
* component[predicted-phenotype].valueCodeableConcept.coding[=].code = #MONDO:0008608
* component[predicted-phenotype].valueCodeableConcept.coding[=].display = "trisomy 21"
* component[predicted-phenotype].valueCodeableConcept.text = "Trisomy 21 (Down Syndrome)"
* component[conclusion-string].valueString = "NEGATIVE: Results consistent with two copies of chromosome 21. Residual risk < 0.01% (1 in 10,000). Test performance: Sensitivity 99.7% (95% CI: 99.1-99.9); Specificity 99.96% (95% CI: 99.93-99.98)."


// ============================================================
// 14. FOLLOWUP RECOMMENDATION — Genetic Counseling
// ============================================================
Instance: prequel-task-genetic-counseling
InstanceOf: FollowupRecommendation
Usage: #inline
* status = $TASKSTATUS#requested
* intent = $TASKINTENT#proposal
// LOINC LL1037-2: LA14020-4 "Genetic counseling recommended"
* code.coding[+].system = "http://loinc.org"
* code.coding[=].code = #LA14020-4
* code.coding[=].display = "Genetic counseling recommended"
* description = "Genetic counseling is recommended in view of a positive NIPS result for Trisomy 13 (PPV 34.07%). No irreversible decision should be made based on this screening result alone. If definitive diagnosis is desired, chorionic villus sampling (CVS) or amniocentesis is necessary. Clinical correlation with ultrasound findings and history is indicated."
* for = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000001)
* reason.reference = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000011)


// ============================================================
// 15. GENOMIC REPORT — Summary Diagnostic Report
// ============================================================
Instance: prequel-genomic-report
InstanceOf: GenomicReport
Usage: #inline
// Recommended action: genetic counseling task
* extension[recommended-action][+].valueReference = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000012)
* basedOn[+] = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000005)
* status = #final
* category[Genetics] = $DIAGNOSTICSERVICE#GE
* subject = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000001)
* effectiveDateTime = "2024-06-17"
* issued = "2024-06-17T00:00:00Z"
* performer[+] = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000004)
* resultsInterpreter[+] = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000004)
* specimen[+] = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000006)
// Results: fetal fraction biomarker, 3 chromosome variants, 1 diagnostic implication
* result[biomarker][+] = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000007)
* result[variant][+] = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000008)
* result[variant][+] = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000009)
* result[variant][+] = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000010)
* result[diagnostic-implication][+] = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000011)
* result[diagnostic-implication][+] = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000014)
* result[diagnostic-implication][+] = Reference(urn:uuid:2c9e6be3-1b0e-4e3a-9d9e-000000000015)
// Overall conclusion
* conclusion = "POSITIVE: PREGNANCY AT INCREASED RISK. Chromosome 13 aneuploidy detected — results suggestive of Trisomy 13 (Patau Syndrome). Positive predictive value (PPV): 34.07% (34.07 in 100). Chromosomes 18 (Edwards Syndrome) and 21 (Down Syndrome) are NEGATIVE with residual risk < 0.01% (1 in 10,000) each. Fetal fraction: 25.0%. Method: sequencing with fetal chromosome analysis (NIPS v4.0; GRCh37/hg19). This is a screening test — false positive and false negative results can occur. Genetic counseling is recommended. If definitive diagnosis is desired, chorionic villus sampling or amniocentesis is necessary."
* conclusionCode[+].concept.coding[+] = $SCT#10828004 "Positive (qualifier value)"
* conclusionCode[=].concept.text = "POSITIVE: Pregnancy at Increased Risk for Trisomy 13 (Patau Syndrome)"
// presentedForm: the rendered PDF report as issued by Myriad Women's Health.
// Source PDF: https://myriad-web.s3.amazonaws.com/Prequel/Prequel+with+AMPLIFY+Positive+Sample+Report.pdf
// In production the full PDF is base64-encoded in Attachment.data (shown as a placeholder here).
* presentedForm[+].contentType = #application/pdf
* presentedForm[=].data = "JVBERi0xLjQKJeLjz9MKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKJSUgUGxhY2Vob2xkZXIgYmFzZTY0LWVuY29kZWQgUERGIGRhdGEgJSUK"
* presentedForm[=].title = "Myriad Prequel Prenatal Screen with AMPLIFY — Positive Sample Report (PDF)"
* presentedForm[=].creation = "2024-06-17"
