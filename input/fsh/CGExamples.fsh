Instance: GenomicSpecimenExample01 
InstanceOf: GenomicSpecimen
Description: "Example for Genomic Specimen"
* id = "GenomicSpecimenExample01"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/specimen"
// * text = "Genomic specimen example"
* status = #available "Available"
* subject = Reference(CGPatientExample01)
* processing.timeDateTime = "2020-10-05"
* type = SPTY#TISS "Tissue"

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
* category[labCategory] = ObsCat#laboratory
* subject = Reference(CGPatientExample01)
* valueQuantity.value = 250

Instance: MicrosatelliteInstabilityExample01
InstanceOf: MSI
Description: "Example for MSI"
* id = "MicrosatelliteInstabilityExample01"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/msi"
* status = #final "final"
* category[labCategory] = ObsCat#laboratory
* subject = Reference(CGPatientExample01)
* valueCodeableConcept = LNC#LA14122-8 "Stable"

Instance: GenomicsServiceRequestExample01
InstanceOf: servicerequest
Description: "Example for Service Request"
* id = "GenomicsServiceRequestExample01"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/servicerequest"
* status = RequestStatus#completed "completed"
* code = LNC#94231-8 "G6PD gene full mutation analysis in Blood or Tissue by Sequencing"
* subject = Reference(CGPatientExample01)
* intent = RequestIntent#order "Order"
* specimen = Reference(GenomicSpecimenExample01)

Instance: VariantExample1
InstanceOf: Variant
Description: "Example for Variant given by ClinVar ID"
* id = "VariantExample1"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = ObsCat#laboratory
* method = LNC#LA26398-0 "Sequencing"
* subject = Reference(CGPatientExample01)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* interpretation = SCT#10828004 "Positive (qualifier value)"
* component[gene-studied].valueCodeableConcept = HGNCID#HGNC:11389 "STK11"
* component[variation-code].valueCodeableConcept = CLINVAR#619728 "NC_000019.8:g.1171707G>A"
//* component[genomic-dna-chg].valueCodeableConcept = HGVS#NC_000019.8:g.1171707G>A "NC_000019.8:g.1171707G>A"
* component[genomic-source-class].valueCodeableConcept = LNC#LA6684-0 "Somatic"

Instance: VariantExample2
InstanceOf: Variant
Description: "Example for genomic Variant given by VCF columns"
* id = "VariantExample2"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = ObsCat#laboratory
* method = LNC#LA26398-0 "Sequencing"
* subject = Reference(CGPatientExample01)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[0].code.coding = http://loinc.org#62374-4 "Human reference sequence assembly version"
* component[0].valueCodeableConcept.coding = http://loinc.org#LA14029-5 "GRCh37"
* component[1].code.coding = http://loinc.org#48013-7 "Genomic reference sequence ID"
* component[1].valueCodeableConcept.coding = http://www.ncbi.nlm.nih.gov/nuccore#NC_000010.10
* component[2].code.coding = http://loinc.org#53034-5 "Allelic state"
* component[2].valueCodeableConcept.coding = http://loinc.org#LA6706-1 "heterozygous"
* component[3].code.coding = http://loinc.org#69547-8 "Ref nucleotide"
* component[3].valueString = "C"
* component[4].code.coding = http://loinc.org#69551-0 "Alt allele"
* component[4].valueString = "A"
* component[5].code.coding = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/TbdCodes#exact-start-end "Variant exact start and end"
* component[5].valueRange.low.value = 96527334
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
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = TbdCodes#therapeutic-implication
* component[0].code.coding = LNC#83009-1 "Genetic variation's effect on high-risk allele"
* component[0].valueCodeableConcept.coding = LNC#LA19541-4 "High risk"
* component[1].code.coding = LNC#51963-7 "Medication assessed"
* component[1].valueCodeableConcept.coding = http://www.nlm.nih.gov/research/umls/rxnorm#2002 "Carbamazepine"
//* component[2].code.coding = LNC#93044-6 "Level of evidence"
//* component[2].valueCodeableConcept.coding = LNC#LA30200-2 "Very strong evidence pathogenic"
* derivedFrom = Reference(GenotypeExample1)
* status = #final

Instance: AnnotationExample
InstanceOf: DiagnosticImplication
Description: "Example of a Diagnostic Implication for Familial hypercholesterolemia"
* id = "AnnotationExample"
//* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/therapeutic-implication"
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = TbdCodes#diagnostic-implication
* component[clinical-significance].valueCodeableConcept = LNC#LA6668-3 "Pathogenic"
* component[associated-phenotype].valueCodeableConcept = SCT#398036000 "Familial hypercholesterolemia (disorder)"
* derivedFrom = Reference(VariantExample2)
* status = #final


Instance: GenotypeExample1
InstanceOf: Genotype
Description: "Example of a Genotype, Medication Usage Task, and MedicationStatement"
* id = "GenotypeExample1"
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* valueCodeableConcept.coding = http://www.ncbi.nlm.nih.gov/clinvar#14909 "HLA-B*15:02"
* component.code.coding = LNC#48018-6 "Gene studied ID"
* component.valueCodeableConcept.coding = http://www.genenames.org/geneId#HGNC:4932 "HLA-B"
* effectiveDateTime = "2018"
* specimen = Reference(GenomicSpecimenExample01)
* subject = Reference(CGPatientExample01)
* status = #final

Instance: TaskMedChgExample1
InstanceOf: TaskMedChg
Description: "Example of a Medication Usage Task"
* id = "TaskMedChgExample1"
* code = LNC#LA26421-0
* description = "Patients positive for this allele should not be treated with CBZ, unless the benefits clearly outweigh the risk. Therapy should be discontinued immediately if symptoms of SJS or TEN develop. Alternative medication should be used as first line therapy. Consideration in the choice for alternative medications should be given to potential cross-reactivity with structurally similar aromatic antiepileptic drugs such as oxcarbazepine, phenytoin, fosphenytoin and lamotrigine, which can also moderately increase risk for SJS/TEN in association with HLA-B*15:02 positivity."
* for = Reference(CGPatientExample01)
* intent = #proposal
* reasonReference = Reference(TherapeuticImplicationExample1)
* status = #requested

Instance: GenomicsReportExample01
InstanceOf: GenomicsReport
Description: "Example of a Report carrying a Genotype, Therapeutic Implication, and Medication Usage Task"
* id = "GenomicsReportExample01"
* basedOn = Reference(GenomicsServiceRequestExample01)
* code = LNC#57979-7 "HLA-B*15:02 [Presence]"
* effectiveDateTime = "2016"
* extension.url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/RecommendedAction"
* extension.valueReference = Reference(TaskMedChgExample1)
* issued = "2018-03-06T00:00:00-05:00"
* performer = Reference(ExampleOrg)
* result[0].display = "impact for high risk allele"
* result[0] = Reference(TherapeuticImplicationExample1)
* result[1] = Reference(GenotypeExample1)
* result[2] = Reference(OverallInterpExample1)
* status = #final
* subject = Reference(CGPatientExample01)

Instance: SequencePhaseRelationExample1
InstanceOf: SequencePhaseRelationship
Description: "Example for sequence phase relation."
* id = "SequencePhaseRelationExample1"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/sequence-phase-relationship"
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* derivedFrom[0] = Reference(VariantExample1)
* derivedFrom[1] = Reference(VariantExample2)
* issued = "2019-03-05T16:04:44+00:00"
* status = #final
* valueCodeableConcept = SequencePhaseRelationshipCS#Cis "Cis"

Instance: OverallInterpExample1
InstanceOf: OverallInterpretation
Description: "Example for Overall Interpretation."
* id = "OverallInterpExample1"
* valueCodeableConcept = LNC#LA6576-8 "Positive"
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
* category[labCategory] = ObsCat#laboratory
* method = LNC#LA26398-0 "Sequencing"
* subject = Reference(CGPatientExample01)
* effectiveDateTime = "2020-01-01"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[genomic-dna-chg].valueCodeableConcept = HGVS#NC_000010.10:g.96521657C=
* component[genomic-source-class].valueCodeableConcept = LNC#LA6683-2 "Germline"
* component[allelic-state].valueCodeableConcept = LNC#LA6705-3 "homozygous"
* component[gene-studied].valueCodeableConcept = HGNCID#HGNC:2621 "CYP2C19"
* component[dna-chg-type].valueCodeableConcept = SEQONT#SO:0002073 "wild type"
* component[allelic-read-depth].valueQuantity.value = 20
* component[allelic-read-depth].valueQuantity.comparator = #>

Instance: Pgx-var-1012
InstanceOf: Variant
Description: "Example variant 1012"
* id = "Pgx-var-1012"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = ObsCat#laboratory
* method = LNC#LA26398-0 "Sequencing"
* subject = Reference(CGPatientExample01)
* effectiveDateTime = "2020-01-01"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[genomic-dna-chg].valueCodeableConcept = HGVS#NC_000010.10:g.96522463A=
* component[genomic-source-class].valueCodeableConcept = LNC#LA6683-2 "Germline"
* component[allelic-state].valueCodeableConcept = LNC#LA6705-3 "homozygous"
* component[gene-studied].valueCodeableConcept = HGNCID#HGNC:2621 "CYP2C19"
* component[dna-chg-type].valueCodeableConcept = SEQONT#SO:0002073 "wild type"
* component[allelic-read-depth].valueQuantity.value = 20
* component[allelic-read-depth].valueQuantity.comparator = #>

Instance: Pgx-var-1013
InstanceOf: Variant
Description: "Example variant 1013"
* id = "Pgx-var-1013"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = ObsCat#laboratory
* method = LNC#LA26398-0 "Sequencing"
* subject = Reference(CGPatientExample01)
* effectiveDateTime = "2020-01-01"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[genomic-dna-chg].valueCodeableConcept = HGVS#NC_000010.10:g.96535173T=
* component[genomic-source-class].valueCodeableConcept = LNC#LA6683-2 "Germline"
* component[allelic-state].valueCodeableConcept = LNC#LA6705-3 "homozygous"
* component[gene-studied].valueCodeableConcept = HGNCID#HGNC:2621 "CYP2C19"
* component[dna-chg-type].valueCodeableConcept = SEQONT#SO:0002073 "wild type"
* component[allelic-read-depth].valueQuantity.value = 20
* component[allelic-read-depth].valueQuantity.comparator = #>


Instance: Pgx-var-1014
InstanceOf: Variant
Description: "Example variant 1014"
* id = "Pgx-var-1014"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = ObsCat#laboratory
* method = LNC#LA26398-0 "Sequencing"
* subject = Reference(CGPatientExample01)
* effectiveDateTime = "2020-01-01"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[genomic-dna-chg].valueCodeableConcept = HGVS#NC_000010.10:g.96535210G=
* component[genomic-source-class].valueCodeableConcept = LNC#LA6683-2 "Germline"
* component[allelic-state].valueCodeableConcept = LNC#LA6705-3 "homozygous"
* component[gene-studied].valueCodeableConcept = HGNCID#HGNC:2621 "CYP2C19"
* component[dna-chg-type].valueCodeableConcept = SEQONT#SO:0002073 "wild type"
* component[allelic-read-depth].valueQuantity.value = 20
* component[allelic-read-depth].valueQuantity.comparator = #>

Instance: Pgx-var-1015
InstanceOf: Variant
Description: "Example variant 1015"
* id = "Pgx-var-1015"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = ObsCat#laboratory
* method = LNC#LA26398-0 "Sequencing"
* subject = Reference(CGPatientExample01)
* effectiveDateTime = "2020-01-01"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[genomic-dna-chg].valueCodeableConcept = HGVS#NC_000010.10:g.96540410G>A
* component[genomic-source-class].valueCodeableConcept = LNC#LA6683-2 "Germline"
* component[allelic-state].valueCodeableConcept = LNC#LA6705-3 "homozygous"
* component[gene-studied].valueCodeableConcept = HGNCID#HGNC:2621 "CYP2C19"
* component[dna-chg-type].valueCodeableConcept = SEQONT#SO:1000002 "substitution"
* component[allelic-read-depth].valueQuantity.value = 20
* component[allelic-read-depth].valueQuantity.comparator = #>

Instance: Pgx-var-1016
InstanceOf: Variant
Description: "Example variant 1016"
* id = "Pgx-var-1016"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = ObsCat#laboratory
* method = LNC#LA26398-0 "Sequencing"
* subject = Reference(CGPatientExample01)
* effectiveDateTime = "2020-01-01"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[genomic-dna-chg].valueCodeableConcept = HGVS#NC_000010.10:g.96541616G=
* component[genomic-source-class].valueCodeableConcept = LNC#LA6683-2 "Germline"
* component[allelic-state].valueCodeableConcept = LNC#LA6705-3 "homozygous"
* component[gene-studied].valueCodeableConcept = HGNCID#HGNC:2621 "CYP2C19"
* component[dna-chg-type].valueCodeableConcept = SEQONT#SO:1000002 "wild type"
* component[allelic-read-depth].valueQuantity.value = 20
* component[allelic-read-depth].valueQuantity.comparator = #>

Instance: Pgx-var-1017
InstanceOf: Variant
Description: "Example variant 1017"
* id = "Pgx-var-1017"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = ObsCat#laboratory
* method = LNC#LA26398-0 "Sequencing"
* subject = Reference(CGPatientExample01)
* effectiveDateTime = "2020-01-01"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[genomic-dna-chg].valueCodeableConcept = HGVS#NC_000010.10:g.96541756T=
* component[genomic-source-class].valueCodeableConcept = LNC#LA6683-2 "Germline"
* component[allelic-state].valueCodeableConcept = LNC#LA6705-3 "homozygous"
* component[gene-studied].valueCodeableConcept = HGNCID#HGNC:2621 "CYP2C19"
* component[dna-chg-type].valueCodeableConcept = SEQONT#SO:1000002 "wild type"
* component[allelic-read-depth].valueQuantity.value = 20
* component[allelic-read-depth].valueQuantity.comparator = #>

Instance: Pgx-var-1018
InstanceOf: Variant
Description: "Example variant 1018"
* id = "Pgx-var-1018"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = ObsCat#laboratory
* method = LNC#LA26398-0 "Sequencing"
* subject = Reference(CGPatientExample01)
* effectiveDateTime = "2020-01-01"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[genomic-dna-chg].valueCodeableConcept = HGVS#NC_000010.10:g.96612495C=
* component[genomic-source-class].valueCodeableConcept = LNC#LA6683-2 "Germline"
* component[allelic-state].valueCodeableConcept = LNC#LA6705-3 "homozygous"
* component[gene-studied].valueCodeableConcept = HGNCID#HGNC:2621 "CYP2C19"
* component[dna-chg-type].valueCodeableConcept = SEQONT#SO:1000002 "wild type"
* component[allelic-read-depth].valueQuantity.value = 20
* component[allelic-read-depth].valueQuantity.comparator = #>

Instance: Pgx-var-1019
InstanceOf: Variant
Description: "Example variant 1019"
* id = "Pgx-var-1019"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = ObsCat#laboratory
* method = LNC#LA26398-0 "Sequencing"
* subject = Reference(CGPatientExample01)
* effectiveDateTime = "2020-01-01"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[genomic-dna-chg].valueCodeableConcept = HGVS#NC_000016.9:g.31096368C>T
* component[genomic-source-class].valueCodeableConcept = LNC#LA6683-2 "Germline"
* component[allelic-state].valueCodeableConcept = LNC#LA6706-1 "heterozygous"
* component[gene-studied].valueCodeableConcept = HGNCID#HGNC:23663 "VKORC1"
* component[dna-chg-type].valueCodeableConcept = SEQONT#SO:1000002 "substitution"
* component[allelic-read-depth].valueQuantity.value = 20
* component[allelic-read-depth].valueQuantity.comparator = #>

Instance: Pgx-var-1020
InstanceOf: Variant
Description: "Example variant 1020"
* id = "Pgx-var-1020"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = ObsCat#laboratory
* method = LNC#LA26398-0 "Sequencing"
* subject = Reference(CGPatientExample01)
* effectiveDateTime = "2020-01-01"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[genomic-dna-chg].valueCodeableConcept = HGVS#NC_000010.10:g.96702047C=
* component[genomic-source-class].valueCodeableConcept = LNC#LA6683-2 "Germline"
* component[allelic-state].valueCodeableConcept = LNC#LA6705-3 "homozygous"
* component[gene-studied].valueCodeableConcept = HGNCID#HGNC:2623 "CYP2C9"
* component[dna-chg-type].valueCodeableConcept = SEQONT#SO:1000002 "wild type"
* component[allelic-read-depth].valueQuantity.value = 20
* component[allelic-read-depth].valueQuantity.comparator = #>

Instance: Pgx-var-1021
InstanceOf: Variant
Description: "Example variant 1021"
* id = "Pgx-var-1021"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = ObsCat#laboratory
* method = LNC#LA26398-0 "Sequencing"
* subject = Reference(CGPatientExample01)
* effectiveDateTime = "2020-01-01"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[genomic-dna-chg].valueCodeableConcept = HGVS#NC_000010.10:g.96741053A=
* component[genomic-source-class].valueCodeableConcept = LNC#LA6683-2 "Germline"
* component[allelic-state].valueCodeableConcept = LNC#LA6705-3 "homozygous"
* component[gene-studied].valueCodeableConcept = HGNCID#HGNC:2623 "CYP2C9"
* component[dna-chg-type].valueCodeableConcept = SEQONT#SO:1000002 "wild type"
* component[allelic-read-depth].valueQuantity.value = 20
* component[allelic-read-depth].valueQuantity.comparator = #>

Instance: Pgx-geno-1001
InstanceOf: Genotype
Description: "Example of a Genotype from eMERGE"
* id = "Pgx-geno-1001"
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* valueCodeableConcept.coding = http://www.ncbi.nlm.nih.gov/clinvar#638797 "CYP2C19*2/*2"
* component[gene-studied].valueCodeableConcept = HGNCID#HGNC:2621 "CYP2C19"
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
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = TbdCodes#therapeutic-implication
* component[medication-assessed].valueCodeableConcept = MetaT#C0070166 "clopidogrel"
* component[effect-medication-metabolism].valueCodeableConcept = LNC#LA9657-3 "Poor metabolizer"
* component[conclusion-string].valueString = "For clopidogrel, individuals with this diplotype are expected to have significantly reduced platelet inhibition, increased residual platelet aggregation and increased risk for adverse cardiovascular events in response to clopidogrel. Alternative antiplatelet therapy (if no contraindication) is recommended. Refer to current guidelines for dosage and recommendations at https://cpicpgx.org/guidelines/guideline- for-clopidogrel-and-cyp2c19/"
//* extension[CGRelatedArtifact].valueRelatedArtifact.type = #citation
//* extension[CGRelatedArtifact].valueRelatedArtifact.url = "https://cpicpgx.org/guidelines/guideline-for-clopidogrel-and-cyp2c19)"
* derivedFrom = Reference(Pgx-geno-1001)
* status = #final

Instance: TxImp02
InstanceOf: TherapeuticImplication
Description: "Example of a Therapeutic Implication from eMERGE"
* id = "TxImp02"
//* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/therapeutic-implication"
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = TbdCodes#therapeutic-implication
* component[medication-assessed].valueCodeableConcept = MetaT#C0393080 "voriconazole"
* component[effect-medication-metabolism].valueCodeableConcept = LNC#LA9657-3 "Poor metabolizer"
* component[conclusion-string].valueString = "For voriconazole, higher dose-adjusted trough concentrations of voriconazole are expected in individuals with this genotype and may increase the probability of adverse events. An alternative agent that is not dependent on CYP2C19 metabolism such as isavuconazole, liposomal amphotericin B, or posaconazole is recommended as primary therapy in lieu of voriconazole. A lower than standard dosage of voriconazole with careful therapeutic drug monitoring is another alternative. Refer to current guidelines for dosage and recommendations at https://cpicpgx.org/guidelines/guideline-for-voriconazole-and-cyp2c19/."
//* extension[CGRelatedArtifact].valueRelatedArtifact.type = #citation
//* extension[CGRelatedArtifact].valueRelatedArtifact.url = "https://cpicpgx.org/guidelines/guideline-for-voriconazole-and-cyp2c19/"
* derivedFrom = Reference(Pgx-geno-1001)
* status = #final

Instance: TxImp03
InstanceOf: TherapeuticImplication
Description: "Example of a Therapeutic Implication from eMERGE"
* id = "TxImp03"
//* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/therapeutic-implication"
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = TbdCodes#therapeutic-implication
* component[medication-assessed].valueCodeableConcept = MetaT#C0008845 "citalopram"
* component[effect-medication-metabolism].valueCodeableConcept = LNC#LA9657-3 "Poor metabolizer"
* component[conclusion-string].valueString = "For citalopram, a 50% reduction in starting dose is recommended with therapeutic drug monitoring to guide dose adjustment or select an alternate drug not predominantly metabolized by CYP2C19. Refer to current guidelines for dosage and recommendations at https://cpicpgx.org/guidelines/guideline-for-selective-serotonin-reuptake-inhibitors-and-cyp2d6-and-cyp2c19/. If CYP2D6 genotyping is available, refer to the current guidelines for dosing recommendations."
//* extension[CGRelatedArtifact].valueRelatedArtifact.type = #citation
//* extension[CGRelatedArtifact].valueRelatedArtifact.url = "https://cpicpgx.org/guidelines/guideline-for-selective-serotonin-reuptake-inhibitors-and-cyp2d6-and-cyp2c19/"
* derivedFrom = Reference(Pgx-geno-1001)
* status = #final

Instance: TxImp04
InstanceOf: TherapeuticImplication
Description: "Example of a Therapeutic Implication from eMERGE"
* id = "TxImp04"
//* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/therapeutic-implication"
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = TbdCodes#therapeutic-implication
* component[medication-assessed].valueCodeableConcept = MetaT#C1099456 "escitalopram"
* component[effect-medication-metabolism].valueCodeableConcept = LNC#LA9657-3 "Poor metabolizer"
* component[conclusion-string].valueString = "For escitalopram, a 50% reduction in starting dose is recommended with therapeutic drug monitoring to guide dose adjustment or select an alternate drug not predominantly metabolized by CYP2C19. Refer to current guidelines for dosage and recommendations at https://cpicpgx.org/guidelines/guideline-for-selective-serotonin-reuptake-inhibitors-and-cyp2d6-and-cyp2c19/. If CYP2D6 genotyping is available, refer to the current guidelines for dosing recommendations."
//* extension[CGRelatedArtifact].valueRelatedArtifact.type = #citation
//* extension[CGRelatedArtifact].valueRelatedArtifact.url = "https://cpicpgx.org/guidelines/guideline-for-selective-serotonin-reuptake-inhibitors-and-cyp2d6-and-cyp2c19/"
* derivedFrom = Reference(Pgx-geno-1001)
* status = #final

Instance: TxImp05
InstanceOf: TherapeuticImplication
Description: "Example of a Therapeutic Implication from eMERGE"
* id = "TxImp05"
//* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/therapeutic-implication"
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = TbdCodes#therapeutic-implication
* component[medication-assessed].valueCodeableConcept = MetaT#C0002600 "amitriptyline"
* component[effect-medication-metabolism].valueCodeableConcept = LNC#LA9657-3 "Poor metabolizer"
* component[conclusion-string].valueString = "For amitriptyline, a 50% reduction in starting dose is recommended with therapeutic drug monitoring to guide dose adjustment. Refer to current guidelines for dosage and recommendations at https://cpicpgx.org/guidelines/guideline-for- tricyclic-antidepressants-and-cyp2d6-and-cyp2c19/. If CYP2D6 genotyping is available, refer to the current guidelines for dosing recommendations."
//* extension[CGRelatedArtifact].valueRelatedArtifact.type = #citation
//* extension[CGRelatedArtifact].valueRelatedArtifact.url = "https://cpicpgx.org/guidelines/guideline-for-tricyclic-antidepressants-and-cyp2d6-and-cyp2c19/"
* derivedFrom = Reference(Pgx-geno-1001)
* status = #final

Instance: Pgx-geno-1002
InstanceOf: Genotype
Description: "Example of a Genotype from eMERGE"
* id = "Pgx-geno-1002"
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* valueCodeableConcept.text = "CYP2C9*1/*1"
* component[gene-studied].valueCodeableConcept = HGNCID#HGNC:2623 "CYP2C9"
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
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* valueCodeableConcept.text = "VKORC1 rs9923231 C/T"
* component[gene-studied].valueCodeableConcept = HGNCID#HGNC:23663 "VKORC1"
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
//* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/therapeutic-implication"
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = TbdCodes#therapeutic-implication
* component[medication-assessed].valueCodeableConcept = MetaT#C0043031 "warfarin"
* component[effect-medication-metabolism].valueCodeableConcept = LNC#LA25391-6 "Normal metabolizer"
* component[conclusion-string].valueString = "This individual is homozygous for the normal allele for the CYP2C9 gene. Based on the genotype result, this patient is predicted to have normal CYP2C9 function. This individual is also heterozygous for the variant allele for the VKORC1 gene. Expression level of the VKORC1 gene is associated with warfarin sensitivity. Based on the genotype result, this patient is predicted to have medium sensitivity to warfarin. See https://cpicpgx.org/guidelines/guideline-for-warfarin-and-cyp2c9-and-vkorc1/ guidelines for detail."
//* extension[CGRelatedArtifact].valueRelatedArtifact.type = #citation
//* extension[CGRelatedArtifact].valueRelatedArtifact.url = "https://cpicpgx.org/guidelines/guideline-for-warfarin-and-cyp2c9-and-vkorc1/"
* derivedFrom[0] = Reference(Pgx-geno-1002) "CYP2C9*1/*1"
* derivedFrom[1] = Reference(Pgx-geno-1003) "VKORC1 rs9923231 C/T"
* status = #final


Instance: GrouperEx01
InstanceOf: Grouper
Description: "Therapeutic Implications"
* id = "GrouperEx01"
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* status = #final
* hasMember[therapeutic-implication][0] = Reference(TxImp01) "clopidogrel, poor metabolizer"
* hasMember[therapeutic-implication][1] = Reference(TxImp02) "voriconazole, poor metabolizer"
* hasMember[therapeutic-implication][2] = Reference(TxImp03) "citalopram, poor metabolizer"
* hasMember[therapeutic-implication][3] = Reference(TxImp04) "escitalopram, poor metabolizer"
* hasMember[therapeutic-implication][4] = Reference(TxImp05) "amitriptyline, poor metabolizer"
* hasMember[therapeutic-implication][5] = Reference(TxImp06) "medium sensitivity to warfarin"

Instance: GrouperEx02
InstanceOf: Grouper
Description: "Genotypes"
* id = "GrouperEx02"
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = TbdCodes#grouper
* status = #final
* hasMember[genotype][0] = Reference(Pgx-geno-1001)
* hasMember[genotype][1] = Reference(Pgx-geno-1003)
* hasMember[genotype][2] = Reference(Pgx-geno-1002)


Instance: GrouperEx03
InstanceOf: Grouper
Description: "Regions Studied and variant info"
* id = "GrouperEx03"
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = TbdCodes#grouper
* status = #final
* hasMember[variant][0] = Reference(Pgx-var-1011) "NC_000010.10(CYP2C19):g.96521657C="
* hasMember[variant][1] = Reference(Pgx-var-1012) "NC_000010.10(CYP2C19):g.96522463A="
* hasMember[variant][2] = Reference(Pgx-var-1013) "NC_000010.10(CYP2C19):g.96535173T="
* hasMember[variant][3] = Reference(Pgx-var-1014) "NC_000010.10(CYP2C19):g.96535210G="
* hasMember[variant][4] = Reference(Pgx-var-1015) "NC_000010.10(CYP2C19):g.96540410G>A"
* hasMember[variant][5] = Reference(Pgx-var-1016) "NC_000010.10(CYP2C19):g.96541616G="
* hasMember[variant][6] = Reference(Pgx-var-1017) "NC_000010.10(CYP2C19):g.96541756T="
* hasMember[variant][7] = Reference(Pgx-var-1018) "NC_000010.10(CYP2C19):g.96612495C="
* hasMember[variant][8] = Reference(Pgx-var-1019) "NC_000016.9(VKORC1):g.31096368C>T"
* hasMember[variant][9] = Reference(Pgx-var-1020) "NC_000010.10(CYP2C9):g.96702047C="
* hasMember[variant][10] = Reference(Pgx-var-1021) "NC_000010.10(CYP2C9):g.96741053A="
* hasMember[region-studied][0] = Reference(RegionStudiedPGx1) "CYP2C19"
* hasMember[region-studied][1] = Reference(RegionStudiedPGx2) "CYP2C9"
* hasMember[region-studied][2] = Reference(RegionStudiedPGx3) "VKORC1"

//* variants if needed

Instance: RegionStudiedPGx1
InstanceOf: RegionStudied
Description: "eMERGE PGx CYP2C19"
* id = "RegionStudiedPGx1"
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* status = #final
* component[region-description].valueString = "protein-coding and exon-splicing regions."
* component[gene-studied].valueCodeableConcept = HGNCID#HGNC:2621 "CYP2C19"
* component[region-coverage].valueQuantity.value = 100


Instance: RegionStudiedPGx2
InstanceOf: RegionStudied
Description: "eMERGE PGx CYP2C9"
* id = "RegionStudiedPGx2"
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* status = #final
* component[region-description].valueString = "protein-coding and exon-splicing regions."
* component[gene-studied].valueCodeableConcept = HGNCID#HGNC:2623 "CYP2C9"
* component[region-coverage].valueQuantity.value = 100

Instance: RegionStudiedPGx3
InstanceOf: RegionStudied
Description: "eMERGE PGx VKORC1"
* id = "RegionStudiedPGx3"
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* status = #final
* component[region-description].valueString = "protein-coding and exon-splicing regions."
* component[gene-studied].valueCodeableConcept = HGNCID#HGNC:23663 "VKORC1"
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
* result[0] = Reference(OverallInterpExample2) "gene-drug interactions found."
* result[1] = Reference(GrouperEx01) "Therapeutic Implications"
* result[2] = Reference(GrouperEx02) "Genotypes"
* result[3] = Reference(GrouperEx03) "Regions studied and Variants"
* extension[RecommendedAction][0].valueReference = Reference(PGxRecEx01) "No clopidogrel"
* extension[RecommendedAction][1].valueReference = Reference(PGxRecEx02) "No voriconazole"
* extension[RecommendedAction][2].valueReference = Reference(PGxRecEx03) "50% citalopram"
* extension[RecommendedAction][3].valueReference = Reference(PGxRecEx04) "50% escitalopram"
* extension[RecommendedAction][4].valueReference = Reference(PGxRecEx04) "50% amitriptyline"
* status = #final

Instance: PGxRecEx01
InstanceOf: TaskRecFollowup
Description: "Example of a Medication Usage Task for alternatives to clopidogrel"
* id = "PGxRecEx01"
* code = LNC#LA26421-0 "Consider alternative medication"
* description = "For clopidogrel, individuals with this diplotype are expected to have significantly reduced platelet inhibition, increased residual platelet aggregation and increased risk for adverse cardiovascular events in response to clopidogrel. Alternative antiplatelet therapy (if no contraindication) is recommended. Refer to current guidelines for dosage and recommendations at https://cpicpgx.org/guidelines/guideline- for-clopidogrel-and-cyp2c19/"
* for = Reference(CGPatientExample01)
* reasonReference = Reference(TxImp01) "Poor metabolizer"

Instance: PGxRecEx02
InstanceOf: TaskRecFollowup
Description: "Example of a Medication Usage Task for alternatives to voriconazole"
* id = "PGxRecEx02"
* code = LNC#LA26421-0 "Consider alternative medication"
* description = "voriconazole - An alternative agent that is not dependent on CYP2C19 metabolism such as isavuconazole, liposomal amphotericin B, or posaconazole is recommended as primary therapy in lieu of voriconazole. A lower than standard dosage of voriconazole with careful therapeutic drug monitoring is another alternative. Refer to current guidelines for dosage and recommendations at https://cpicpgx.org/guidelines/guideline-for-voriconazole-and-cyp2c19/."
* for = Reference(CGPatientExample01)
* reasonReference = Reference(TxImp02) "Poor metabolizer"

Instance: PGxRecEx03
InstanceOf: TaskRecFollowup
Description: "Example of a Medication Usage Task for decreasing dosage for citalopram"
* id = "PGxRecEx03"
* code = LNC#LA26422-8 "Decrease dose"
* description = "For citalopram, a 50% reduction in starting dose is recommended with therapeutic drug monitoring to guide dose adjustment or select an alternate drug not predominantly metabolized by CYP2C19. Refer to current guidelines for dosage and recommendations at https://cpicpgx.org/guidelines/guideline-for-selective-serotonin-reuptake-inhibitors-and-cyp2d6-and-cyp2c19/. If CYP2D6 genotyping is available, refer to the current guidelines for dosing recommendations."
* for = Reference(CGPatientExample01)
* reasonReference = Reference(TxImp03) "Poor metabolizer"

Instance: PGxRecEx04
InstanceOf: TaskRecFollowup
Description: "Example of a Medication Usage Task for decreasing dosage for escitalopram"
* id = "PGxRecEx04"
* code = LNC#LA26422-8 "Decrease dose"
* description = "For escitalopram, a 50% reduction in starting dose is recommended with therapeutic drug monitoring to guide dose adjustment or select an alternate drug not predominantly metabolized by CYP2C19. Refer to current guidelines for dosage and recommendations at https://cpicpgx.org/guidelines/guideline-for-selective-serotonin-reuptake-inhibitors-and-cyp2d6-and-cyp2c19/. If CYP2D6 genotyping is available, refer to the current guidelines for dosing recommendations."
* for = Reference(CGPatientExample01)
* reasonReference = Reference(TxImp04) "Poor metabolizer"

Instance: PGxRecEx05
InstanceOf: TaskRecFollowup
Description: "Example of a Medication Usage Task for decreasing dosage for amitriptyline"
* id = "PGxRecEx05"
* code = LNC#LA26422-8 "Decrease dose"
* description = "For amitriptyline, a 50% reduction in starting dose is recommended with therapeutic drug monitoring to guide dose adjustment. Refer to current guidelines for dosage and recommendations at https://cpicpgx.org/guidelines/guideline-for- tricyclic-antidepressants-and-cyp2d6-and-cyp2c19/. If CYP2D6 genotyping is available, refer to the current guidelines for dosing recommendations."
* for = Reference(CGPatientExample01)
* reasonReference = Reference(TxImp05) "Poor metabolizer"

Instance: OverallInterpExample2
InstanceOf: OverallInterpretation
Description: "Example for Overall Interpretation."
* id = "OverallInterpExample2"
* valueCodeableConcept = LNC#LA6576-8 "Positive"
* subject = Reference(CGPatientExample01)
* specimen = Reference(GenomicSpecimenExample01)
* status = #final
* component[conclusion-string].valueString = "Based on the genotype result, this patient is predicted to have a CYP2C19 poor metabolizer phenotype. This genotype information can be used by patients and clinicians as part of the shared decision-making process for several drugs metabolized by CYP2C19 including clopidogrel, voriconazole, amitriptyline, citalopram and escitalopram."


Instance: eMERGEServiceRequest
InstanceOf: servicerequest
Description: "Example PGx Service Request"
* id = "eMERGEServiceRequest"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/servicerequest"
* status = RequestStatus#completed "completed"
* code = https://hgsc.bcm.edu/lab-test-codes/#emerge-seq-ngs-pnl
* subject = Reference(CGPatientExample01)
* intent = RequestIntent#order "Order"
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

