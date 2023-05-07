Instance: HG00403 
InstanceOf: Patient
Description: "Example for Patient. Supports references to subject for multiple genomics reporting profile conforming instances."
* id = "HG00403"
// * text = "Patient example used for subject reference by CG FHIR examples"
* identifier.use = #usual
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
* identifier.system = "http://hospital.example.org"
* identifier.value = "m234"
* name.family = "Everyone"
* name.given[0] = "Alanine"
* name.given[1] = "B."
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "555-555-5555"
* contact.telecom[0].use = #home
* contact.telecom[1].system = #email
* contact.telecom[1].value = "alanine.everyone@example.com"
* gender = #unknown
* birthDate = "1951-01-20"
* address.line = "123 Main St"
* address.city = "Anytown"
* address.postalCode = "12345"
* address.country = "US"
* communication.language = urn:ietf:bcp:47#en-US "English (Region=United States)"
* communication.language.text = "English"

Instance: VariantExample
InstanceOf: Variant
Description: "Example for Variant NM_004448.4(ERBB2):c.2264_2278del"
* id = "VariantExample"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* subject = Reference(HG00403)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* component[0].code.coding = http://loinc.org#48013-7 "Genomic reference sequence [ID]"
* component[0].valueCodeableConcept.coding = $NUCCORE#NC_000017.11
* component[1].code.coding = http://loinc.org#69547-8 "Ref nucleotide"
* component[1].valueString = "ATTGAGGGAAAACACAT"
* component[2].code.coding = http://loinc.org#69551-0 "Alt allele"
* component[2].valueString = "T"
* component[3].code.coding = http://loinc.org#81254-5 "Variant exact start and end"
* component[3].valueRange.low.value = 39723965
* component[4].code.coding = http://loinc.org#92822-6 "Genomic coord system"
* component[4].valueCodeableConcept.coding = http://loinc.org#LA30100-4


Instance: GenomicSpecimenExample01 
InstanceOf: Specimen
Description: "Example for Genomic Specimen"
* id = "GenomicSpecimenExample01"
// * text = "Genomic specimen example"
* status = #available "Available"
* subject = Reference(CGPatientExample01)
* processing.timeDateTime = "2020-10-05"
* type = $SPECIMENTYPE#TISS "Tissue"

Instance: CGPatientExample01 
InstanceOf: Patient
Description: "Example for Patient. Supports references to subject for multiple genomics reporting profile conforming instances."
* id = "CGPatientExample01"
// * text = "Patient example used for subject reference by CG FHIR examples"
* identifier.use = #usual
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
* identifier.system = "http://hospital.example.org"
* identifier.value = "m123"
* name.family = "Everyman"
* name.given[0] = "Adam"
* name.given[1] = "B."
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "555-555-5555"
* contact.telecom[0].use = #home
* contact.telecom[1].system = #email
* contact.telecom[1].value = "adam.everyman@example.com"
* gender = #male
* birthDate = "1951-01-20"
* address.line = "123 Main St"
* address.city = "Anytown"
* address.postalCode = "12345"
* address.country = "US"
* communication.language = urn:ietf:bcp:47#en-US "English (Region=United States)"
* communication.language.text = "English"

Instance: TumorMutationBurdenExample01
InstanceOf: TMB
Description: "Example for Tumor Mutation Burden"
* id = "TumorMutationBurdenExample01"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/tmb"
* status = #final "final"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* subject = Reference(CGPatientExample01)
* valueQuantity.value = 250

Instance: MicrosatelliteInstabilityExample01
InstanceOf: MSI
Description: "Example for MSI"
* id = "MicrosatelliteInstabilityExample01"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/msi"
* status = #final "final"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* subject = Reference(CGPatientExample01)
* valueCodeableConcept = $LNC#LA14122-8 "Stable"

Instance: GenomicsServiceRequestExample01
InstanceOf: ServiceRequest
Description: "Example for Service Request"
* id = "GenomicsServiceRequestExample01"
* status = $REQUESTSTATUS#completed "completed"
* code = $LNC#94231-8 "G6PD gene full mutation analysis in Blood or Tissue by Sequencing"
* subject = Reference(CGPatientExample01)
* intent = $REQUESTINTENT#order "Order"
* specimen = Reference(GenomicSpecimenExample01)

Instance: VariantExample1
InstanceOf: Variant
Description: "Example for Variant given by HGVS"
* id = "VariantExample1"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* method = $LNC#LA26398-0 "Sequencing"
* subject = Reference(CGPatientExample01)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = $LNC#LA9633-4 "Present"
//* interpretation = $SCT#10828004 "Positive (qualifier value)"
//* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:11389 "STK11"
//* component[variation-code].valueCodeableConcept = $CLINVAR#619728 "NC_000019.8:g.1171707G>A"
* component[genomic-hgvs].valueCodeableConcept = $HGVS#NC_000019.8:g.1171707G>A "NC_000019.8:g.1171707G>A"
* component[genomic-source-class].valueCodeableConcept = $LNC#LA6684-0 "Somatic"

Instance: VariantExample2
InstanceOf: Variant
Description: "Example for genomic Variant given by VCF columns"
* id = "VariantExample2"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* method = $LNC#LA26398-0 "Sequencing"
* subject = Reference(CGPatientExample01)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = $LNC#LA9633-4 "Present"
//* component[0].code.coding = http://loinc.org#62374-4 "Human Reference Sequence Assembly"
//* component[0].valueCodeableConcept.coding = http://loinc.org#LA14029-5 "GRCh37"
* component[0].code.coding = http://loinc.org#48013-7 "Genomic reference sequence [ID]"
* component[0].valueCodeableConcept.coding = $NUCCORE#NC_000010.10
* component[1].code.coding = http://loinc.org#53034-5 "Allelic State"
* component[1].valueCodeableConcept.coding = http://loinc.org#LA6706-1 "heterozygous"
* component[2].code.coding = http://loinc.org#69547-8 "Ref nucleotide"
* component[2].valueString = "C"
* component[3].code.coding = http://loinc.org#69551-0 "Alt allele"
* component[3].valueString = "A"
* component[4].code.coding = http://loinc.org#81254-5 "Genomic allele start-end"
* component[4].valueRange.low.value = 96527334
//* component[6].code.coding = http://loinc.org#92822-6 "Genomic coord system"
//* component[6].valueCodeableConcept.coding = http://loinc.org#LA30102-0

Instance: ExampleOrg
InstanceOf: Organization
Description: "Example Org"
* id = "ExampleOrg"
* name = "some lab"

Instance: TherapeuticImplicationExample1
InstanceOf: TherapeuticImplication
Description: "Example of a Therapeutic Implication for Carbamazepine"
* id = "TherapeuticImplicationExample1"
//* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/therapeutic-implication"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#therapeutic-implication
* component[0].code.coding = TbdCodesCS#predicted-therapeutic-implication "Predicted Therapeutic Implication"
* component[0].valueCodeableConcept.coding = $LNC#LA19541-4 "High risk"
* component[1].code.coding = $LNC#51963-7 "Medication assessed"
* component[1].valueCodeableConcept.coding = http://www.nlm.nih.gov/research/umls/rxnorm#2002 "Carbamazepine"
//* component[2].code.coding = $LNC#93044-6 "Level of evidence"
//* component[2].valueCodeableConcept.coding = $LNC#LA30200-2 "Very strong evidence pathogenic"
* derivedFrom = Reference(GenotypeExample1)
* status = #final

Instance: AnnotationExample
InstanceOf: DiagnosticImplication
Description: "Example of a Diagnostic Implication for Familial hypercholesterolemia"
* id = "AnnotationExample"
//* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/therapeutic-implication"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#diagnostic-implication
* component[clinical-significance].valueCodeableConcept = $LNC#LA6668-3 "Pathogenic"
* component[predicted-phenotype].valueCodeableConcept = $SCT#398036000 "Familial hypercholesterolemia (disorder)"
* derivedFrom = Reference(VariantExample2)
* status = #final


Instance: GenotypeExample1
InstanceOf: Genotype
Description: "Example of a Genotype, Medication Recommendation, and MedicationStatement"
* id = "GenotypeExample1"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* valueCodeableConcept.coding = $CLINVAR#14909 "HLA-B*15:02"
* component.code.coding = $LNC#48018-6 "Gene studied [ID]"
* component.valueCodeableConcept.coding = http://www.genenames.org/geneId#HGNC:4932 "HLA-B"
* effectiveDateTime = "2018"
* specimen = Reference(GenomicSpecimenExample01)
* subject = Reference(CGPatientExample01)
* status = #final

Instance: MedicationRecommendationExample1
InstanceOf: MedicationRecommendation
Description: "Example of a Medication Recommendation"
* id = "MedicationRecommendationExample1"
* code = $LNC#LA26421-0
* description = "Patients positive for this allele should not be treated with CBZ, unless the benefits clearly outweigh the risk. Therapy should be discontinued immediately if symptoms of SJS or TEN develop. Alternative medication should be used as first line therapy. Consideration in the choice for alternative medications should be given to potential cross-reactivity with structurally similar aromatic antiepileptic drugs such as oxcarbazepine, phenytoin, fosphenytoin and lamotrigine, which can also moderately increase risk for SJS/TEN in association with HLA-B*15:02 positivity."
* for = Reference(CGPatientExample01)
* intent = #proposal
* reasonReference = Reference(TherapeuticImplicationExample1)
* status = #requested

Instance: GenomicsReportExample01
InstanceOf: GenomicsReport
Description: "Example of a Report carrying a Genotype, Therapeutic Implication, and Medication Recommendation"
* id = "GenomicsReportExample01"
* basedOn = Reference(GenomicsServiceRequestExample01)
* code = $LNC#57979-7 "HLA-B*15:02 [Presence]"
* effectiveDateTime = "2016"
* extension[RecommendedAction][0].valueReference = Reference(MedicationRecommendationExample1)
* issued = "2018-03-06T00:00:00-05:00"
* performer = Reference(ExampleOrg)
* result[0].display = "impact for high risk allele"
* result[0] = Reference(TherapeuticImplicationExample1)
* result[1] = Reference(GenotypeExample1)
* result[2] = Reference(OverallInterpExample1)
* status = #final
* subject = Reference(CGPatientExample01)
* extension[GenomicsArtifact][0].valueRelatedArtifact.type = #citation
* extension[GenomicsArtifact][0].valueRelatedArtifact.url = "https://cpicpgx.org/guidelines/guideline-for-clopidogrel-and-cyp2c19)"

Instance: SequencePhaseRelationExample1
InstanceOf: SequencePhaseRelationship
Description: "Example for sequence phase relation."
* id = "SequencePhaseRelationExample1"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/sequence-phase-relationship"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* derivedFrom[0] = Reference(VariantExample1)
* derivedFrom[1] = Reference(VariantExample2)
* issued = "2019-03-05T16:04:44+00:00"
* status = #final
* valueCodeableConcept = SequencePhaseRelationshipCS#Cis "Cis"

Instance: OverallInterpExample1
InstanceOf: OverallInterpretation
Description: "Example for Overall Interpretation."
* id = "OverallInterpExample1"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* valueCodeableConcept = $LNC#LA6576-8 "Positive"
* subject = Reference(CGPatientExample01)
* specimen = Reference(GenomicSpecimenExample01)
* status = #final
* component[conclusion-string].valueString = "Patient is positive for high risk allele HLA-B*15:02 and should not be treated with CBZ."

Instance: Pgx-var-1011
InstanceOf: Variant
Description: "Example variant 1011"
* id = "Pgx-var-1011"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* method = $LNC#LA26398-0 "Sequencing"
* subject = Reference(CGPatientExample01)
* effectiveDateTime = "2020-01-01"
* valueCodeableConcept = $LNC#LA9633-4 "Present"
//* component[genomic-hgvs].valueCodeableConcept = $HGVS#NC_000010.10:g.96521657C=
* component[genomic-ref-seq].valueCodeableConcept = $NUCCORE#NC_000010.10 "b37 Chr10"
* component[coordinate-system].valueCodeableConcept = $LNC#LA30102-0 "1-based character counting"
* component[exact-start-end].valueRange.low.value = 96521657
* component[exact-start-end].valueRange.high.value = 96521657
* component[ref-allele].valueString = "C"
* component[alt-allele].valueString = "C"
* component[genomic-source-class].valueCodeableConcept = $LNC#LA6683-2 "Germline"
* component[allelic-state].valueCodeableConcept = $LNC#LA6705-3 "homozygous"
* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:262 "CYP2C19"
* component[coding-change-type].valueCodeableConcept = $SEQONT#SO:0002073 "wild type"
* component[allelic-read-depth].valueQuantity.value = 20
* component[allelic-read-depth].valueQuantity.comparator = #>
* component[variant-confidence-status].valueCodeableConcept = VariantConfidenceStatusCS#high

Instance: Pgx-var-1012
InstanceOf: Variant
Description: "Example variant 1012"
* id = "Pgx-var-1012"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* method = $LNC#LA26398-0 "Sequencing"
* subject = Reference(CGPatientExample01)
* effectiveDateTime = "2020-01-01"
* valueCodeableConcept = $LNC#LA9633-4 "Present"
//* component[genomic-hgvs].valueCodeableConcept = $HGVS#NC_000010.10:g.96522463A=
* component[genomic-ref-seq].valueCodeableConcept = $NUCCORE#NC_000010.10 "b37 Chr10"
* component[coordinate-system].valueCodeableConcept = $LNC#LA30102-0 "1-based character counting"
* component[exact-start-end].valueRange.low.value = 96522463
* component[exact-start-end].valueRange.high.value = 96522463
* component[ref-allele].valueString = "A"
* component[alt-allele].valueString = "A"
* component[genomic-source-class].valueCodeableConcept = $LNC#LA6683-2 "Germline"
* component[allelic-state].valueCodeableConcept = $LNC#LA6705-3 "homozygous"
* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:2621 "CYP2C19"
* component[coding-change-type].valueCodeableConcept = $SEQONT#SO:0002073 "wild type"
* component[allelic-read-depth].valueQuantity.value = 20
* component[allelic-read-depth].valueQuantity.comparator = #>
* component[variant-confidence-status].valueCodeableConcept = VariantConfidenceStatusCS#high

Instance: Pgx-var-1013
InstanceOf: Variant
Description: "Example variant 1013"
* id = "Pgx-var-1013"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* method = $LNC#LA26398-0 "Sequencing"
* subject = Reference(CGPatientExample01)
* effectiveDateTime = "2020-01-01"
* valueCodeableConcept = $LNC#LA9633-4 "Present"
//* component[genomic-hgvs].valueCodeableConcept = $HGVS#NC_000010.10:g.96535173T=
* component[genomic-ref-seq].valueCodeableConcept = $NUCCORE#NC_000010.10 "b37 Chr10"
* component[coordinate-system].valueCodeableConcept = $LNC#LA30102-0 "1-based character counting"
* component[exact-start-end].valueRange.low.value = 96535173
* component[exact-start-end].valueRange.high.value = 96535173
* component[ref-allele].valueString = "T"
* component[alt-allele].valueString = "T"
* component[genomic-source-class].valueCodeableConcept = $LNC#LA6683-2 "Germline"
* component[allelic-state].valueCodeableConcept = $LNC#LA6705-3 "homozygous"
* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:2621 "CYP2C19"
* component[coding-change-type].valueCodeableConcept = $SEQONT#SO:0002073 "wild type"
* component[allelic-read-depth].valueQuantity.value = 20
* component[allelic-read-depth].valueQuantity.comparator = #>
* component[variant-confidence-status].valueCodeableConcept = VariantConfidenceStatusCS#high


Instance: Pgx-var-1014
InstanceOf: Variant
Description: "Example variant 1014"
* id = "Pgx-var-1014"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* method = $LNC#LA26398-0 "Sequencing"
* subject = Reference(CGPatientExample01)
* effectiveDateTime = "2020-01-01"
* valueCodeableConcept = $LNC#LA9633-4 "Present"
//* component[genomic-hgvs].valueCodeableConcept = $HGVS#NC_000010.10:g.96535210G=
* component[genomic-ref-seq].valueCodeableConcept = $NUCCORE#NC_000010.10 "b37 Chr10"
* component[coordinate-system].valueCodeableConcept = $LNC#LA30102-0 "1-based character counting"
* component[exact-start-end].valueRange.low.value = 96535210
* component[exact-start-end].valueRange.high.value = 96535210
* component[ref-allele].valueString = "G"
* component[alt-allele].valueString = "G"
* component[genomic-source-class].valueCodeableConcept = $LNC#LA6683-2 "Germline"
* component[allelic-state].valueCodeableConcept = $LNC#LA6705-3 "homozygous"
* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:2621 "CYP2C19"
* component[coding-change-type].valueCodeableConcept = $SEQONT#SO:0002073 "wild type"
* component[allelic-read-depth].valueQuantity.value = 20
* component[allelic-read-depth].valueQuantity.comparator = #>
* component[variant-confidence-status].valueCodeableConcept = VariantConfidenceStatusCS#high

Instance: Pgx-var-1015
InstanceOf: Variant
Description: "Example variant 1015"
* id = "Pgx-var-1015"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* method = $LNC#LA26398-0 "Sequencing"
* subject = Reference(CGPatientExample01)
* effectiveDateTime = "2020-01-01"
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* component[genomic-hgvs].valueCodeableConcept = $HGVS#NC_000010.10:g.96540410G>A
* component[genomic-source-class].valueCodeableConcept = $LNC#LA6683-2 "Germline"
* component[allelic-state].valueCodeableConcept = $LNC#LA6705-3 "homozygous"
* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:2621 "CYP2C19"
* component[coding-change-type].valueCodeableConcept = $SEQONT#SO:1000002 "substitution"
* component[allelic-read-depth].valueQuantity.value = 20
* component[allelic-read-depth].valueQuantity.comparator = #>
* component[variant-confidence-status].valueCodeableConcept = VariantConfidenceStatusCS#high

Instance: Pgx-var-1016
InstanceOf: Variant
Description: "Example variant 1016"
* id = "Pgx-var-1016"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* method = $LNC#LA26398-0 "Sequencing"
* subject = Reference(CGPatientExample01)
* effectiveDateTime = "2020-01-01"
* valueCodeableConcept = $LNC#LA9633-4 "Present"
//* component[genomic-hgvs].valueCodeableConcept = $HGVS#NC_000010.10:g.96541616G=
* component[genomic-ref-seq].valueCodeableConcept = $NUCCORE#NC_000010.10 "b37 Chr10"
* component[coordinate-system].valueCodeableConcept = $LNC#LA30102-0 "1-based character counting"
* component[exact-start-end].valueRange.low.value = 96541616
* component[exact-start-end].valueRange.high.value = 96541616
* component[ref-allele].valueString = "G"
* component[alt-allele].valueString = "G"
* component[genomic-source-class].valueCodeableConcept = $LNC#LA6683-2 "Germline"
* component[allelic-state].valueCodeableConcept = $LNC#LA6705-3 "homozygous"
* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:2621 "CYP2C19"
* component[coding-change-type].valueCodeableConcept = $SEQONT#SO:1000002 "wild type"
* component[allelic-read-depth].valueQuantity.value = 20
* component[allelic-read-depth].valueQuantity.comparator = #>
* component[variant-confidence-status].valueCodeableConcept = VariantConfidenceStatusCS#high

Instance: Pgx-var-1017
InstanceOf: Variant
Description: "Example variant 1017"
* id = "Pgx-var-1017"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* method = $LNC#LA26398-0 "Sequencing"
* subject = Reference(CGPatientExample01)
* effectiveDateTime = "2020-01-01"
* valueCodeableConcept = $LNC#LA9633-4 "Present"
//* component[genomic-hgvs].valueCodeableConcept = $HGVS#NC_000010.10:g.96541756T=
* component[genomic-ref-seq].valueCodeableConcept = $NUCCORE#NC_000010.10 "b37 Chr10"
* component[coordinate-system].valueCodeableConcept = $LNC#LA30102-0 "1-based character counting"
* component[exact-start-end].valueRange.low.value = 96541756
* component[exact-start-end].valueRange.high.value = 96541756
* component[ref-allele].valueString = "T"
* component[alt-allele].valueString = "T"
* component[genomic-source-class].valueCodeableConcept = $LNC#LA6683-2 "Germline"
* component[allelic-state].valueCodeableConcept = $LNC#LA6705-3 "homozygous"
* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:2621 "CYP2C19"
* component[coding-change-type].valueCodeableConcept = $SEQONT#SO:1000002 "wild type"
* component[allelic-read-depth].valueQuantity.value = 20
* component[allelic-read-depth].valueQuantity.comparator = #>
* component[variant-confidence-status].valueCodeableConcept = VariantConfidenceStatusCS#high

Instance: Pgx-var-1018
InstanceOf: Variant
Description: "Example variant 1018"
* id = "Pgx-var-1018"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* method = $LNC#LA26398-0 "Sequencing"
* subject = Reference(CGPatientExample01)
* effectiveDateTime = "2020-01-01"
* valueCodeableConcept = $LNC#LA9633-4 "Present"
//* component[genomic-hgvs].valueCodeableConcept = $HGVS#NC_000010.10:g.96612495C=
* component[genomic-ref-seq].valueCodeableConcept = $NUCCORE#NC_000010.10 "b37 Chr10"
* component[coordinate-system].valueCodeableConcept = $LNC#LA30102-0 "1-based character counting"
* component[exact-start-end].valueRange.low.value = 96612495
* component[exact-start-end].valueRange.high.value = 96612495
* component[ref-allele].valueString = "C"
* component[alt-allele].valueString = "C"
* component[genomic-source-class].valueCodeableConcept = $LNC#LA6683-2 "Germline"
* component[allelic-state].valueCodeableConcept = $LNC#LA6705-3 "homozygous"
* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:2621 "CYP2C19"
* component[coding-change-type].valueCodeableConcept = $SEQONT#SO:1000002 "wild type"
* component[allelic-read-depth].valueQuantity.value = 20
* component[allelic-read-depth].valueQuantity.comparator = #>
* component[variant-confidence-status].valueCodeableConcept = VariantConfidenceStatusCS#high

Instance: Pgx-var-1019
InstanceOf: Variant
Description: "Example variant 1019"
* id = "Pgx-var-1019"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* method = $LNC#LA26398-0 "Sequencing"
* subject = Reference(CGPatientExample01)
* effectiveDateTime = "2020-01-01"
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* component[genomic-hgvs].valueCodeableConcept = $HGVS#NC_000016.9:g.31096368C>T
* component[genomic-source-class].valueCodeableConcept = $LNC#LA6683-2 "Germline"
* component[allelic-state].valueCodeableConcept = $LNC#LA6706-1 "heterozygous"
* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:23663 "VKORC1"
* component[coding-change-type].valueCodeableConcept = $SEQONT#SO:1000002 "substitution"
* component[allelic-read-depth].valueQuantity.value = 20
* component[allelic-read-depth].valueQuantity.comparator = #>
* component[variant-confidence-status].valueCodeableConcept = VariantConfidenceStatusCS#high
* note.extension[AnnotationCode].valueCodeableConcept = CodedAnnotationTypesCS#result-confirmation
* note.text = """
This variant was confirmed with SANGER sequencing
"""

Instance: Pgx-var-1020
InstanceOf: Variant
Description: "Example variant 1020"
* id = "Pgx-var-1020"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* method = $LNC#LA26398-0 "Sequencing"
* subject = Reference(CGPatientExample01)
* effectiveDateTime = "2020-01-01"
* valueCodeableConcept = $LNC#LA9633-4 "Present"
//* component[genomic-hgvs].valueCodeableConcept = $HGVS#NC_000010.10:g.96702047C=
* component[genomic-ref-seq].valueCodeableConcept = $NUCCORE#NC_000010.10 "b37 Chr10"
* component[coordinate-system].valueCodeableConcept = $LNC#LA30102-0 "1-based character counting"
* component[exact-start-end].valueRange.low.value = 96702047
* component[exact-start-end].valueRange.high.value = 96702047
* component[ref-allele].valueString = "C"
* component[alt-allele].valueString = "C"
* component[genomic-source-class].valueCodeableConcept = $LNC#LA6683-2 "Germline"
* component[allelic-state].valueCodeableConcept = $LNC#LA6705-3 "homozygous"
* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:2623 "CYP2C9"
* component[coding-change-type].valueCodeableConcept = $SEQONT#SO:1000002 "wild type"
* component[allelic-read-depth].valueQuantity.value = 20
* component[allelic-read-depth].valueQuantity.comparator = #>
* component[variant-confidence-status].valueCodeableConcept = VariantConfidenceStatusCS#high
* note.extension[AnnotationCode].valueCodeableConcept = CodedAnnotationTypesCS#result-confirmation
* note.text = """
This variant was confirmed with SANGER sequencing
"""

Instance: Pgx-var-1021
InstanceOf: Variant
Description: "Example variant 1021"
* id = "Pgx-var-1021"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* method = $LNC#LA26398-0 "Sequencing"
* subject = Reference(CGPatientExample01)
* effectiveDateTime = "2020-01-01"
* valueCodeableConcept = $LNC#LA9633-4 "Present"
//* component[genomic-hgvs].valueCodeableConcept = $HGVS#NC_000010.10:g.96741053A=
* component[genomic-ref-seq].valueCodeableConcept = $NUCCORE#NC_000010.10 "b37 Chr10"
* component[coordinate-system].valueCodeableConcept = $LNC#LA30102-0 "1-based character counting"
* component[exact-start-end].valueRange.low.value = 96741053
* component[exact-start-end].valueRange.high.value = 96741053
* component[ref-allele].valueString = "A"
* component[alt-allele].valueString = "A"
* component[genomic-source-class].valueCodeableConcept = $LNC#LA6683-2 "Germline"
* component[allelic-state].valueCodeableConcept = $LNC#LA6705-3 "homozygous"
* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:2623 "CYP2C9"
* component[coding-change-type].valueCodeableConcept = $SEQONT#SO:1000002 "wild type"
* component[allelic-read-depth].valueQuantity.value = 20
* component[allelic-read-depth].valueQuantity.comparator = #>
* component[variant-confidence-status].valueCodeableConcept = VariantConfidenceStatusCS#intermediate
* note.extension[AnnotationCode].valueCodeableConcept = CodedAnnotationTypesCS#result-confirmation
* note.text = """
This variant was confirmed with SANGER sequencing
"""

Instance: Pgx-geno-1001
InstanceOf: Genotype
Description: "Example of a Genotype from eMERGE"
* id = "Pgx-geno-1001"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* valueCodeableConcept.coding = $CLINVAR#638797 "CYP2C19*2/*2"
* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:2621 "CYP2C19"
* effectiveDateTime = "2020-01-01"
* specimen = Reference(GenomicSpecimenExample01)
* subject = Reference(CGPatientExample01)
* status = #final
* derivedFrom[0] = Reference(Pgx-var-1011)
* derivedFrom[1] = Reference(Pgx-var-1012)
* derivedFrom[2] = Reference(Pgx-var-1013)
* derivedFrom[3] = Reference(Pgx-var-1014)
* derivedFrom[4] = Reference(Pgx-var-1015)
* derivedFrom[5] = Reference(Pgx-var-1016)
* derivedFrom[6] = Reference(Pgx-var-1017)
* derivedFrom[7] = Reference(Pgx-var-1018)

Instance: TxImp01
InstanceOf: TherapeuticImplication
Description: "Example of a Therapeutic Implication from eMERGE"
* id = "TxImp01"
//* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/therapeutic-implication"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Poor metabolizer of Clopidogrel</div>"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#therapeutic-implication
* component[medication-assessed].valueCodeableConcept = $NCIMETA#C0070166 "clopidogrel"
* component[predicted-therapeutic-implication].valueCodeableConcept = $LNC#LA9657-3 "Poor metabolizer"
* component[conclusion-string].valueString = "For clopidogrel, individuals with this diplotype are expected to have significantly reduced platelet inhibition, increased residual platelet aggregation and increased risk for adverse cardiovascular events in response to clopidogrel. Alternative antiplatelet therapy (if no contraindication) is recommended. Refer to current guidelines for dosage and recommendations at https://cpicpgx.org/guidelines/guideline- for-clopidogrel-and-cyp2c19/"
* extension[GenomicsArtifact].valueRelatedArtifact.type = #citation
* extension[GenomicsArtifact].valueRelatedArtifact.url = "https://cpicpgx.org/guidelines/guideline-for-clopidogrel-and-cyp2c19)"
* derivedFrom = Reference(Pgx-geno-1001)
* status = #final

Instance: TxImp02
InstanceOf: TherapeuticImplication
Description: "Example of a Therapeutic Implication from eMERGE"
* id = "TxImp02"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Poor metabolizer of Voriconazole</div>"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#therapeutic-implication
* component[medication-assessed].valueCodeableConcept = $NCIMETA#C0393080 "voriconazole"
* component[predicted-therapeutic-implication].valueCodeableConcept = $LNC#LA9657-3 "Poor metabolizer"
* component[conclusion-string].valueString = "For voriconazole, higher dose-adjusted trough concentrations of voriconazole are expected in individuals with this genotype and may increase the probability of adverse events. An alternative agent that is not dependent on CYP2C19 metabolism such as isavuconazole, liposomal amphotericin B, or posaconazole is recommended as primary therapy in lieu of voriconazole. A lower than standard dosage of voriconazole with careful therapeutic drug monitoring is another alternative. Refer to current guidelines for dosage and recommendations at https://cpicpgx.org/guidelines/guideline-for-voriconazole-and-cyp2c19/."
* extension[GenomicsArtifact].valueRelatedArtifact.type = #citation
* extension[GenomicsArtifact].valueRelatedArtifact.url = "https://cpicpgx.org/guidelines/guideline-for-voriconazole-and-cyp2c19/"
* derivedFrom = Reference(Pgx-geno-1001)
* status = #final

Instance: TxImp03
InstanceOf: TherapeuticImplication
Description: "Example of a Therapeutic Implication from eMERGE"
* id = "TxImp03"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Poor metabolizer of Citalopram</div>"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#therapeutic-implication
* component[medication-assessed].valueCodeableConcept = $NCIMETA#C0008845 "citalopram"
* component[predicted-therapeutic-implication].valueCodeableConcept = $LNC#LA9657-3 "Poor metabolizer"
* component[conclusion-string].valueString = "For citalopram, a 50% reduction in starting dose is recommended with therapeutic drug monitoring to guide dose adjustment or select an alternate drug not predominantly metabolized by CYP2C19. Refer to current guidelines for dosage and recommendations at https://cpicpgx.org/guidelines/guideline-for-selective-serotonin-reuptake-inhibitors-and-cyp2d6-and-cyp2c19/. If CYP2D6 genotyping is available, refer to the current guidelines for dosing recommendations."
* extension[GenomicsArtifact].valueRelatedArtifact.type = #citation
* extension[GenomicsArtifact].valueRelatedArtifact.url = "https://cpicpgx.org/guidelines/guideline-for-selective-serotonin-reuptake-inhibitors-and-cyp2d6-and-cyp2c19/"
* derivedFrom = Reference(Pgx-geno-1001)
* status = #final

Instance: TxImp04
InstanceOf: TherapeuticImplication
Description: "Example of a Therapeutic Implication from eMERGE"
* id = "TxImp04"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Poor metabolizer of Escitalopram</div>"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#therapeutic-implication
* component[medication-assessed].valueCodeableConcept = $NCIMETA#C1099456 "escitalopram"
* component[predicted-therapeutic-implication].valueCodeableConcept = $LNC#LA9657-3 "Poor metabolizer"
* component[conclusion-string].valueString = "For escitalopram, a 50% reduction in starting dose is recommended with therapeutic drug monitoring to guide dose adjustment or select an alternate drug not predominantly metabolized by CYP2C19. Refer to current guidelines for dosage and recommendations at https://cpicpgx.org/guidelines/guideline-for-selective-serotonin-reuptake-inhibitors-and-cyp2d6-and-cyp2c19/. If CYP2D6 genotyping is available, refer to the current guidelines for dosing recommendations."
* extension[GenomicsArtifact].valueRelatedArtifact.type = #citation
* extension[GenomicsArtifact].valueRelatedArtifact.url = "https://cpicpgx.org/guidelines/guideline-for-selective-serotonin-reuptake-inhibitors-and-cyp2d6-and-cyp2c19/"
* derivedFrom = Reference(Pgx-geno-1001)
* status = #final

Instance: TxImp05
InstanceOf: TherapeuticImplication
Description: "Example of a Therapeutic Implication from eMERGE"
* id = "TxImp05"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Poor metabolizer of Amitriptyline</div>"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#therapeutic-implication
* component[medication-assessed].valueCodeableConcept = $NCIMETA#C0002600 "amitriptyline"
* component[predicted-therapeutic-implication].valueCodeableConcept = $LNC#LA9657-3 "Poor metabolizer"
* component[conclusion-string].valueString = "For amitriptyline, a 50% reduction in starting dose is recommended with therapeutic drug monitoring to guide dose adjustment. Refer to current guidelines for dosage and recommendations at https://cpicpgx.org/guidelines/guideline-for- tricyclic-antidepressants-and-cyp2d6-and-cyp2c19/. If CYP2D6 genotyping is available, refer to the current guidelines for dosing recommendations."
* extension[GenomicsArtifact].valueRelatedArtifact.type = #citation
* extension[GenomicsArtifact].valueRelatedArtifact.url = "https://cpicpgx.org/guidelines/guideline-for-tricyclic-antidepressants-and-cyp2d6-and-cyp2c19/"
* derivedFrom = Reference(Pgx-geno-1001)
* status = #final

Instance: Pgx-geno-1002
InstanceOf: Genotype
Description: "Example of a Genotype from eMERGE"
* id = "Pgx-geno-1002"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* valueCodeableConcept.text = "CYP2C9*1/*1"
* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:2623 "CYP2C9"
* effectiveDateTime = "2020-01-01"
* specimen = Reference(GenomicSpecimenExample01)
* subject = Reference(CGPatientExample01)
* derivedFrom = Reference(Pgx-var-1020)
* derivedFrom = Reference(Pgx-var-1021)
* status = #final
//* derivedFrom[0] = Reference(Pgx-var-1011)

Instance: Pgx-geno-1003
InstanceOf: Genotype
Description: "Example of a Genotype from eMERGE"
* id = "Pgx-geno-1003"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* valueCodeableConcept.text = "VKORC1 rs9923231 C/T"
* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:23663 "VKORC1"
* effectiveDateTime = "2020-01-01"
* specimen = Reference(GenomicSpecimenExample01)
* subject = Reference(CGPatientExample01)
* derivedFrom = Reference(Pgx-var-1019)
* status = #final
//* derivedFrom[0] = Reference(Pgx-var-1011)

Instance: TxImp06
InstanceOf: TherapeuticImplication
Description: "Example of a Therapeutic Implication from eMERGE"
* id = "TxImp06"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Normal metabolizer of Warfarin</div>"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#therapeutic-implication
* component[medication-assessed].valueCodeableConcept = $NCIMETA#C0043031 "warfarin"
* component[predicted-therapeutic-implication].valueCodeableConcept = $LNC#LA25391-6 "Normal metabolizer"
* component[conclusion-string].valueString = "This individual is homozygous for the normal allele for the CYP2C9 gene. Based on the genotype result, this patient is predicted to have normal CYP2C9 function. This individual is also heterozygous for the variant allele for the VKORC1 gene. Expression level of the VKORC1 gene is associated with warfarin sensitivity. Based on the genotype result, this patient is predicted to have medium sensitivity to warfarin. See https://cpicpgx.org/guidelines/guideline-for-warfarin-and-cyp2c9-and-vkorc1/ guidelines for detail."
* extension[GenomicsArtifact].valueRelatedArtifact.type = #citation
* extension[GenomicsArtifact].valueRelatedArtifact.url = "https://cpicpgx.org/guidelines/guideline-for-warfarin-and-cyp2c9-and-vkorc1/"
* derivedFrom[0] = Reference(Pgx-geno-1002) "CYP2C9*1/*1"
* derivedFrom[1] = Reference(Pgx-geno-1003) "VKORC1 rs9923231 C/T"
* status = #final

Instance: GrouperEx01
InstanceOf: Observation
Description: "Generic grouping of Therapeutic Implication observations"
* id = "GrouperEx01"
* category[+].coding = $OBSCAT#laboratory
* category[+].coding = $DIAGNOSTICSERVICE#GE
* code = $NCIT#C43359 "Group"
* status = #final
* hasMember[0] = Reference(TxImp01) "clopidogrel, poor metabolizer"
* hasMember[1] = Reference(TxImp02) "voriconazole, poor metabolizer"
* hasMember[2] = Reference(TxImp03) "citalopram, poor metabolizer"
* hasMember[3] = Reference(TxImp04) "escitalopram, poor metabolizer"
* hasMember[4] = Reference(TxImp05) "amitriptyline, poor metabolizer"
* hasMember[5] = Reference(TxImp06) "medium sensitivity to warfarin"

Instance: GrouperEx02
InstanceOf: Observation
Description: "Generic grouping of Genotype observations"
* id = "GrouperEx02"
* category[+].coding = $OBSCAT#laboratory
* category[+].coding = $DIAGNOSTICSERVICE#GE
* code = $NCIT#C43359 "Group"
* status = #final
* hasMember[0] = Reference(Pgx-geno-1001)
* hasMember[1] = Reference(Pgx-geno-1003)
* hasMember[2] = Reference(Pgx-geno-1002)


Instance: GrouperEx03
InstanceOf: Observation
Description: "Generic grouping of Regions Studied and Variant observations"
* id = "GrouperEx03"
* category[+].coding = $OBSCAT#laboratory
* category[+].coding = $DIAGNOSTICSERVICE#GE
* code = $NCIT#C43359 "Group"
* status = #final
* hasMember[0] = Reference(Pgx-var-1011) "NC_000010.10(CYP2C19):g.96521657C="
* hasMember[1] = Reference(Pgx-var-1012) "NC_000010.10(CYP2C19):g.96522463A="
* hasMember[2] = Reference(Pgx-var-1013) "NC_000010.10(CYP2C19):g.96535173T="
* hasMember[3] = Reference(Pgx-var-1014) "NC_000010.10(CYP2C19):g.96535210G="
* hasMember[4] = Reference(Pgx-var-1015) "NC_000010.10(CYP2C19):g.96540410G>A"
* hasMember[5] = Reference(Pgx-var-1016) "NC_000010.10(CYP2C19):g.96541616G="
* hasMember[6] = Reference(Pgx-var-1017) "NC_000010.10(CYP2C19):g.96541756T="
* hasMember[7] = Reference(Pgx-var-1018) "NC_000010.10(CYP2C19):g.96612495C="
* hasMember[8] = Reference(Pgx-var-1019) "NC_000016.9(VKORC1):g.31096368C>T"
* hasMember[9] = Reference(Pgx-var-1020) "NC_000010.10(CYP2C9):g.96702047C="
* hasMember[10] = Reference(Pgx-var-1021) "NC_000010.10(CYP2C9):g.96741053A="
* hasMember[0] = Reference(RegionStudiedPGx1) "CYP2C19"
* hasMember[1] = Reference(RegionStudiedPGx2) "CYP2C9"
* hasMember[2] = Reference(RegionStudiedPGx3) "VKORC1"

//* variants if needed

Instance: RegionStudiedPGx1
InstanceOf: RegionStudied
Description: "eMERGE PGx CYP2C19"
* id = "RegionStudiedPGx1"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* status = #final
* component[region-description].valueString = "protein-coding and exon-splicing regions."
* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:2621 "CYP2C19"
* component[region-coverage].valueQuantity.value = 100


Instance: RegionStudiedPGx2
InstanceOf: RegionStudied
Description: "eMERGE PGx CYP2C9"
* id = "RegionStudiedPGx2"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* status = #final
* component[region-description].valueString = "protein-coding and exon-splicing regions."
* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:2623 "CYP2C9"
* component[region-coverage].valueQuantity.value = 100

Instance: RegionStudiedPGx3
InstanceOf: RegionStudied
Description: "eMERGE PGx VKORC1"
* id = "RegionStudiedPGx3"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* status = #final
* component[region-description].valueString = "protein-coding and exon-splicing regions."
* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:23663 "VKORC1"
* component[region-coverage].valueQuantity.value = 100

Instance: PGxGenomicsReportEMERGE
InstanceOf: GenomicsReport
Description: "Example of a Report carrying multiple Therapeutic Implications, Genotypes, and Variants"
* id = "PGxGenomicsReportEMERGE"
* basedOn = Reference(eMERGEServiceRequest)
* code = https://hgsc.bcm.edu/lab-test-codes/#emerge-seq-ngs-pnl
* effectiveDateTime = "2020-01-01T00:00:00-05:00"
* issued = "2020-01-01T00:00:00-05:00"
* performer = Reference(ExampleOrg)
* subject = Reference(CGPatientExample01)
* result[23] = Reference(OverallInterpExample2) "gene-drug interactions found."
* result[0] = Reference(TxImp01) "clopidogrel, poor metabolizer"
* result[1] = Reference(TxImp02) "voriconazole, poor metabolizer"
* result[2] = Reference(TxImp03) "citalopram, poor metabolizer"
* result[3] = Reference(TxImp04) "escitalopram, poor metabolizer"
* result[4] = Reference(TxImp05) "amitriptyline, poor metabolizer"
* result[5] = Reference(TxImp06) "medium sensitivity to warfarin"
* result[6] = Reference(Pgx-geno-1001) "CYP2C19*2/*2"
* result[7] = Reference(Pgx-geno-1003) "VKORC1 rs9923231 C/T"
* result[8] = Reference(Pgx-geno-1002) "CYP2C9*1/*1"
* result[9] = Reference(Pgx-var-1011) "NC_000010.10(CYP2C19):g.96521657C="
* result[10] = Reference(Pgx-var-1012) "NC_000010.10(CYP2C19):g.96522463A="
* result[11] = Reference(Pgx-var-1013) "NC_000010.10(CYP2C19):g.96535173T="
* result[12] = Reference(Pgx-var-1014) "NC_000010.10(CYP2C19):g.96535210G="
* result[13] = Reference(Pgx-var-1015) "NC_000010.10(CYP2C19):g.96540410G>A"
* result[14] = Reference(Pgx-var-1016) "NC_000010.10(CYP2C19):g.96541616G="
* result[15] = Reference(Pgx-var-1017) "NC_000010.10(CYP2C19):g.96541756T="
* result[16] = Reference(Pgx-var-1018) "NC_000010.10(CYP2C19):g.96612495C="
* result[17] = Reference(Pgx-var-1019) "NC_000016.9(VKORC1):g.31096368C>T"
* result[18] = Reference(Pgx-var-1020) "NC_000010.10(CYP2C9):g.96702047C="
* result[19] = Reference(Pgx-var-1021) "NC_000010.10(CYP2C9):g.96741053A="
* result[20] = Reference(RegionStudiedPGx1) "CYP2C19"
* result[21] = Reference(RegionStudiedPGx2) "CYP2C9"
* result[22] = Reference(RegionStudiedPGx3) "VKORC1"
* extension[RecommendedAction][0].valueReference = Reference(PGxRecEx01) "No clopidogrel"
* extension[RecommendedAction][1].valueReference = Reference(PGxRecEx02) "No voriconazole"
* extension[RecommendedAction][2].valueReference = Reference(PGxRecEx03) "50% citalopram"
* extension[RecommendedAction][3].valueReference = Reference(PGxRecEx04) "50% escitalopram"
* extension[RecommendedAction][4].valueReference = Reference(PGxRecEx04) "50% amitriptyline"
* extension[GenomicsFile][0].valueReference = Reference(VCFFile)
* extension[GenomicReportNote][0].valueAnnotation.extension[AnnotationCode].valueCodeableConcept = CodedAnnotationTypesCS#test-disclaimer
* extension[GenomicReportNote][0].valueAnnotation.text = """
This test was developed and its performance determined by this laboratory. It has not been cleared or approved by U.S. Food and Drug Administration.
Since FDA Approval is not required for clinical use of this test, this laboratory has established and validated the test's accuracy and precision,
pursuant to the requirement of CLIA '88. This laboratory is licensed and/or accredited under CLIA and CAP (CAP# xxxxxxx / CLIA# xxxxxxxxxx).
"""
* status = #final

Instance: PGxGenomicsReportEMERGE-withGrouping
InstanceOf: GenomicsReport
Description: "Example of a Report carrying multiple Therapeutic Implications, Genotypes, and Variants"
* id = "PGxGenomicsReportEMERGE-withGrouping"
* basedOn = Reference(eMERGEServiceRequest)
* code = https://hgsc.bcm.edu/lab-test-codes/#emerge-seq-ngs-pnl
* effectiveDateTime = "2020-01-01T00:00:00-05:00"
* issued = "2020-01-01T00:00:00-05:00"
* performer = Reference(ExampleOrg)
* subject = Reference(CGPatientExample01)
* result[0] = Reference(OverallInterpExample2) "gene-drug interactions found."
* result[1] = Reference(GrouperEx01) "Therapeutic Implications"
* result[2] = Reference(GrouperEx02) "Genotypes"
* result[3] = Reference(GrouperEx03) "Regions studied and Variants"
* extension[RecommendedAction][0].valueReference = Reference(PGxRecEx01) "No clopidogrel"
* extension[RecommendedAction][1].valueReference = Reference(PGxRecEx02) "No voriconazole"
* extension[RecommendedAction][2].valueReference = Reference(PGxRecEx03) "50% citalopram"
* extension[RecommendedAction][3].valueReference = Reference(PGxRecEx04) "50% escitalopram"
* extension[RecommendedAction][4].valueReference = Reference(PGxRecEx04) "50% amitriptyline"
* extension[GenomicsFile][0].valueReference = Reference(VCFFile)
* status = #final


Instance: PGxRecEx01
InstanceOf: FollowupRecommendation
Description: "Example of a Medication Recommendation for alternatives to clopidogrel"
* id = "PGxRecEx01"
* code = $LNC#LA26421-0 "Consider alternative medication"
* description = "For clopidogrel, individuals with this diplotype are expected to have significantly reduced platelet inhibition, increased residual platelet aggregation and increased risk for adverse cardiovascular events in response to clopidogrel. Alternative antiplatelet therapy (if no contraindication) is recommended. Refer to current guidelines for dosage and recommendations at https://cpicpgx.org/guidelines/guideline- for-clopidogrel-and-cyp2c19/"
* for = Reference(CGPatientExample01)
* reasonReference = Reference(TxImp01) "Poor metabolizer"

Instance: PGxRecEx02
InstanceOf: FollowupRecommendation
Description: "Example of a Medication Recommendation for alternatives to voriconazole"
* id = "PGxRecEx02"
* code = $LNC#LA26421-0 "Consider alternative medication"
* description = "voriconazole - An alternative agent that is not dependent on CYP2C19 metabolism such as isavuconazole, liposomal amphotericin B, or posaconazole is recommended as primary therapy in lieu of voriconazole. A lower than standard dosage of voriconazole with careful therapeutic drug monitoring is another alternative. Refer to current guidelines for dosage and recommendations at https://cpicpgx.org/guidelines/guideline-for-voriconazole-and-cyp2c19/."
* for = Reference(CGPatientExample01)
* reasonReference = Reference(TxImp02) "Poor metabolizer"

Instance: PGxRecEx03
InstanceOf: FollowupRecommendation
Description: "Example of a Medication Recommendation for decreasing dosage for citalopram"
* id = "PGxRecEx03"
* code = $LNC#LA26422-8 "Decrease dose"
* description = "For citalopram, a 50% reduction in starting dose is recommended with therapeutic drug monitoring to guide dose adjustment or select an alternate drug not predominantly metabolized by CYP2C19. Refer to current guidelines for dosage and recommendations at https://cpicpgx.org/guidelines/guideline-for-selective-serotonin-reuptake-inhibitors-and-cyp2d6-and-cyp2c19/. If CYP2D6 genotyping is available, refer to the current guidelines for dosing recommendations."
* for = Reference(CGPatientExample01)
* reasonReference = Reference(TxImp03) "Poor metabolizer"

Instance: PGxRecEx04
InstanceOf: FollowupRecommendation
Description: "Example of a Medication Recommendation for decreasing dosage for escitalopram"
* id = "PGxRecEx04"
* code = $LNC#LA26422-8 "Decrease dose"
* description = "For escitalopram, a 50% reduction in starting dose is recommended with therapeutic drug monitoring to guide dose adjustment or select an alternate drug not predominantly metabolized by CYP2C19. Refer to current guidelines for dosage and recommendations at https://cpicpgx.org/guidelines/guideline-for-selective-serotonin-reuptake-inhibitors-and-cyp2d6-and-cyp2c19/. If CYP2D6 genotyping is available, refer to the current guidelines for dosing recommendations."
* for = Reference(CGPatientExample01)
* reasonReference = Reference(TxImp04) "Poor metabolizer"

Instance: PGxRecEx05
InstanceOf: FollowupRecommendation
Description: "Example of a Medication Recommendation for decreasing dosage for amitriptyline"
* id = "PGxRecEx05"
* code = $LNC#LA26422-8 "Decrease dose"
* description = "For amitriptyline, a 50% reduction in starting dose is recommended with therapeutic drug monitoring to guide dose adjustment. Refer to current guidelines for dosage and recommendations at https://cpicpgx.org/guidelines/guideline-for- tricyclic-antidepressants-and-cyp2d6-and-cyp2c19/. If CYP2D6 genotyping is available, refer to the current guidelines for dosing recommendations."
* for = Reference(CGPatientExample01)
* reasonReference = Reference(TxImp05) "Poor metabolizer"

Instance: OverallInterpExample2
InstanceOf: OverallInterpretation
Description: "Example for Overall Interpretation."
* id = "OverallInterpExample2"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* valueCodeableConcept = $LNC#LA6576-8 "Positive"
* subject = Reference(CGPatientExample01)
* specimen = Reference(GenomicSpecimenExample01)
* status = #final
* component[conclusion-string].valueString = "Based on the genotype result, this patient is predicted to have a CYP2C19 poor metabolizer phenotype. This genotype information can be used by patients and clinicians as part of the shared decision-making process for several drugs metabolized by CYP2C19 including clopidogrel, voriconazole, amitriptyline, citalopram and escitalopram."


Instance: eMERGEServiceRequest
InstanceOf: ServiceRequest
Description: "Example PGx Service Request"
* id = "eMERGEServiceRequest"
* status = $REQUESTSTATUS#completed "completed"
* code = https://hgsc.bcm.edu/lab-test-codes/#emerge-seq-ngs-pnl
* subject = Reference(CGPatientExample01)
* intent = $REQUESTINTENT#order "Order"
* specimen = Reference(GenomicSpecimenExample01)
//* instantiatesCanonical = Reference(eMERGEPD)

/*
Instance: eMERGEPD
InstanceOf: PlanDefinition
Description: "Example Plan Definition from eMERGE"
* id = "eMERGEPD"
* url = "urn:uuid:69aaa45b-5c23-44cf-bfae-fd2d7b74a656"
* type.coding = http://terminology.hl7.org/CodeSystem/plan-definition-type#protocol
* status = #active
* description = "This test interrogates the protein-coding and exon-splicing regions of 109 genes as well as 1551 single-nucleotide polymorphisms that may impact human health and disease. Clinical interpretation and reporting are provided for pathogenic and likely pathogenic variants for genes and single nucleotide polymorphisms as described in the methodology section.",
//* relatedArtifact[0].type = #citation
//* relatedArtifact[0].citation = "Illumina, Inc. (2011) Multiplexing Sample Preparation Guide (Part # 1005361 Rev. D). 2011."
* action[0].prefix = "1"
* action[0].description = "1. eMERGE-Seq Version 2 NGS Panel: for the paired-end pre-capture library procedure, genome DNA is fragmented by sonicating genome DNA and ligating to the Illumina multiplexing PE adapters (reference 1).  The adapter-ligated DNA is then PCR amplified using primers with sequencing barcodes (indexes). For target enrichment capture procedure, the pre-capture library is enriched by hybridizing to biotin labeled in-solution probes&nbsp;(reference 2) at&nbsp; 56&deg;C for 16 - 19 hours.&nbsp; For massively parallel sequencing, the post-capture library DNA is subjected to sequence analysis on Illumina HiSeq platform for 100 bp paired-end reads. The following quality control metrics of the sequencing data are generally achieved: &gt;70% of reads aligned to target, &gt;99% target base covered at &gt;20X, &gt;98% target base covered at &gt;40X, average coverage of target bases &gt;200X. SNP concordance to SNPTrace genotype array: &gt;99%. This test may not provide detection of certain genes or portions of certain genes due to local sequence characteristics or the presence of closely related pseudogenes. Gross deletions or duplications, changes from repetitive sequences may not be accurately identified by this methodology. Genomic rearrangements cannot be detected by this assay."
*/


Instance: ExampleGermlineCNV
InstanceOf: Variant
Description: "Example for germline CNV"
* id = "ExampleGermlineCNV"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* method = $LNC#LA26398-0 "Sequencing"
* subject = Reference(CGPatientExample01)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* component[coding-change-type].valueCodeableConcept = $SEQONT#SO:0001019 "copy_number_variation"
* component[ref-allele].valueString = "T"
* component[genomic-source-class].valueCodeableConcept = $LNC#LA6683-2 "Germline"
* component[genomic-ref-seq].valueCodeableConcept = $NUCCORE#NC_000022.10
* component[copy-number].valueQuantity.value = 3
* component[copy-number].valueQuantity.code = #1
* component[copy-number].valueQuantity.system = $UCUM
* component[coordinate-system].valueCodeableConcept = $LNC#LA30102-0 "1-based character counting"
* component[inner-start-end].valueRange.low.value = 42523949
* component[inner-start-end].valueRange.high.value = 42533891

Instance: ExampleSomaticCNV
InstanceOf: Variant
Description: "Example for somatic CNV"
* id = "ExampleSomaticCNV"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* method = $LNC#LA26398-0 "Sequencing"
* subject = Reference(CGPatientExample01)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* component[coding-change-type].valueCodeableConcept = $SEQONT#SO:0001019 "copy_number_variation"
* component[ref-allele].valueString = "T"
* component[genomic-source-class].valueCodeableConcept = $LNC#LA6684-0 "Somatic"
* component[genomic-ref-seq].valueCodeableConcept = $NUCCORE#NC_000022.10
* component[copy-number].valueQuantity.value = 3
* component[copy-number].valueQuantity.code = #1
* component[copy-number].valueQuantity.system = $UCUM
* component[coordinate-system].valueCodeableConcept = $LNC#LA30102-0 "1-based character counting"
* component[inner-start-end].valueRange.low.value = 42523949
* component[inner-start-end].valueRange.high.value = 42533891

Instance: ExampleGermlineDEL
InstanceOf: Variant
Description: "Example for germline DEL"
* id = "ExampleGermlineDEL"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* method = $LNC#LA26398-0 "Sequencing"
* subject = Reference(CGPatientExample01)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* component[coding-change-type].valueCodeableConcept = $SEQONT#SO:0000159 "deletion"
* component[allelic-state].valueCodeableConcept = $LNC#LA6706-1 "heterozygous"
* component[ref-allele].valueString = "C"
* component[genomic-source-class].valueCodeableConcept = $LNC#LA6683-2 "Germline"
* component[genomic-ref-seq].valueCodeableConcept = $NUCCORE#NC_000001.10
* component[coordinate-system].valueCodeableConcept = $LNC#LA30102-0 "1-based character counting"
* component[inner-start-end].valueRange.low.value = 756295
* component[inner-start-end].valueRange.high.value = 756329

Instance: ExampleSomaticDEL
InstanceOf: Variant
Description: "Example for somatic DEL"
* id = "ExampleSomaticDEL"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* method = $LNC#LA26398-0 "Sequencing"
* subject = Reference(CGPatientExample01)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* component[coding-change-type].valueCodeableConcept = $SEQONT#SO:0000159 "deletion"
* component[ref-allele].valueString = "C"
* component[genomic-source-class].valueCodeableConcept = $LNC#LA6684-0 "Somatic"
* component[genomic-ref-seq].valueCodeableConcept = $NUCCORE#NC_000001.10
* component[copy-number].valueQuantity.value = 1
* component[copy-number].valueQuantity.code = #1
* component[copy-number].valueQuantity.system = $UCUM
* component[coordinate-system].valueCodeableConcept = $LNC#LA30102-0 "1-based character counting"
* component[inner-start-end].valueRange.low.value = 16360078
* component[inner-start-end].valueRange.high.value = 16383337

Instance: ExampleGermlineINV
InstanceOf: Variant
Description: "Example for germline INV"
* id = "ExampleGermlineINV"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* method = $LNC#LA26398-0 "Sequencing"
* subject = Reference(CGPatientExample01)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* component[coding-change-type].valueCodeableConcept = $SEQONT#SO:1000036 "inversion"
* component[allelic-state].valueCodeableConcept = $LNC#LA6706-1 "heterozygous"
* component[ref-allele].valueString = "C"
* component[genomic-source-class].valueCodeableConcept = $LNC#LA6683-2 "Germline"
* component[genomic-ref-seq].valueCodeableConcept = $NUCCORE#NC_000001.10
* component[coordinate-system].valueCodeableConcept = $LNC#LA30102-0 "1-based character counting"
* component[inner-start-end].valueRange.low.value = 12855952
* component[inner-start-end].valueRange.high.value = 13448205


Instance: ExampleSomaticINV
InstanceOf: Variant
Description: "Example for somatic INV"
* id = "ExampleSomaticINV"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* method = $LNC#LA26398-0 "Sequencing"
* subject = Reference(CGPatientExample01)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* component[coding-change-type].valueCodeableConcept = $SEQONT#SO:1000036 "inversion"
* component[ref-allele].valueString = "T"
* component[genomic-source-class].valueCodeableConcept = $LNC#LA6684-0 "Somatic"
* component[genomic-ref-seq].valueCodeableConcept = $NUCCORE#NC_000001.10
* component[coordinate-system].valueCodeableConcept = $LNC#LA30102-0 "1-based character counting"
* component[inner-start-end].valueRange.low.value = 70391323
* component[inner-start-end].valueRange.high.value = 70391466




Instance: VCFFile
InstanceOf: GenomicsDocumentReference
Description: "Example of what a VCF as a DocumentRefence would look like."
* id = "VCFFile"
* status = #current
* subject = Reference(CGPatientExample01)
* description = "... details about how this VCF was generated ..."
* content.attachment.url = "http://ftp.1000genomes.ebi.ac.uk/vol1/ftp/release/20130502/ALL.chr1.phase3_shapeit2_mvncall_integrated_v5b.20130502.genotypes.vcf.gz"
* context.related = Reference(PGxGenomicsReportEMERGE)


 //* Implication of polygenic risk score X - at risk for Type 2 Diabetes
Instance: PolyGenicDiagnosticImpExample
InstanceOf: DiagnosticImplication
Description: "Example of a Diagnostic Implication for Diabetes Type 2 with a polygenic risk score."
* id = "PolyGenicDiagnosticImpExample"
//* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/therapeutic-implication"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#diagnostic-implication
* status = #final
* performer = Reference(ExampleOrg)
* subject = Reference(CGPatientExample01)
* extension[GenomicsRiskAssessment][0].valueReference = Reference(GenRiskDiabetesT2) "Polygenic Risk Score"
//Reference(GenomicRiskAssesmPolyGenicScoreRef)
* component[clinical-significance].valueCodeableConcept = $LNC#LA6668-3 "Pathogenic"
* component[predicted-phenotype].valueCodeableConcept = $SCT#44054006 "Diabetes mellitus type 2 (disorder)"
* derivedFrom[0].display = "Variant 1"
* derivedFrom[0].identifier.system = "http://hospital.example.org"
* derivedFrom[0].identifier.value = "11"
* derivedFrom[1].display = "Variant 2"
* derivedFrom[1].identifier.system = "http://hospital.example.org"
* derivedFrom[1].identifier.value = "12"
* derivedFrom[2].display = "Variant 3"
* derivedFrom[2].identifier.system = "http://hospital.example.org"
* derivedFrom[2].identifier.value = "13"
* derivedFrom[3].display = "Variant 4"
* derivedFrom[3].identifier.system = "http://hospital.example.org"
* derivedFrom[3].identifier.value = "14"
* derivedFrom[4].display = "Variant 5"
* derivedFrom[4].identifier.system = "http://hospital.example.org"
* derivedFrom[4].identifier.value = "15"
* derivedFrom[5].display = "Variant 6"
* derivedFrom[5].identifier.system = "http://hospital.example.org"
* derivedFrom[5].identifier.value = "16"
* derivedFrom[6].display = "Variant 7"
* derivedFrom[6].identifier.system = "http://hospital.example.org"
* derivedFrom[6].identifier.value = "17"


//Risk assesment for polygenic Diaters2 GenRiskDiabetesT2

Instance: GenRiskDiabetesT2
InstanceOf: RiskAssessment
Description: "Polygenic Risk Score example"
//* id = GenRiskDiabetesT2
* parent = Reference (PolyGenicDiagnosticImpExample)
* status = #final
* subject = Reference(CGPatientExample01)
* basis[0].display = "Variant 1"
* basis[0].identifier.system = "http://hospital.example.org"
* basis[0].identifier.value = "11"
* basis[1].display = "Variant 2"
* basis[1].identifier.system = "http://hospital.example.org"
* basis[1].identifier.value = "12"
* basis[2].display = "Variant 3"
* basis[2].identifier.system = "http://hospital.example.org"
* basis[2].identifier.value = "13"
* basis[3].display = "Variant 4"
* basis[3].identifier.system = "http://hospital.example.org"
* basis[3].identifier.value = "14"
* basis[4].display = "Variant 5"
* basis[4].identifier.system = "http://hospital.example.org"
* basis[4].identifier.value = "15"
* basis[5].display = "Variant 6"
* basis[5].identifier.system = "http://hospital.example.org"
* basis[5].identifier.value = "16"
* basis[6].display = "Variant 7"
* basis[6].identifier.system = "http://hospital.example.org"
* basis[6].identifier.value = "17"

* prediction[0].outcome = $SCT#44054006 "Diabetes mellitus type 2 (disorder)"
* prediction[0].probabilityDecimal = 0.26
* prediction[0].qualitativeRisk = $RISKQUAL#low "Low likelihood"
* prediction[0].relativeRisk = 1.05
* prediction[0].whenRange.high = 53 'a' "years"
//.value = 53.0 'a'
//* prediction[0].whenRange.high.unit = "years"
//* prediction[0].whenRange.high.system = "http://unitsofmeasure.org"
//* prediction[0].whenRange.high.code = a
* prediction[1].outcome = $SCT#44054006 "Diabetes mellitus type 2 (disorder)"
* prediction[1].probabilityDecimal = 0.7
* prediction[1].qualitativeRisk = $RISKQUAL#high "High likelihood"
* prediction[1].relativeRisk = 2.69
* prediction[1].whenRange.high = 65 'a' "years"
//.value = 65.0 'a'
//* prediction[1].whenRange.high.unit = "years"
//* prediction[1].whenRange.high.system = "http://unitsofmeasure.org"
//* prediction[1].whenRange.high.code = a

Instance: Variant-Somatic-Clinical-Trial
InstanceOf: Variant
Description: "Example for Somatic Variant and Clinical Trial"
* id = "Variant-Somatic-Clinical-Trial"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* method = $LNC#LA26398-0 "Sequencing"
* subject = Reference(CGPatientExample01)
* specimen = Reference(GenomicSpecimenExample01)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* interpretation = $SCT#10828004 "Positive (qualifier value)"
* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:3689 "FGFR2"
* component[genomic-hgvs].valueCodeableConcept = $HGVS#NC_000010.11:g.121498525T>G "NC_000010.11:g.121498525T>G"
* component[genomic-source-class].valueCodeableConcept = $LNC#LA6684-0 "Somatic"

Instance: Therapeutic-Implication-Clinical-Trial-Somatic
InstanceOf: TherapeuticImplication
Description: "Example of a Therapeutic Implication for Clinical Trial"
* id = "Therapeutic-Implication-Clinical-Trial-Somatic"
//* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/therapeutic-implication"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#therapeutic-implication
* component[0].code.coding = TbdCodesCS#predicted-therapeutic-implication "Predicted Therapeutic Implication"
* component[0].valueCodeableConcept.coding = $SCT#399223003 "Patient eligible for clinical trial"
* component[1].code.coding = $LNC#81259-4 // "Phenotypic treatment context"
//#HP:0003002
* component[1].valueCodeableConcept.coding = 	$SCT#254837009 "Breast Cancer"
* component[2].code.coding = TbdCodesCS#associated-therapy "Associated Therapy"
* component[2].valueCodeableConcept.coding = $NCTTRIAL#NCT01234567 "NCT01234567"
* derivedFrom = Reference(Variant-Somatic-Clinical-Trial)
* status = #final


Instance: HaplotypeSet-Clinical-Trial-Example-1of2
InstanceOf: Haplotype
Description: "Example of a Haplotype as part of a Haplotype Set (1 of 2). A complete haplotype set defines a genotype."
* id = "HaplotypeSet-Clinical-Trial-Example-1of2"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* valueCodeableConcept.coding = $CLINVAR#441262 "APOE1"
* component[gene-studied].valueCodeableConcept.coding = http://www.genenames.org/geneId#HGNC:613 "APOE"
* effectiveDateTime = "2018"
* specimen = Reference(GenomicSpecimenExample02)
* subject = Reference(CGPatientExample01)
//* derivedFrom = NM_000041.2(APOE):c.526C>T (p.Arg176Cys) - Variation ID 17848
//* derivedFrom =NM_000041.4(APOE):c.434G>A (p.Gly145Asp) - Variation ID 478904
* status = #final

Instance: HaplotypeSet-Clinical-Trial-Example-2of2
InstanceOf: Haplotype
Description: "Example of a Haplotype as part of a Haplotype Set (2 of 2). A complete haplotype set defines a genotype."
* id = "HaplotypeSet-Clinical-Trial-Example-2of2"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* valueCodeableConcept.coding = $CLINVAR#441262 "APOE1"
* component[gene-studied].valueCodeableConcept.coding = http://www.genenames.org/geneId#HGNC:613 "APOE"
* effectiveDateTime = "2018"
* specimen = Reference(GenomicSpecimenExample02)
* subject = Reference(CGPatientExample01)
//* derivedFrom = NM_000041.2(APOE):c.526C>T (p.Arg176Cys) - Variation ID 17848
//* derivedFrom =NM_000041.4(APOE):c.434G>A (p.Gly145Asp) - Variation ID 478904
* status = #final

Instance: Genotype-Clinical-Trial-Example-using-haplotypes
InstanceOf: Genotype
Description: "Example of a Genotype. A complete haplotype set defines a genotype. In this example the gneotype is dervied from  observations of the underlying haplotypes."
* id = "Genotype-Clinical-Trial-Example-using-haplotypes"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* valueCodeableConcept.text = "APOE e1/e1"
* component[gene-studied].valueCodeableConcept.coding = http://www.genenames.org/geneId#HGNC:613 "APOE"
* effectiveDateTime = "2018"
* specimen = Reference(GenomicSpecimenExample02)
* subject = Reference(CGPatientExample01)
* derivedFrom[0] = Reference(HaplotypeSet-Clinical-Trial-Example-1of2)
* derivedFrom[1] = Reference(HaplotypeSet-Clinical-Trial-Example-2of2)
* status = #final

Instance: Therapeutic-Implication-Clinical-Trial-2
InstanceOf: TherapeuticImplication
Description: "Example of a Therapeutic Implication for Carbamazepine"
* id = "Therapeutic-Implication-Clinical-Trial-2"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#therapeutic-implication
* specimen = Reference(GenomicSpecimenExample02)
* subject = Reference(CGPatientExample01)
* component[0].code.coding = TbdCodesCS#predicted-therapeutic-implication "Predicted Therapeutic Implication"
* component[0].valueCodeableConcept.coding = $SCT#444734003 "Does not meet eligibility criteria for clinical trial"
* component[1].code.coding = TbdCodesCS#associated-therapy "Associated Therapy"
* component[1].valueCodeableConcept.coding = $NCTTRIAL#NCT03131453 "NCT03131453"
* derivedFrom = Reference(Genotype-Clinical-Trial-Example-using-haplotypes)
* status = #final

Instance: GenomicSpecimenExample02
InstanceOf: Specimen
Description: "Example for Genomic Specimen from Buccal Swab"
* id = "GenomicSpecimenExample02"
* subject = Reference(CGPatientExample01)
//* text.status = #"generated"
//* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n <pre>Buccal smear sample </pre>\n </div>"
* status = #available "Available"
* processing.timeDateTime = "2020-10-05"
* type = $SCT#258564008 "Buccal smear sample"
* identifier.system  = "http://myorgsurl.com"
* identifier.value = "123"
* accessionIdentifier.system = "http://mylabsurl.com"
* accessionIdentifier.value = "456"

Instance: HaplotypeExamplePharmVar01
InstanceOf: Haplotype
Title: "HaplotypeExamplePharmVar01"
Description: "Example of a Haplotype using PharmVar"
* id = "HaplotypeExamplePharmVar01"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* valueCodeableConcept.coding = http://www.pharmvar.org#PV00155 "CYP2D6*7.001" //https://www.pharmvar.org/api-service/alleles/pv00155
* component[gene-studied].valueCodeableConcept.coding = http://www.genenames.org/geneId#HGNC:2625 "CYP2D6"
* effectiveDateTime = "2021"
* specimen = Reference(GenomicSpecimenExample01)
* subject = Reference(CGPatientExample01)
* status = #final

Instance: HaplotypeExamplePharmVar02
InstanceOf: Haplotype
Title: "HaplotypeExamplePharmVar02"
Description: "Example of a Haplotype using PharmVar"
* id = "HaplotypeExamplePharmVar02"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* valueCodeableConcept.coding = http://www.pharmvar.org#PV00126 "CYP2D6*1.001" //https://www.pharmvar.org/api-service/alleles/pv00126
* component[gene-studied].valueCodeableConcept.coding = http://www.genenames.org/geneId#HGNC:2625 "CYP2D6"
* effectiveDateTime = "2021"
* specimen = Reference(GenomicSpecimenExample01)
* subject = Reference(CGPatientExample01)
* status = #final

Instance: GenotypeExamplePharmVar
InstanceOf: Genotype
Title: "GenotypeExamplePharmVar"
Description: "Example of a Genotype using Pharmvar Haplotypes"
* id = "GenotypeExamplePharmVar"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* valueCodeableConcept.text = "CYP2D6*7.001 / CYP2D6*1.001"
* component[gene-studied].valueCodeableConcept.coding = http://www.genenames.org/geneId#HGNC:2625 "CYP2D6"
* effectiveDateTime = "2021"
* specimen = Reference(GenomicSpecimenExample01)
* subject = Reference(CGPatientExample01)
* status = #final
* derivedFrom[+] = Reference(HaplotypeExamplePharmVar01)
* derivedFrom[+] = Reference(HaplotypeExamplePharmVar02)
