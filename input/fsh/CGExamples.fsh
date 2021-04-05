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
* note.text = "Patient is positive for high risk allele HLA-B*15:02 and should not be treated with CBZ."

Instance: RegionStudiedExample1
InstanceOf: RegionStudied
Description: "Example for Genomic Region Studied; based on a sample Whole Exome Sequencing (WES) test from Partners Healthcare"
* status = #final "final"
* subject = Reference(CGPatientExample01)
* effectiveDateTime = "2019-04-01"
* issued = "2019-04-01T11:45:33+11:00"
* component[gene-studied].valueCodeableConcept = HGNCID#HGNC:7527 "MUTYH"
* component[ranges-examined].valueRange.low.value = 45796891
* component[ranges-examined].valueRange.high.value = 45796891

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

//* component[coordinate-system].valueCodeableConcept = LNC#LA30102-0 "1-based character counting"
//* component[transcript-ref-seq].valueCodeableConcept = NUC#NM_000769.2
//* component[exact-start-end].valueRange.low.value = 96521657
//* component[ref-allele].valueString = "C"
//* component[alt-allele].valueString = "C"
//* component[RefSequenceAssembly].valueCodeableConcept = LNC#LA14029-5 "hg19"
//* component[chromosome-identifier].valueCodeableConcept = LNC#LA21263-1 "Chromosome 10"

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
* component[dna-chg].valueCodeableConcept = HGVS#NC_000010.10:g.96522463A=
* component[genomic-source-class].valueCodeableConcept = LNC#LA6683-2 "Germline"
* component[allelic-state].valueCodeableConcept = LNC#LA6705-3 "homozygous"
* component[gene-studied].valueCodeableConcept = HGNCID#HGNC:2621 "CYP2C19"
* component[dna-chg-type].valueCodeableConcept = SEQONT#SO:0002073 "wild type"

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
* component[dna-chg].valueCodeableConcept = HGVS#NC_000010.10:g.96535173T=
* component[genomic-source-class].valueCodeableConcept = LNC#LA6683-2 "Germline"
* component[allelic-state].valueCodeableConcept = LNC#LA6705-3 "homozygous"
* component[gene-studied].valueCodeableConcept = HGNCID#HGNC:2621 "CYP2C19"
* component[dna-chg-type].valueCodeableConcept = SEQONT#SO:0002073 "wild type"

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
* component[dna-chg].valueCodeableConcept = HGVS#NC_000010.10:g.96535210G=
* component[genomic-source-class].valueCodeableConcept = LNC#LA6683-2 "Germline"
* component[allelic-state].valueCodeableConcept = LNC#LA6705-3 "homozygous"
* component[gene-studied].valueCodeableConcept = HGNCID#HGNC:2621 "CYP2C19"
* component[dna-chg-type].valueCodeableConcept = SEQONT#SO:0002073 "wild type"

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
* component[dna-chg].valueCodeableConcept = HGVS#NC_000010.10:g.96540410G>A
* component[genomic-source-class].valueCodeableConcept = LNC#LA6683-2 "Germline"
* component[allelic-state].valueCodeableConcept = LNC#LA6705-3 "homozygous"
* component[gene-studied].valueCodeableConcept = HGNCID#HGNC:2621 "CYP2C19"
* component[dna-chg-type].valueCodeableConcept = SEQONT#SO:1000002 "substitution"

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
* component[dna-chg].valueCodeableConcept = HGVS#NC_000010.10:g.96541616G=
* component[genomic-source-class].valueCodeableConcept = LNC#LA6683-2 "Germline"
* component[allelic-state].valueCodeableConcept = LNC#LA6705-3 "homozygous"
* component[gene-studied].valueCodeableConcept = HGNCID#HGNC:2621 "CYP2C19"
* component[dna-chg-type].valueCodeableConcept = SEQONT#SO:1000002 "wild type"

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
* component[dna-chg].valueCodeableConcept = HGVS#NC_000010.10:g.96541756T=
* component[genomic-source-class].valueCodeableConcept = LNC#LA6683-2 "Germline"
* component[allelic-state].valueCodeableConcept = LNC#LA6705-3 "homozygous"
* component[gene-studied].valueCodeableConcept = HGNCID#HGNC:2621 "CYP2C19"
* component[dna-chg-type].valueCodeableConcept = SEQONT#SO:1000002 "wild type"

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
* component[dna-chg].valueCodeableConcept = HGVS#NC_000010.10:g.96612495C=
* component[genomic-source-class].valueCodeableConcept = LNC#LA6683-2 "Germline"
* component[allelic-state].valueCodeableConcept = LNC#LA6705-3 "homozygous"
* component[gene-studied].valueCodeableConcept = HGNCID#HGNC:2621 "CYP2C19"
* component[dna-chg-type].valueCodeableConcept = SEQONT#SO:1000002 "wild type"

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
//* extension[relatedArtifact].valueRelatedArtifact.type = #justification
//* insert RelatedArtifact(https://cpicpgx.org/guidelines/guideline-for-clopidogrel-and-cyp2c19)
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
* extension[0].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/RelatedArtifact"
* extension[0].valueString = "https://cpicpgx.org/guidelines/guideline-for-voriconazole-and-cyp2c19/"
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
* extension[0].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/RelatedArtifact"
* extension[0].valueString = "https://cpicpgx.org/guidelines/guideline-for-selective-serotonin-reuptake-inhibitors-and-cyp2d6-and-cyp2c19/"
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
* extension[CGRelatedArtifact].valueRelatedArtifact.type = #documentation
* extension[CGRelatedArtifact].valueRelatedArtifact.url = "https://cpicpgx.org/guidelines/guideline-for-selective-serotonin-reuptake-inhibitors-and-cyp2d6-and-cyp2c19/"
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
* extension[0].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/RelatedArtifact"
* extension[0].valueString = "https://cpicpgx.org/guidelines/guideline-for-tricyclic-antidepressants-and-cyp2d6-and-cyp2c19/"
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
* component[effect-medication-metabolism].valueCodeableConcept.text = "Extensive metabolizer"
* extension[0].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/RelatedArtifact"
* extension[0].valueString = "https://cpicpgx.org/guidelines/guideline-for-warfarin-and-cyp2c9-and-vkorc1/"
* derivedFrom[0] = Reference(Pgx-geno-1002)
* derivedFrom[1] = Reference(Pgx-geno-1003)
* status = #final


Instance: GrouperEx01
InstanceOf: Grouper
Description: "Observations associated with CYP2C19 genotype"
* id = "GrouperEx01"
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* status = #final

* hasMember[genotype] = Reference(Pgx-geno-1001)
* hasMember[therapeutic-implication][0] = Reference(TxImp01)
* hasMember[therapeutic-implication][1] = Reference(TxImp02)
* hasMember[therapeutic-implication][2] = Reference(TxImp03)
* hasMember[therapeutic-implication][3] = Reference(TxImp04)
* hasMember[therapeutic-implication][4] = Reference(TxImp05)
* hasMember[variant][0] = Reference(Pgx-var-1011)
* hasMember[variant][1] = Reference(Pgx-var-1012)
* hasMember[variant][2] = Reference(Pgx-var-1013)
* hasMember[variant][3] = Reference(Pgx-var-1014)
* hasMember[variant][4] = Reference(Pgx-var-1015)
* hasMember[variant][5] = Reference(Pgx-var-1016)
* hasMember[variant][6] = Reference(Pgx-var-1017)
* hasMember[variant][7] = Reference(Pgx-var-1018)

Instance: GrouperEx02
InstanceOf: Grouper
Description: "Observations associated with Warfarin sensitivity (variants not included)"
* id = "GrouperEx02"
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = TbdCodes#grouper
* hasMember[genotype][0] = Reference(Pgx-geno-1002)
* hasMember[genotype][1] = Reference(Pgx-geno-1003)
* hasMember[therapeutic-implication] = Reference(TxImp06)
//* variants if needed

* status = #final

Instance: RegionStudiedPGx1
InstanceOf: RegionStudied
Description: "Example PGx panel region studied"
* id = "RegionStudiedPGx1"
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* status = #final
* component[region-description].valueString = "All genes have 100% of targeted bases sequenced to redundant coverage of 20x or greater with the following exceptions: APOB(99.96%)..."

Instance: PGxGenomicsReportEMERGE
InstanceOf: GenomicsReport
Description: "Example of a Report carrying multiple Therapeutic Implications, Genotypes, and Variants"
* id = "PGxGenomicsReportEMERGE"
* basedOn = Reference(GenomicsServiceRequestExample01)
* code = https://hgsc.bcm.edu/lab-test-codes/#emerge-seq-ngs-pnl
* effectiveDateTime = "2020-01-01T00:00:00-05:00"
* issued = "2020-01-01T00:00:00-05:00"
* performer = Reference(ExampleOrg)
* subject = Reference(CGPatientExample01)
* result[0] = Reference(GrouperEx01)
* result[1] = Reference(GrouperEx02)
* result[2] = Reference(RegionStudiedPGx1) 
* status = #final

Instance: PGxRecFollowup01
InstanceOf: TaskRecFollowup
Description: "Example of a Medication Usage Task"
* id = "PGxRecFollowup01"
* code = LNC#LA14020-4
* description = "It is recommended that correlation of these findings with the clinical phenotype be performed. Genetic counseling for the patient and at-risk family members is recommended.."
* for = Reference(CGPatientExample01)
* intent = #proposal
* reasonReference = Reference(TxImp06)