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
* component[genomic-source-class].valueCodeableConcept = LNC#LA6684-0

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
* component[ranges-examined].valueRange.low = 45796891 ''
* component[ranges-examined].valueRange.low = 45796891 ''