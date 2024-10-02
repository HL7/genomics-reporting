
//examples are based on consultation with a New Born Sequencing lab director and the following https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7846873/ https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7713720/ https://pubmed.ncbi.nlm.nih.gov/29614695/ https://pubmed.ncbi.nlm.nih.gov/39051410/ 
//Workflow is population based screening for SMN which is a PCR test for SMN1 homozygous deletion then SMN2 to help in determining how soon to treat
Instance: obs1-interact-smn1-smn2
InstanceOf: Variant
Description: "SMN1 CNV companion for SMN1/SMN2 CNV example"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
//* code.coding[1].system = "http://loinc.org"
//* code.coding[1].code = #35462-1
//* code.coding[1].display = "SMN1 gene targeted mutation analysis in Blood or Tissue by Molecular genetics method"
* method = $LNC#LA26418-6 "PCR"
* subject.display = "A Newborn"
* effectiveDateTime = "2019-04-01"
* performer = Reference(ExampleOrg)
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:11117 "SMN1" 
* component[coding-change-type].valueCodeableConcept = $SEQONT#SO:0001019 "copy_number_variation"
* component[genomic-source-class].valueCodeableConcept = $LNC#LA6683-2 "Germline"
* component[copy-number].valueQuantity.value = 0
* component[copy-number].valueQuantity.code = #1
* component[copy-number].valueQuantity.system = $UCUM
* component[genomic-ref-seq].valueCodeableConcept.coding = $NCBIREFSEQ#NC_000005.10
* component[inner-start-end].valueRange.low.value = 70924941
* component[inner-start-end].valueRange.high.value = 70966375


Instance: obs2-interact-smn1-smn2
InstanceOf: Variant
Description: "SMN2 CNV companion for SMN1/SMN2 CNV example"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
//* code.coding[+].system = "http://loinc.org"
//* code.coding[=].code = #54449-4
//* code.coding[=].display = "SMN2 gene targeted mutation analysis in Blood or Tissue by Molecular genetics method"
* method = $LNC#LA26418-6 "PCR"
* subject.display = "A Newborn"
* effectiveDateTime = "2019-04-01"
* performer = Reference(ExampleOrg)
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:11118 "SMN2" 
* component[coding-change-type].valueCodeableConcept = $SEQONT#SO:0001019 "copy_number_variation"
* component[genomic-source-class].valueCodeableConcept = $LNC#LA6683-2 "Germline"
* component[copy-number].valueQuantity.value = 2
* component[copy-number].valueQuantity.code = #1
* component[copy-number].valueQuantity.system = $UCUM

* component[genomic-ref-seq].valueCodeableConcept.coding = $NCBIREFSEQ#NC_000005.10
* component[inner-start-end].valueRange.low.value = 70049523
* component[inner-start-end].valueRange.high.value = 70090528



Instance: therapuDrug1-interact-smn1-smn2
InstanceOf: TherapeuticImplication
Description: "Antisense Oligonucelotide example of Therapeutic Implication for SMN1/SMN2 CNV example"
* category[labCategory] = $OBSCAT#laboratory
* code = TbdCodesCS#therapeutic-implication
* subject.display = "A Newborn"
* effectiveDateTime = "2019-04-01"
* performer[0] = Reference(ExampleOrg)
* component[+].code.coding = $LNC#81259-4 // "Phenotypic treatment context"
* component[=].valueCodeableConcept.coding[0] = $SCT#5262007 "Spinal muscular atrophy (disorder)"
* component[=].valueCodeableConcept.text = "Spinal muscular atrophy (SMA)"
* component[+].code = $LNC#51963-7 "Medication assessed"
* component[=].valueCodeableConcept.text = "nusinersen (antisense oligonucleotide)"
* derivedFrom[0] = Reference(obs1-interact-smn1-smn2)
* derivedFrom[+] = Reference(obs2-interact-smn1-smn2)
* status = #final
* component[+].code = TbdCodesCS#conclusion-string
* component[=].valueString = "Spinal muscular atrophy (SMA) is an autosomal recessive disease characterized by the degeneration of alpha motor neurons in the spinal cord, leading to muscular atrophy. SMA is caused by deletions or mutations in the survival motor neuron 1 gene (SMN1). In humans, a nearly identical copy gene, SMN2, is present. Because SMN2 has been shown to decrease disease severity in a dose-dependent manner, SMN2 copy number is predictive of disease severity...The overarching recommendation is that all infants with two or three copies of SMN2 should receive immediate treatment"
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.type = #citation
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.url = "https://pubmed.ncbi.nlm.nih.gov/29614695/"

Instance: therapuDrug2-interact-smn1-smn2
InstanceOf: TherapeuticImplication
Description: "Transgene example of Therapeutic Implication for SMN1/SMN2 CNV example"
* category[labCategory] = $OBSCAT#laboratory
* code = TbdCodesCS#therapeutic-implication
* subject.display = "A Newborn"
* effectiveDateTime = "2019-04-01"
* performer[0] = Reference(ExampleOrg)
* component[+].code.coding = $LNC#81259-4 // "Phenotypic treatment context"
* component[=].valueCodeableConcept.coding[0] = $SCT#5262007 "Spinal muscular atrophy (disorder)"
* component[=].valueCodeableConcept.text = "Spinal muscular atrophy (SMA)"
* component[+].code = $LNC#51963-7 "Medication assessed"
* component[=].valueCodeableConcept.text = "onasemnogene abeparvovec (transgene)"
* derivedFrom[0] = Reference(obs1-interact-smn1-smn2)
* derivedFrom[+] = Reference(obs2-interact-smn1-smn2)
* status = #final
* component[+].code = TbdCodesCS#conclusion-string
* component[=].valueString = "Spinal muscular atrophy (SMA) is an autosomal recessive disease characterized by the degeneration of alpha motor neurons in the spinal cord, leading to muscular atrophy. SMA is caused by deletions or mutations in the survival motor neuron 1 gene (SMN1). In humans, a nearly identical copy gene, SMN2, is present. Because SMN2 has been shown to decrease disease severity in a dose-dependent manner, SMN2 copy number is predictive of disease severity...The overarching recommendation is that all infants with two or three copies of SMN2 should receive immediate treatment"
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.type = #citation
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.url = "https://pubmed.ncbi.nlm.nih.gov/29614695/"

Instance: therapuDrug3-interact-smn1-smn2
InstanceOf: TherapeuticImplication
Description: "Small molecule example of Therapeutic Implication for SMN1/SMN2 CNV example"
* category[labCategory] = $OBSCAT#laboratory
* code = TbdCodesCS#therapeutic-implication
* subject.display = "A Newborn"
* effectiveDateTime = "2019-04-01"
* performer[0] = Reference(ExampleOrg)
* component[+].code.coding = $LNC#81259-4 // "Phenotypic treatment context"
* component[=].valueCodeableConcept.coding[0] = $SCT#5262007 "Spinal muscular atrophy (disorder)"
* component[=].valueCodeableConcept.text = "Spinal muscular atrophy (SMA)"
* component[+].code = $LNC#51963-7 "Medication assessed"
* component[=].valueCodeableConcept.text = "risdiplam (small molecule)"
* derivedFrom[0] = Reference(obs1-interact-smn1-smn2)
* derivedFrom[+] = Reference(obs2-interact-smn1-smn2)
* status = #final
* component[+].code = TbdCodesCS#conclusion-string
* component[=].valueString = "Spinal muscular atrophy (SMA) is an autosomal recessive disease characterized by the degeneration of alpha motor neurons in the spinal cord, leading to muscular atrophy. SMA is caused by deletions or mutations in the survival motor neuron 1 gene (SMN1). In humans, a nearly identical copy gene, SMN2, is present. Because SMN2 has been shown to decrease disease severity in a dose-dependent manner, SMN2 copy number is predictive of disease severity...The overarching recommendation is that all infants with two or three copies of SMN2 should receive immediate treatment"
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.type = #citation
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.url = "https://pubmed.ncbi.nlm.nih.gov/29614695/"


Instance: diagnosticImplication-interact-smn1-smn2
InstanceOf: DiagnosticImplication
Description: "Diagnostic Implication for SMN1/SMN2 CNV example"
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#diagnostic-implication "Diagnostic Implication"
* subject.display = "A Newborn"
* effectiveDateTime = "2019-04-01"
* performer[0] = Reference(ExampleOrg)
* method = $LNC#LA26811-2 "Computational analysis"
* derivedFrom = Reference(obs1-interact-smn1-smn2)
* component[0].code = $LNC#53037-8 "Genetic variation clinical significance [Imp]"
* component[=].valueCodeableConcept = $LNC#LA6668-3 "Pathogenic"
* component[+].code = $LNC#93044-6 "Level of Evidence"
* component[=].valueCodeableConcept = $LNC#LA30200-2 "Very strong evidence pathogenic"
* component[+].code = $LNC#81259-4
* component[=].valueCodeableConcept.coding[0] = $SCT#5262007 "Spinal muscular atrophy (disorder)"
* component[=].valueCodeableConcept.text = "Spinal muscular atrophy (SMA)"