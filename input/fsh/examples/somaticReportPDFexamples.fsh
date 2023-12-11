//Instance: bundle-somaticReportPDFdraftExamples
//InstanceOf: Bundle
//Description: "data instances for somatic report."
//// Usage: #os1dddpe = #collection
//* type = #collection
//* entry[+].resource = NOTCH1-uncertain-var
//* entry[+].resource = ZFHX3-uncertain-var
//* entry[+].resource = MSH2-del-var
//* entry[+].resource = NTHL1-snv-var
//* entry[+].resource = STAG2-insertion-var
//* entry[+].resource = ATR-insertion-var
//* entry[+].resource = ATM-missense-var
//* entry[+].resource = EGFR-L858R-var
//* entry[+].resource = ROS1-Fusion-var
//* entry[+].resource = NOTCH1-significance
//* entry[+].resource = ZFHX3-significance
//* entry[+].resource = MSH2-del-disease
//* entry[+].resource = NTHL1-snv-disease
//* entry[+].resource = STAG2-insertion-significance
//* entry[+].resource = ATR-insertion-significance
//* entry[+].resource = ATM-missense-significance
//* entry[+].resource = EGFR-L858R-significance
//* entry[+].resource = ROS1-Fusion-disease
//* entry[+].resource = ROS1-Fusion-therapuTrial
//* entry[+].resource = ROS1-Fusion-therapuDrug
//* entry[+].resource = EGFR-L858R-therapuDrug1
//* entry[+].resource = EGFR-L858R-therapuDrug2
//* entry[+].resource = TMB-therapuDrug
//* entry[+].resource = NOTCH1-uncertain-molc
//* entry[+].resource = ZFHX3-uncertain-molc
//* entry[+].resource = MSH2-del-molc
//* entry[+].resource = NTHL1-snv-molc
//* entry[+].resource = STAG2-insertion-molc
//* entry[+].resource = ATR-insertion-molc
//* entry[+].resource = ATM-insertion-molc
//* entry[+].resource = EGFR-L858R-molc
//* entry[+].resource = ROS1-Fusion
//* entry[+].resource = somaticStudy
//* entry[+].resource = overallInt
//* entry[+].resource = TMBExample
//* entry[+].resource = MSIExample
//* entry[+].resource = PDL1Example
//* entry[+].resource = HLA-A-haplotype1
//* entry[+].resource = HLA-A-haplotype2
//* entry[+].resource = HLA-B-haplotype1
//* entry[+].resource = HLA-B-haplotype2
//* entry[+].resource = HLA-C-haplotype1
//* entry[+].resource = HLA-C-haplotype2
//* entry[+].resource = somaticReport
//* entry[+].resource = somaticServiceRequest
//* entry[+].resource = orderingPractitioner
//* entry[+].resource = pathologistPractitioner
//* entry[+].resource = supervisorPractitioner
//* entry[+].resource = performingOrganization

Instance: NOTCH1-uncertain-var
InstanceOf: Variant
Description: "Example for NOTCH1 uncertain"
//* id = "VariantExample1"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = $OBSCAT#laboratory
* method = $LNC#LA26398-0 "Sequencing"
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* valueCodeableConcept = $LNC#LA9633-4 "Present"
//* interpretation = $SCT#10828004 "Positive (qualifier value)"
* component[representative-protein-hgvs].valueCodeableConcept = $HGVS#NP_060087.3:p.A1931T
* component[representative-transcript-ref-seq].valueCodeableConcept = $NCBIREFSEQ#NM_017617.5
* component[allelic-read-depth].valueQuantity = 221 '1' "reads per base pair"
//* component[coding-change-type].valueCodeableConcept = 
* component[representative-coding-hgvs].valueCodeableConcept = $HGVS#NM_017617.5:c.5791G>A
* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:7881 "NOTCH1"
* component[alt-allele].valueString = "T"
* component[chromosome-identifier].valueCodeableConcept =  $LNC#LA21262-3 "Chromosome 9"
* component[exact-start-end][0].valueRange.low.value = 139395147
* component[exact-start-end][0].valueRange.high.value = 139395147
* component[genomic-ref-seq].valueCodeableConcept = $NCBIREFSEQ#NC_000009.11
* component[ref-allele].valueString = "C"
//* component[variation-code].valueCodeableConcept = 
* component[genomic-hgvs].valueCodeableConcept = $HGVS#NC_000009.11:g.139395147C>T
* component[genomic-source-class].valueCodeableConcept = $LNC#LA6684-0 "Somatic"
* component[sample-allelic-frequency][0].valueQuantity.value = 0.15
* component[sample-allelic-frequency][0].valueQuantity.system = "http://unitsofmeasure.org"
* component[sample-allelic-frequency][0].valueQuantity.unit = "decimal"

Instance: ZFHX3-uncertain-var
InstanceOf: Variant
Description: "Example for ZFHX3 uncertain"
//* id = "VariantExample1"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = $OBSCAT#laboratory
* method = $LNC#LA26398-0 "Sequencing"
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* valueCodeableConcept = $LNC#LA9633-4 "Present"
//* interpretation = $SCT#10828004 "Positive (qualifier value)"
* component[representative-protein-hgvs].valueCodeableConcept = $HGVS#NP_008816.3:p.G585S
* component[representative-transcript-ref-seq].valueCodeableConcept = $NCBIREFSEQ#NM_006885.4
* component[allelic-read-depth].valueQuantity = 212 '1' "reads per base pair"
//* component[coding-change-type].valueCodeableConcept = 
* component[representative-coding-hgvs].valueCodeableConcept = $HGVS#NM_006885.4:c.1753G>A
* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:777 "ZFHX3"
* component[alt-allele].valueString = "T"
* component[chromosome-identifier].valueCodeableConcept =  $LNC#LA21269-8 "Chromosome 16"
* component[exact-start-end][0].valueRange.low.value = 72992292
* component[exact-start-end][0].valueRange.high.value = 72992292
* component[genomic-ref-seq].valueCodeableConcept = $NCBIREFSEQ#NC_000016.9
* component[ref-allele].valueString = "C"
//* component[variation-code].valueCodeableConcept = 
* component[genomic-hgvs].valueCodeableConcept = $HGVS#NC_000016.9:g.72992292C>T
* component[genomic-source-class].valueCodeableConcept = $LNC#LA6684-0 "Somatic"
* component[sample-allelic-frequency][0].valueQuantity.value = 0.10
* component[sample-allelic-frequency][0].valueQuantity.system = "http://unitsofmeasure.org"
* component[sample-allelic-frequency][0].valueQuantity.unit = "decimal"

Instance: MSH2-del-var
InstanceOf: Variant
Description: "Example for MSH2 deletion"
//* id = "VariantExample1"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = $OBSCAT#laboratory
* method = $LNC#LA26398-0 "Sequencing"
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* valueCodeableConcept = $LNC#LA9633-4 "Present"
//* interpretation = $SCT#10828004 "Positive (qualifier value)"
//kp - Error while processing 'NP_000242.1:p.Val611fs': Frameshift variants are not supported
// * component[representative-protein-hgvs].valueCodeableConcept = $HGVS#NP_000242.1:p.Val611fs
* component[representative-transcript-ref-seq].valueCodeableConcept = $NCBIREFSEQ#NM_006885.4
//* component[allelic-read-depth].valueQuantity =
* component[coding-change-type].valueCodeableConcept = http://sequenceontology.org#SO:0000159 "deletion"
//* component[representative-coding-hgvs].valueCodeableConcept = 
* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:7235 "MSH2"
//* component[alt-allele].valueString = 
//* component[chromosome-identifier].valueCodeableConcept =  
//* component[exact-start-end][0].valueRange.low.value = 
//* component[exact-start-end][0].valueRange.high.value = 
//* component[genomic-ref-seq].valueCodeableConcept = 
//* component[ref-allele].valueString = 
* component[variation-code].valueCodeableConcept = $CLINVAR#1780982 "NM_000251.3(MSH2):c.1832del (p.Val611fs)"
//* component[genomic-hgvs].valueCodeableConcept = 
* component[genomic-source-class].valueCodeableConcept = $LNC#LA6684-0 "Somatic"
//* component[sample-allelic-frequency][0].valueQuantity.value = 
//* component[sample-allelic-frequency][0].valueQuantity.system = 
//* component[sample-allelic-frequency][0].valueQuantity.unit = 

//NTHL1_snv
Instance: NTHL1-snv-var
InstanceOf: Variant
Description: "Example for NTHL1 SNV"
//* id = "VariantExample1"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = $OBSCAT#laboratory
* method = $LNC#LA26398-0 "Sequencing"

* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* valueCodeableConcept = $LNC#LA9633-4 "Present"
//* interpretation = $SCT#10828004 "Positive (qualifier value)"
* component[representative-protein-hgvs].valueCodeableConcept = $HGVS#NP_002519.2:p.Trp243Ter
//* component[representative-transcript-ref-seq].valueCodeableConcept = 
//* component[allelic-read-depth].valueQuantity =
* component[coding-change-type].valueCodeableConcept = http://sequenceontology.org#SO:0001483 "SNV"
* component[representative-coding-hgvs].valueCodeableConcept = $HGVS#NM_002528.7:c.728G>A
* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:8028 "NTHL1"
//* component[alt-allele].valueString = 
//* component[chromosome-identifier].valueCodeableConcept =  
//* component[exact-start-end][0].valueRange.low.value = 
//* component[exact-start-end][0].valueRange.high.value = 
//* component[genomic-ref-seq].valueCodeableConcept = 
//* component[ref-allele].valueString = 
* component[variation-code].valueCodeableConcept = $CLINVAR#962538 "NM_002528.7(NTHL1):c.728G>A (p.Trp243Ter)"
* component[genomic-hgvs].valueCodeableConcept = $HGVS#NC_000016.10:g.2040196C>T
* component[genomic-source-class].valueCodeableConcept = $LNC#LA6684-0 "Somatic"
//* component[sample-allelic-frequency][0].valueQuantity.value = 
//* component[sample-allelic-frequency][0].valueQuantity.system = 
//* component[sample-allelic-frequency][0].valueQuantity.unit =

Instance: STAG2-insertion-var
InstanceOf: Variant
Description: "Example for STAG2 insertion"
//* id = "VariantExample1"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = $OBSCAT#laboratory
* method = $LNC#LA26398-0 "Sequencing"
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* valueCodeableConcept = $LNC#LA9633-4 "Present"
//* interpretation = $SCT#10828004 "Positive (qualifier value)"
* component[representative-protein-hgvs].valueCodeableConcept = $HGVS#NP_006594.3:p.S1178*
* component[representative-transcript-ref-seq].valueCodeableConcept = $NCBIREFSEQ#NM_006603.5
* component[allelic-read-depth].valueQuantity = 88 '1' "reads per base pair"
* component[coding-change-type].valueCodeableConcept = http://sequenceontology.org#SO:0000667 "insertion"
* component[representative-coding-hgvs].valueCodeableConcept = $HGVS#NM_006603.5:c.3530_3531insGTGACTATTAATAT
* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:11355 "STAG2"
* component[alt-allele].valueString = "GTGACTA"
* component[chromosome-identifier].valueCodeableConcept =  $LNC#LA21276-3 "Chromosome X"
* component[exact-start-end][0].valueRange.low.value = 123227930
* component[exact-start-end][0].valueRange.high.value = 123227930
* component[genomic-ref-seq].valueCodeableConcept = $NCBIREFSEQ#NC_000023.10
//* component[ref-allele].valueString = ""
//* component[variation-code].valueCodeableConcept = 
* component[genomic-hgvs].valueCodeableConcept = $HGVS#NC_000023.10:g.123227930_123227931insGTGACTATTAATAT
* component[genomic-source-class].valueCodeableConcept = $LNC#LA6684-0 "Somatic"
* component[sample-allelic-frequency][0].valueQuantity.value = 0.08
* component[sample-allelic-frequency][0].valueQuantity.system = "http://unitsofmeasure.org"
* component[sample-allelic-frequency][0].valueQuantity.unit = "decimal"

Instance: ATR-insertion-var
InstanceOf: Variant
Description: "Example for ATR insertion"
//* id = "VariantExample1"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = $OBSCAT#laboratory
* method = $LNC#LA26398-0 "Sequencing"
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* valueCodeableConcept = $LNC#LA9633-4 "Present"
//* interpretation = $SCT#10828004 "Positive (qualifier value)"
//kp - Error while processing 'NP_001175.2:p.R960fs*2': Frameshift variants are not supported
// * component[representative-protein-hgvs].valueCodeableConcept = $HGVS#NP_001175.2:p.R960fs*2
* component[representative-transcript-ref-seq].valueCodeableConcept = $NCBIREFSEQ#NM_001184.4
* component[allelic-read-depth].valueQuantity = 131 '1' "reads per base pair"
* component[coding-change-type].valueCodeableConcept = http://sequenceontology.org#SO:0000667 "insertion"
* component[representative-coding-hgvs].valueCodeableConcept = $HGVS#NM_001184.4:c.2878_2879insAGTAA
* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:882 "ATR"
* component[alt-allele].valueString = "TTACT"
* component[chromosome-identifier].valueCodeableConcept =  $LNC#LA21256-5 "Chromosome 3"
* component[exact-start-end][0].valueRange.low.value = 142269071
* component[exact-start-end][0].valueRange.high.value = 142269071
* component[genomic-ref-seq].valueCodeableConcept = $NCBIREFSEQ#NC_000003.11
//* component[ref-allele].valueString = ""
//* component[variation-code].valueCodeableConcept = 
* component[genomic-hgvs].valueCodeableConcept = $HGVS#NC_000003.11:g.142269071_142269072insTTACT
* component[genomic-source-class].valueCodeableConcept = $LNC#LA6684-0 "Somatic"
* component[sample-allelic-frequency][0].valueQuantity.value = 0.075
* component[sample-allelic-frequency][0].valueQuantity.system = "http://unitsofmeasure.org"
* component[sample-allelic-frequency][0].valueQuantity.unit = "decimal"
* component[conclusion-string].valueString = "Gene: ATR; Exon: 14; Nucleotide: NM_001184.4:c.2878_2879insAGTAA; Genomic Location: NC_000003.11:g.142269071_142269072insTTACT; Amino acid: NP_001175.2:p.R960fs*2; Function: loss; Assessment: Likely Pathogenic; Classification: Tier 2C; Allele Fraction: 5.34% (of 131 reads); Variation: Insertion; Interpretation: The protein encoded by this gene is a serine/threonine kinase and DNA damage sensor, activating cell cycle checkpoint signaling upon DNA stress. The encoded protein can phosphorylate and activate several proteins involved ... more"

Instance: ATM-missense-var
InstanceOf: Variant
Description: "Example for ATM missense"
//* id = "VariantExample1"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = $OBSCAT#laboratory
* method = $LNC#LA26398-0 "Sequencing"
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* valueCodeableConcept = $LNC#LA9633-4 "Present"
//* interpretation = $SCT#10828004 "Positive (qualifier value)"
* component[representative-protein-hgvs].valueCodeableConcept = $HGVS#NP_000042.3:p.Asn2875His
//* component[representative-transcript-ref-seq].valueCodeableConcept = 
//* component[allelic-read-depth].valueQuantity = 
* component[coding-change-type].valueCodeableConcept = http://sequenceontology.org#SO:0001483 "SNV"
* component[representative-coding-hgvs].valueCodeableConcept = $HGVS#NM_000051.3:c.8623A>C
* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:795 "ATM"
//* component[alt-allele].valueString = 
//* component[chromosome-identifier].valueCodeableConcept =  
//* component[exact-start-end][0].valueRange.low.value = 
//* component[exact-start-end][0].valueRange.high.value = 
* component[genomic-ref-seq].valueCodeableConcept = $NCBIREFSEQ#NC_000003.11
//* component[ref-allele].valueString = ""
//* component[variation-code].valueCodeableConcept = 
* component[genomic-hgvs].valueCodeableConcept = $HGVS#NC_000011.9:g.108218044A>C
* component[genomic-source-class].valueCodeableConcept = $LNC#LA6684-0 "Somatic"
* component[sample-allelic-frequency][0].valueQuantity.value = 0.062
* component[sample-allelic-frequency][0].valueQuantity.system = "http://unitsofmeasure.org"
* component[sample-allelic-frequency][0].valueQuantity.unit = "decimal"
* component[conclusion-string].valueString = "Gene: ATM; Exon: 14; Nucleotide:NM_001184.4:c.2878_2879insAGTAA; Genomic Location: NC_000003.11:g.142269071_142269072insTTACT; Amino acid: NP_001175.2:p.R960fs*2; Function: loss; Assessment: Likely Pathogenic; Classification: Tier 2C; Allele Fraction: 5.34% (of 131 reads); Variation: Insertion; Interpretation: The protein encoded by this gene belongs to the PI3/PI4-kinase family. This protein is an important cell cycle checkpoint kinase that phosphorylates; thus, it functions as a regulator of a wide variety ... more."

Instance: EGFR-L858R-var
InstanceOf: Variant
Description: "Example for EGFR L858R"
//* id = "VariantExample1"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = $OBSCAT#laboratory
* method = $LNC#LA26398-0 "Sequencing"
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* valueCodeableConcept = $LNC#LA9633-4 "Present"
//* interpretation = $SCT#10828004 "Positive (qualifier value)"
* component[variation-code].valueCodeableConcept.text = "EGFR L858R"
* component[representative-protein-hgvs].valueCodeableConcept = $HGVS#NP_005219.2:p.Leu858Arg
//* component[representative-transcript-ref-seq].valueCodeableConcept = 
//* component[allelic-read-depth].valueQuantity = 
* component[coding-change-type].valueCodeableConcept = http://sequenceontology.org#SO:0001483 "SNV"
* component[representative-coding-hgvs].valueCodeableConcept = $HGVS#NM_005228.4:c.2573T>G
* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:3236 "EGFR"
//* component[alt-allele].valueString = 
//* component[chromosome-identifier].valueCodeableConcept =  
//* component[exact-start-end][0].valueRange.low.value = 
//* component[exact-start-end][0].valueRange.high.value = 
//* component[genomic-ref-seq].valueCodeableConcept = 
//* component[ref-allele].valueString = ""
//* component[variation-code].valueCodeableConcept = 
* component[genomic-hgvs].valueCodeableConcept = $HGVS#NC_000007.13:g.55259515T>G
* component[genomic-source-class].valueCodeableConcept = $LNC#LA6684-0 "Somatic"
* component[sample-allelic-frequency][0].valueQuantity.value = 0.066
* component[sample-allelic-frequency][0].valueQuantity.system = "http://unitsofmeasure.org"
* component[sample-allelic-frequency][0].valueQuantity.unit = "decimal"

Instance: ROS1-Fusion-var
InstanceOf: Variant
Description: "Example for ROS1 Fusion but as typically reported in PDF, without necessarily declaring a particular fusion partner"
//* id = "VariantExample1"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = $OBSCAT#laboratory
* method = $LNC#LA26398-0 "Sequencing"
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* component[variation-code].valueCodeableConcept.text = "ROS1 Fusion"
//* interpretation = $SCT#10828004 "Positive (qualifier value)"
//* component[representative-protein-hgvs].valueCodeableConcept =
//* component[representative-transcript-ref-seq].valueCodeableConcept = 
//* component[allelic-read-depth].valueQuantity = 
//* component[coding-change-type].valueCodeableConcept = ?fusion?
//* component[representative-coding-hgvs].valueCodeableConcept = 
* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:10261 "ROS1"
//* component[alt-allele].valueString = 
//* component[chromosome-identifier].valueCodeableConcept =  
//* component[exact-start-end][0].valueRange.low.value = 
//* component[exact-start-end][0].valueRange.high.value = 
//* component[genomic-ref-seq].valueCodeableConcept = 
//* component[ref-allele].valueString = ""
//* component[variation-code].valueCodeableConcept = 
//* component[genomic-hgvs].valueCodeableConcept = 
* component[genomic-source-class].valueCodeableConcept = $LNC#LA6684-0 "Somatic"
//* component[sample-allelic-frequency][0].valueQuantity.value = 0.075
//* component[sample-allelic-frequency][0].valueQuantity.system = "http://unitsofmeasure.org"
//* component[sample-allelic-frequency][0].valueQuantity.unit = "decimal"

Instance: NOTCH1-significance
InstanceOf: DiagnosticImplication
Description: "Example DiagnosticImplication - NOTCH1 uncertain significance"
Usage: #example
* status = #final
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#diagnostic-implication "Diagnostic Implication"
* derivedFrom = Reference(NOTCH1-uncertain-var)
* component[0].code = $LNC#53037-8 "Genetic variation clinical significance [Imp]"
* component[=].valueCodeableConcept = $LNC#LA26333-7 "Uncertain Significance"


Instance: ZFHX3-significance
InstanceOf: DiagnosticImplication
Description: "Example DiagnosticImplication - ZFHX3 uncertain significance"
Usage: #example
* status = #final
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#diagnostic-implication "Diagnostic Implication"
* derivedFrom = Reference(ZFHX3-uncertain-var)
* component[0].code = $LNC#53037-8 "Genetic variation clinical significance [Imp]"
* component[=].valueCodeableConcept = $LNC#LA26333-7 "Uncertain Significance"

//MSH2_del 
//699346009 | Hereditary cancer-predisposing syndrome (disorder) SNOMED
//LA6668-3 Pathogenic
Instance: MSH2-del-disease
InstanceOf: DiagnosticImplication
Description: "Example DiagnosticImplication - MSH2 deletion Hereditary cancer-predisposing syndrome"
Usage: #example
* status = #final
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#diagnostic-implication "Diagnostic Implication"
* derivedFrom = Reference(MSH2-del-var)
* component[0].code = $LNC#53037-8 "Genetic variation clinical significance [Imp]"
* component[=].valueCodeableConcept = $LNC#LA6668-3 "Pathogenic"
* component[+].code = $LNC#81259-4 "Associated phenotype"
* component[=].valueCodeableConcept.coding[0] = $SCT#699346009 "Hereditary cancer-predisposing syndrome (disorder)"
* component[=].valueCodeableConcept.text = "Hereditary cancer-predisposing syndrome"

//NTHL1_snv  
//699346009 | Hereditary cancer-predisposing syndrome (disorder) SNOMED
//LA6668-3 Pathogenic
Instance: NTHL1-snv-disease
InstanceOf: DiagnosticImplication
Description: "Example DiagnosticImplication - NTHL1 SNV Hereditary cancer-predisposing syndrome"
Usage: #example
* status = #final
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#diagnostic-implication "Diagnostic Implication"
* derivedFrom = Reference(NTHL1-snv-var)
* component[0].code = $LNC#53037-8 "Genetic variation clinical significance [Imp]"
* component[=].valueCodeableConcept = $LNC#LA6668-3 "Pathogenic"
* component[+].code = $LNC#81259-4 "Associated phenotype"
* component[=].valueCodeableConcept.coding[0] = $SCT#699346009 "Hereditary cancer-predisposing syndrome (disorder)"
* component[=].valueCodeableConcept.text = "Hereditary cancer-predisposing syndrome"

//STAG2_insertion
//LA26332-9^Likely Pathogenic
//https://www.ncbi.nlm.nih.gov/gene/545#:~:text=ATR%20may%20function%20as%20an,radiation%20when%20ATM%20is%20deficient.
Instance: STAG2-insertion-significance
InstanceOf: DiagnosticImplication
Description: "Example DiagnosticImplication - STAG2 likely pathogenic"
Usage: #example
* status = #final
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#diagnostic-implication "Diagnostic Implication"
* derivedFrom = Reference(STAG2-insertion-var)
* component[0].code = $LNC#53037-8 "Genetic variation clinical significance [Imp]"
* component[=].valueCodeableConcept = $LNC#LA26332-9 "Likely Pathogenic"
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.type = #citation
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.url = "https://www.ncbi.nlm.nih.gov/gene/545#:~:text=ATR%20may%20function%20as%20an,radiation%20when%20ATM%20is%20deficient"

//ATR insertion 
//LA26332-9^Likely Pathogenic
//Tier 2C
//https://www.jmdjournal.org/cms/attachment/ee43a71b-81de-4cb3-ac5e-2fb9a7d41491/gr2.jpg
Instance: ATR-insertion-significance
InstanceOf: DiagnosticImplication
Description: "Example DiagnosticImplication - ATR likely pathogenic"
Usage: #example
* status = #final
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#diagnostic-implication "Diagnostic Implication"
* derivedFrom = Reference(ATR-insertion-var)
* component[0].code = $LNC#53037-8 "Genetic variation clinical significance [Imp]"
* component[=].valueCodeableConcept = $LNC#LA26332-9 "Likely Pathogenic"

* component[+].code = $LNC#93044-6 "Level of evidence"
//* component[=].valueCodeableConcept = codesystem#code "display"
* component[=].valueCodeableConcept.text = "Tier 2C"
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.type = #citation
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.url = "https://www.jmdjournal.org/cms/attachment/ee43a71b-81de-4cb3-ac5e-2fb9a7d41491/gr2.jpg"

* component[+].code = TbdCodesCS#conclusion-string
* component[=].valueString = "The protein encoded by this gene is a serine/threonine kinase and DNA damage sensor, activating cell cycle checkpoint signaling upon DNA stress. The encoded protein can phosphorylate and activate several proteins involved ... more"
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.type = #citation
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.url = "https://www.ncbi.nlm.nih.gov/gene/545#:~:text=ATR%20may%20function%20as%20an,radiation%20when%20ATM%20is%20deficient"

//ATM_insertion
Instance: ATM-missense-significance
InstanceOf: DiagnosticImplication
Description: "Example DiagnosticImplication - ATM likely pathogenic"
Usage: #example
* status = #final
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#diagnostic-implication "Diagnostic Implication"
* derivedFrom = Reference(ATM-missense-var)
* component[0].code = $LNC#53037-8 "Genetic variation clinical significance [Imp]"
* component[=].valueCodeableConcept = $LNC#LA26332-9 "Likely Pathogenic"

* component[+].code = $LNC#93044-6 "Level of evidence"
//* component[=].valueCodeableConcept = codesystem#code "display"
* component[=].valueCodeableConcept.text = "Tier 2C"
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.type = #citation
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.url = "https://www.jmdjournal.org/cms/attachment/ee43a71b-81de-4cb3-ac5e-2fb9a7d41491/gr2.jpg"

* component[+].code = TbdCodesCS#conclusion-string
* component[=].valueString = "The protein encoded by this gene belongs to the PI3/PI4-kinase family. This protein is an important cell cycle checkpoint kinase that phosphorylates; thus, it functions as a regulator of a wide variety ... more."


//EGFR L858R
//LA6668-3 Pathogenic
Instance: EGFR-L858R-significance
InstanceOf: DiagnosticImplication
Description: "Example DiagnosticImplication - EGFR pathogenic"
Usage: #example
* status = #final
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#diagnostic-implication "Diagnostic Implication"
* derivedFrom = Reference(EGFR-L858R-var)
* component[0].code = $LNC#53037-8 "Genetic variation clinical significance [Imp]"
* component[=].valueCodeableConcept = $LNC#LA6668-3 "Pathogenic"


Instance: ROS1-Fusion-disease
InstanceOf: DiagnosticImplication
Description: "Example DiagnosticImplication - ROS1 disease"
Usage: #example
* status = #final
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#diagnostic-implication "Diagnostic Implication"
* derivedFrom = Reference(ROS1-Fusion-var)
* component[0].code = $LNC#53037-8 "Genetic variation clinical significance [Imp]"
* component[=].valueCodeableConcept = $LNC#LA6668-3 "Pathogenic"



Instance: ROS1-Fusion-therapuTrial
InstanceOf: TherapeuticImplication
Description: "Example of ROS1 Fusion Therapeutic Implication for Clinical Trial"
//* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/therapeutic-implication"
* category[labCategory] = $OBSCAT#laboratory
* code = TbdCodesCS#therapeutic-implication
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
//* component[0].code.coding = TbdCodesCS#predicted-therapeutic-implication "Predicted Therapeutic Implication"
//* component[=].valueCodeableConcept.coding = $SCT#399223003 "Patient eligible for clinical trial"
* component[+].code.coding = $LNC#81259-4 // "Phenotypic treatment context"
//#HP:0003002
* component[=].valueCodeableConcept.coding[0] = $SCT#254637007 "Non-small cell lung cancer (disorder)"
* component[=].valueCodeableConcept.text = "Non-small cell lung cancer"
* component[+].code = $LNC#51963-7 "Medication assessed"
* component[=].valueCodeableConcept.text = "Taletrectinib"
* component[+].code.coding = TbdCodesCS#associated-therapy "Associated Therapy"
* component[=].valueCodeableConcept.coding = $NCTTRIAL#NCT04919811 "NCT04919811"
* component[=].valueCodeableConcept.text = "A Single-Arm, Open-Label, Multicenter Phase 2 Study to Evaluate the Efficacy and Safety of Taletrectinib in Patients With Advanced or Metastatic ROS1 Positive NSCLC and Other Solid Tumors"
* derivedFrom = Reference(ROS1-Fusion-var)
* status = #final
* component[+].code = $LNC#93044-6 "Level of evidence"
//* component[=].valueCodeableConcept = codesystem#code "display"
* component[=].valueCodeableConcept.text = "Tier I - Level A"
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.type = #citation
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.url = "https://www.jmdjournal.org/cms/attachment/ee43a71b-81de-4cb3-ac5e-2fb9a7d41491/gr2.jpg"
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.type = #citation
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.url = "https://www.cancer.net/cancer-types/lung-cancer-non-small-cell/types-treatment"


Instance: ROS1-Fusion-therapuDrug
InstanceOf: TherapeuticImplication
Description: "Example of ROS1 Fusion Therapeutic Implication for drug treatment"
//* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/therapeutic-implication"
* category[labCategory] = $OBSCAT#laboratory
* code = TbdCodesCS#therapeutic-implication
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
//* component[0].code.coding = TbdCodesCS#predicted-therapeutic-implication "Predicted Therapeutic Implication"
* component[0].code.coding = TbdCodesCS#therapeutic-implication "Therapeutic Implication"
* component[=].valueCodeableConcept = $LNC#LA6677-4 "Responsive"
* component[=].valueCodeableConcept.text = "cancer sensitive to crizotinib"
* component[+].code.coding = $LNC#81259-4 // "Phenotypic treatment context"
* component[=].valueCodeableConcept.coding[0] = $SCT#254637007 "Non-small cell lung cancer (disorder)"
* component[=].valueCodeableConcept.text = "Non-small cell lung cancer"
* component[+].code = $LNC#51963-7 "Medication assessed"
* component[=].valueCodeableConcept.text = "Crizotinib"
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.type = #citation
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.url = "https://civicdb.org/molecular-profiles/2562/summary"
* derivedFrom = Reference(ROS1-Fusion-var)
* status = #final
* component[+].code = TbdCodesCS#conclusion-string
* component[=].valueString = "Non-small cell lung cancer positive for ROS1 fusions are sensitive to crizotinib"
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.type = #citation
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.url = "https://civicdb.org/evidence/7282/summary"
* component[+].code = $LNC#93044-6 "Level of evidence"
//* component[=].valueCodeableConcept = codesystem#code "display"
* component[=].valueCodeableConcept.text = "Tier I - Level A"
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.type = #citation
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.url = "https://www.jmdjournal.org/cms/attachment/ee43a71b-81de-4cb3-ac5e-2fb9a7d41491/gr2.jpg"


Instance: TMB-therapuDrug
InstanceOf: TherapeuticImplication
Description: "Example of high TMB Therapeutic Implication for drug treatment"
* category[labCategory] = $OBSCAT#laboratory
* code = TbdCodesCS#therapeutic-implication
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* component[0].code.coding = TbdCodesCS#therapeutic-implication "Therapeutic Implication"
* component[=].valueCodeableConcept = $LNC#LA6677-4 "Responsive"
* component[=].valueCodeableConcept.text = "cancer sensitive to pembrolizumab"
* component[+].code.coding = $LNC#81259-4 // "Phenotypic treatment context"
* component[=].valueCodeableConcept.coding[0] = $SCT#254637007 "Non-small cell lung cancer (disorder)"
* component[=].valueCodeableConcept.text = "Non-small cell lung cancer"
* component[+].code = $LNC#51963-7 "Medication assessed"
* component[=].valueCodeableConcept.text = "Pembrolizumab"
* derivedFrom = Reference(TMBExample)
* status = #final
* component[+].code = TbdCodesCS#conclusion-string
* component[=].valueString = "Non-small cell lung cancer with high TMB is sensitive to pembrolizumab"

Instance: EGFR-L858R-therapuDrug1
InstanceOf: TherapeuticImplication
Description: "Example of EGFR-L858R Therapeutic Implication for drug treatment 1"
* category[labCategory] = $OBSCAT#laboratory
* code = TbdCodesCS#therapeutic-implication
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* component[+].code = TbdCodesCS#therapeutic-implication "Therapeutic Implication"
* component[=].valueCodeableConcept = $LNC#LA6677-4 "Responsive"
* component[+].code = $LNC#93044-6 "Level of evidence"
* component[=].valueCodeableConcept.text = "Tier I - Level A"
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.type = #citation
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.url = "https://www.jmdjournal.org/cms/attachment/ee43a71b-81de-4cb3-ac5e-2fb9a7d41491/gr2.jpg"
* component[+].code.coding = $LNC#81259-4 // "Phenotypic treatment context"
* component[=].valueCodeableConcept.coding[0] = $SCT#254637007 "Non-small cell lung cancer (disorder)"
* component[=].valueCodeableConcept.text = "Non-small cell lung cancer"
* component[+].code = $LNC#51963-7 "Medication assessed"
* component[=].valueCodeableConcept.text = "Gefitinib"
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.type = #citation
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.url = "https://www.cancer.net/cancer-types/lung-cancer-non-small-cell/types-treatment"
* derivedFrom = Reference(EGFR-L858R-var)
* status = #final
* component[+].code = TbdCodesCS#conclusion-string
* component[=].valueString = "Non-small cell lung cancer with EGFR L858R mutation is sensitive to gefitinib"
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.type = #citation
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.url = "https://civicdb.org/evidence/2994/summary"


Instance: EGFR-L858R-therapuDrug2
InstanceOf: TherapeuticImplication
Description: "Example of EGFR-L858R Therapeutic Implication for drug treatment 2"
* category[labCategory] = $OBSCAT#laboratory
* code = TbdCodesCS#therapeutic-implication
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* component[+].code = TbdCodesCS#therapeutic-implication "Therapeutic Implication"
* component[=].valueCodeableConcept = $LNC#LA6677-4 "Responsive"
* component[+].code = $LNC#93044-6 "Level of evidence"
* component[=].valueCodeableConcept.text = "Tier I - Level A"
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.type = #citation
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.url = "https://www.jmdjournal.org/cms/attachment/ee43a71b-81de-4cb3-ac5e-2fb9a7d41491/gr2.jpg"
* component[+].code.coding = $LNC#81259-4 // "Phenotypic treatment context"
* component[=].valueCodeableConcept.coding[0] = $SCT#254637007 "Non-small cell lung cancer (disorder)"
* component[=].valueCodeableConcept.text = "Non-small cell lung cancer"
* component[+].code = $LNC#51963-7 "Medication assessed"
* component[=].valueCodeableConcept.text = "Erlotinib"
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.type = #citation
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.url = "https://www.cancer.net/cancer-types/lung-cancer-non-small-cell/types-treatment"
* derivedFrom = Reference(EGFR-L858R-var)
* status = #final
* component[+].code = TbdCodesCS#conclusion-string
* component[=].valueString = "Non-small cell lung cancer with EGFR L858R mutation is sensitive to erlotinib"
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.type = #citation
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.url = "https://civicdb.org/evidence/2994/summary"

Instance: NOTCH1-uncertain-molc
InstanceOf: MolecularConsequence
Description: "Example Molecular Consequence NOTCH1 missense_variant"
Usage: #example
* status = #final
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#molecular-consequence
* subject = Reference(CGPatientExample01)
* derivedFrom = Reference(NOTCH1-uncertain-var)
* component[0].code = http://loinc.org#48004-6
* component[0].code.text = "coding HGVS"
* component[=].valueCodeableConcept = http://varnomen.hgvs.org#NM_017617.5:c.5791G>A "NM_017617.5:c.5791G>A"

* component[+].code = http://loinc.org#51958-7 "Transcript reference sequence [ID]"
* component[=].valueCodeableConcept = http://www.ncbi.nlm.nih.gov/refseq#NM_017617.5 "NM_017617.5"

* component[+].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#feature-consequence
* component[=].valueCodeableConcept.coding[0] = http://sequenceontology.org#SO:0001583 "missense_variant"

* component[+].code = http://loinc.org#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept = http://varnomen.hgvs.org#NP_060087.3:p.A1931T "NP_060087.3:p.A1931T"

Instance: ZFHX3-uncertain-molc
InstanceOf: MolecularConsequence
Description: "Example Molecular Consequence ZFHX3 missense_variant"
Usage: #example
* status = #final
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#molecular-consequence
* subject = Reference(CGPatientExample01)
* derivedFrom = Reference(ZFHX3-uncertain-var)
* component[0].code = http://loinc.org#48004-6
* component[0].code.text = "coding HGVS"
* component[=].valueCodeableConcept = http://varnomen.hgvs.org#NM_006885.4:c.1753G>A "NM_006885.4:c.1753G>A"
* component[+].code = http://loinc.org#51958-7 "Transcript reference sequence [ID]"
* component[=].valueCodeableConcept = http://www.ncbi.nlm.nih.gov/refseq#NM_006885.4 "NM_006885.4"
* component[+].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#feature-consequence
* component[=].valueCodeableConcept.coding[0] = http://sequenceontology.org#SO:0001583 "missense_variant"
* component[+].code = http://loinc.org#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept = http://varnomen.hgvs.org#NP_008816.3:p.G585S "NP_008816.3:p.G585S"

Instance: MSH2-del-molc
InstanceOf: MolecularConsequence
Description: "Example Molecular Consequence MSH2 frameshift"
Usage: #example
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#molecular-consequence
* subject = Reference(CGPatientExample01)
* derivedFrom = Reference(MSH2-del-var)
* component[0].code = http://loinc.org#48004-6
* component[0].code.text = "coding HGVS"
* component[=].valueCodeableConcept = http://varnomen.hgvs.org#NM_000251.3:c.1832del "NM_000251.3:c.1832del"
* component[+].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#feature-consequence
* component[=].valueCodeableConcept.coding[0] = http://sequenceontology.org#SO:0001589 "frameshift_variant"
//kp - Error while processing 'NP_000242.1:p.Val611fs': Frameshift variants are not supported
// * component[+].code = http://loinc.org#48005-3 "Amino acid change (pHGVS)"
// * component[=].valueCodeableConcept = http://varnomen.hgvs.org#NP_000242.1:p.Val611fs "NP_000242.1:p.Val611fs"

Instance: NTHL1-snv-molc
InstanceOf: MolecularConsequence
Description: "Example Molecular Consequence NTHL1 SNV variant with nonsense codon"
Usage: #example
* status = #final
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#molecular-consequence
* subject = Reference(CGPatientExample01)
* derivedFrom = Reference(NTHL1-snv-var)
* component[0].code = http://loinc.org#48004-6
* component[0].code.text = "coding HGVS"
* component[=].valueCodeableConcept = http://varnomen.hgvs.org#NM_002528.7:c.728G>A "NM_002528.7:c.728G>A"
* component[+].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#feature-consequence
* component[=].valueCodeableConcept.coding[0] = http://sequenceontology.org#SO:0001587 "stop_gained"
* component[=].valueCodeableConcept.text = "nonsense codon"
* component[+].code = http://loinc.org#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept = http://varnomen.hgvs.org#NP_002519.2:p.Trp243Ter "NP_002519.2:p.Trp243Ter"

Instance: STAG2-insertion-molc
InstanceOf: MolecularConsequence
Description: "Example Molecular Consequence STAG2 frameshift"
Usage: #example
* status = #final
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#molecular-consequence
* subject = Reference(CGPatientExample01)
* derivedFrom = Reference(STAG2-insertion-var)
* component[0].code = http://loinc.org#48004-6
* component[0].code.text = "coding HGVS"
* component[=].valueCodeableConcept = http://varnomen.hgvs.org#NM_006603.5:c.3530_3531insGTGACTATTAATAT "NM_006603.5:c.3530_3531insGTGACTATTAATAT"
* component[+].code = http://loinc.org#51958-7 "Transcript reference sequence [ID]"
* component[=].valueCodeableConcept = http://www.ncbi.nlm.nih.gov/refseq#NM_006603.5 "NM_006603.5"
* component[+].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#feature-consequence
* component[=].valueCodeableConcept.coding[0] = http://sequenceontology.org#SO:0001589 "frameshift_variant"
* component[+].code = http://loinc.org#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept = http://varnomen.hgvs.org#NP_006594.3:p.S1178* "NP_006594.3:p.S1178*"

Instance: ATR-insertion-molc
InstanceOf: MolecularConsequence
Description: "Example Molecular Consequence ATR frameshift"
Usage: #example
* status = #final
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#molecular-consequence
* subject = Reference(CGPatientExample01)
* derivedFrom = Reference(ATR-insertion-var)
* component[0].code = http://loinc.org#48004-6
* component[0].code.text = "coding HGVS"
* component[=].valueCodeableConcept = http://varnomen.hgvs.org#NM_001184.4:c.2878_2879insAGTAA "NM_001184.4:c.2878_2879insAGTAA"
* component[+].code = http://loinc.org#51958-7 "Transcript reference sequence [ID]"
* component[=].valueCodeableConcept = http://www.ncbi.nlm.nih.gov/refseq#NM_001184.4 "NM_001184.4"
* component[+].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#feature-consequence
* component[=].valueCodeableConcept.coding[0] = http://sequenceontology.org#SO:0001589 "frameshift_variant"
//kp Error while processing 'NP_001175.2:p.R960fs*2': Frameshift variants are not supported
// * component[+].code = http://loinc.org#48005-3 "Amino acid change (pHGVS)"
// * component[=].valueCodeableConcept = http://varnomen.hgvs.org#NP_001175.2:p.R960fs*2 "NP_001175.2:p.R960fs*2"
* component[+].code = TbdCodesCS#functional-effect
* component[=].valueCodeableConcept = http://sequenceontology.org#SO_0002054 "loss_of_function_variant"

Instance: ATM-insertion-molc
InstanceOf: MolecularConsequence
Description: "Example Molecular Consequence ATM frameshift"
Usage: #example
* status = #final
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#molecular-consequence
* subject = Reference(CGPatientExample01)
* derivedFrom = Reference(ATM-missense-var)
* component[0].code = http://loinc.org#48004-6
* component[0].code.text = "coding HGVS"
* component[=].valueCodeableConcept = http://varnomen.hgvs.org#NM_001184.4:c.2878_2879insAGTAA "NM_001184.4:c.2878_2879insAGTAA"
* component[+].code = http://loinc.org#51958-7 "Transcript reference sequence [ID]"
* component[=].valueCodeableConcept = http://www.ncbi.nlm.nih.gov/refseq#NM_001184.4 "NM_001184.4"
* component[+].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#feature-consequence
* component[=].valueCodeableConcept.coding[0] = http://sequenceontology.org#SO:0001589 "frameshift_variant"
//kp -- error on validation: Error while processing 'NP_001175.2:p.R960fs*2': Frameshift variants are not supported
// * component[+].code = http://loinc.org#48005-3 "Amino acid change (pHGVS)"
// * component[=].valueCodeableConcept = http://varnomen.hgvs.org#NP_001175.2:p.R960fs*2 "NP_001175.2:p.R960fs*2"
* component[+].code = TbdCodesCS#functional-effect
* component[=].valueCodeableConcept = http://sequenceontology.org#SO_0002054 "loss_of_function_variant"

Instance: EGFR-L858R-molc
InstanceOf: MolecularConsequence
Description: "Example Molecular Consequence EGFR L858R missense_variant"
Usage: #example
* status = #final
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#molecular-consequence
* subject = Reference(CGPatientExample01)
* derivedFrom = Reference(EGFR-L858R-var)
* component[0].code = http://loinc.org#48004-6
* component[0].code.text = "coding HGVS"
* component[=].valueCodeableConcept = http://varnomen.hgvs.org#NM_005228.4:c.2573T>G "NM_005228.4:c.2573T>G"
* component[+].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#feature-consequence
* component[=].valueCodeableConcept.coding[0] = http://sequenceontology.org#SO:0001583 "missense_variant"
* component[+].code = http://loinc.org#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept = http://varnomen.hgvs.org#NP_005219.2:p.Leu858Arg "NP_005219.2:p.Leu858Arg"

Instance: ROS1-Fusion
InstanceOf: MolecularConsequence
Description: "Example Molecular Consequence ROS1 Fusion"
Usage: #example
* status = #final
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#molecular-consequence
* subject = Reference(CGPatientExample01)
* derivedFrom = Reference(ROS1-Fusion-var)
* component[+].code = TbdCodesCS#functional-effect
* component[=].valueCodeableConcept = http://sequenceontology.org#SO:0001886 "transcript_fusion"

Instance: somaticPatient
InstanceOf: Patient
Description: "Somatic example Patient"
Usage: #example
* identifier.use = #temp
* identifier.type = $IDTYPE#MR "Medical record number"
* identifier.system = "http://www.somesystemabc.net/identifiers/persons"
* identifier.value = "1234567"
* identifier.period.start = "2021-01-01"
* identifier.assigner.display = "General Hospital"
* active = true
* name.use = #official
* name.family = "Hamsburg"
* name.given[0] = "Substance"
* name.given[+] = "Junior"
* gender = #male
* birthDate = "1987-09-01"

Instance: somaticStudy
InstanceOf: GenomicStudy
Description: "Example for somatic genetic study"
Usage: #example
* extension[0].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-ext"
* extension[=].valueReference = Reference(analysisTumorNormalDNA)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-ext"
* extension[=].valueReference = Reference(analysisTumorRNA)
* status = #completed
* code.text = "My Test Cancer 700 Gene Panel"
* category = $OBSCAT#laboratory
* subject = Reference(somaticPatient)
* performedDateTime = "2023-02-02"
* reasonCode = $SCT#424993006 "Adenocarcinoma of lung, stage IV (disorder)"
* note.text = "I. Assay Overview: The Genomic Cancer Testing Assay is a comprehensive molecular examination designed to detect and quantify specific DNA and RNA alterations associated with malignancies. The test incorporates Next Generation Sequencing (NGS) technology to profile tumor samples, providing insights into the genomic alterations that drive tumor behavior and prognosis. II. Target Genes and Biomarkers: This assay evaluates an extensive panel of cancer-related genes, focusing on mutations, copy number variations, fusions, and select RNA expression levels known to be relevant in the oncology field. The analyzed genes are implicated in various cancer types and have established therapeutic, diagnostic, prognostic, or predictive relevance. Genes tested: ABL1, ATK1, ALK, APC, etc. III. Methodology: Sample Type: Formalin-fixed, paraffin-embedded (FFPE) tumor tissue. Sequencing Platform: Illumina-based NGS technology. Library Preparation: Amplification of specific target regions within the genes of interest. Bioinformatics Analysis: Employing advanced algorithms and databases to annotate and interpret the detected variants' clinical significance. IV. Assay Performance: Sensitivity: Detects variants with a mutant allele frequency (MAF) as low as 5%. Specificity: >99% for single nucleotide variants (SNVs) and indels. Reportable Range: Identification and quantification of SNVs, indels, fusions, amplifications, and RNA expression levels of specific genes. V. Clinical Interpretation: The report offers a concise clinical interpretation of identified genomic alterations, linking the detected variants to FDA-approved therapies, clinical trials, or the patient's potential response to specific treatments. VI. Limitations: The assay might not detect alterations present at low levels or in regions not covered by the test. Variants may be present in genes not included in the panel. The test does not assess epigenetic changes, like methylation status. False negatives and false positives, although rare, may occur due to the technical limitations of the methodology employed. VII. Quality Assurance: The laboratory follows CAP/CLIA guidelines, ensuring stringent quality control and assurance practices at each step, from sample reception to result reporting. VIII. Result Delivery: Results are delivered within 10-14 working days from the sample receipt. The report outlines detected genomic alterations, their clinical implications, and potential therapeutic options. IX. Contact: For further clarification or questions regarding the results, healthcare providers are encouraged to contact our molecular pathology board-certified experts."

Instance: analysisTumorNormalDNA
InstanceOf: GenomicStudyAnalysis
Description: "Example for Tumor Normal Genomics Study Analysis"
Usage: #example
* extension[GenomicStudyAnalysisRegions]
  * extension[studied][+].valueReference = Reference(DocumentReference/WES-FullSequencedRegion-GRCh38)
  * extension[uncalled][+].valueReference = Reference(DocumentReference/WES-UncallableRegions-GRCh38)
* extension[GenomicStudyAnalysisMethodType][+].valueCodeableConcept = $GSMETHODTYPE#sequence-analysis-of-the-entire-coding-region "Sequence analysis of the entire coding region"
* extension[GenomicStudyAnalysisMethodType][+].valueCodeableConcept = $GSMETHODTYPE#deletion-duplication-analysis "Deletion/duplication analysis"
* extension[GenomicStudyAnalysisChangeType][+].valueCodeableConcept = $SEQONT#SO:0001483 "SNV"
* extension[GenomicStudyAnalysisChangeType][+].valueCodeableConcept = $SEQONT#SO:0002007 "MNV"
* extension[GenomicStudyAnalysisChangeType][+].valueCodeableConcept = $SEQONT#SO:1000032 "delins"
* extension[GenomicStudyAnalysisChangeType][+].valueCodeableConcept = $SEQONT#SO:0001019 "CNV"
* extension[GenomicStudyAnalysisGenomeBuild].valueCodeableConcept = $LNC#LA26806-2 "GRCh38"
* extension[GenomicStudyAnalysisSpecimen][+].valueReference = Reference(Specimen/tumorSpecimen)
* extension[GenomicStudyAnalysisSpecimen][+].valueReference = Reference(Specimen/normalSpecimen)
* extension[GenomicStudyAnalysisFocus][+].valueReference = Reference(Patient/somaticPatient)
* extension[GenomicStudyAnalysisOutput][+]
  * extension[type].valueCodeableConcept = $GSFILETYPE#vcf "VCF"
  * extension[file].valueReference = Reference(DocumentReference/somaticVCFfile)
* status = #completed
* category = $OBSCAT#laboratory
* performedDateTime = "2023-02-02T01:01:10-06:00"
* note.text = "For technical reasons, BCR gene was deemed uncallable."
* subject = Reference(somaticPatient)

Instance: analysisTumorRNA
InstanceOf: GenomicStudyAnalysis
Description: "Example for just Tumor RNA Genomic Study Analysis"
Usage: #example
* extension[GenomicStudyAnalysisRegions].extension[studied][+].valueReference = Reference(DocumentReference/FullGenome-GRCh38)
* extension[GenomicStudyAnalysisMethodType].valueCodeableConcept = $GSMETHODTYPE#rna-analysis "RNA analysis"
* extension[GenomicStudyAnalysisChangeType][+].valueCodeableConcept = $SEQONT#SO:0001565 "gene_fusion"
* extension[GenomicStudyAnalysisChangeType][+].valueCodeableConcept = $SEQONT#SO:0001576 "transcript_variant"
* extension[GenomicStudyAnalysisSpecimen][+].valueReference = Reference(Specimen/tumorSpecimen)
* extension[GenomicStudyAnalysisFocus][+].valueReference = Reference(Patient/somaticPatient)
* status = #completed
* category = $OBSCAT#laboratory
* performedDateTime = "2023-02-02T01:01:10-06:00"
* subject = Reference(somaticPatient)

Instance: tumorSpecimen
InstanceOf: Specimen
Description: "Example for tumor specimen"
Usage: #example
* identifier.system = "http://www.somesystemabc.net/identifiers/specimens"
* identifier.value = "222333"
* status = #available
* type = $SCT#122610009 "Specimen from lung obtained by biopsy (specimen)"
* subject = Reference(Patient/somaticPatient) "Hamsburg, Substance Jr"
* receivedTime = "2023-01-23T01:01:01Z"
* collection.collectedDateTime = "2023-01-01T01:01:00Z"
* collection.method = $SCT#129314006 "Biopsy - action"
* collection.bodySite = $SCT#3341006 "Right lung structure (body structure)"
* note.text = "Tumor: 20%"

Instance: normalSpecimen
InstanceOf: Specimen
Description: "Example for normal specimen"
Usage: #example
* identifier.system = "http://www.somesystemabc.net/identifiers/specimens"
* identifier.value = "444555"
* status = #available
* type = $SCT#119297000 "Blood specimen (specimen)"
* subject = Reference(Patient/somaticPatient) "Hamsburg, Substance Jr"
* receivedTime = "2023-01-23T01:01:01Z"
* collection.collectedDateTime = "2023-01-01T01:01:00Z"

Instance: WES-UncallableRegions-GRCh38
InstanceOf: GenomicDataFile
Description: "Example for Genomic Data File WES-UncallableRegions-GRCh38"
Usage: #example
* identifier.system = "http://www.somesystemabc.net/identifiers/files"
* identifier.value = "11146520"
* status = #current
* docStatus = #preliminary
* description = "Regions deemed uncallable (generally due to low coverage)."
* securityLabel = $CONFIDENTIALITY#R "Restricted"
* content.attachment.url = "https://chat.fhir.org/user_uploads/10155/WrHnNR_WvMcqM2aXQ3BRHxlA/WES-UncallableRegions-GRCh38.bed"
* content.attachment.title = "WES-UncallableRegions-GRCh38"

Instance: somaticVCFfile
InstanceOf: GenomicDataFile
Description: "Example for Genomic Data File somaticVCFfile"
Usage: #example
* identifier.system = "http://www.somesystemabc.net/identifiers/files"
* identifier.value = "1134121"
* status = #current
* docStatus = #preliminary
* description = "VCF file containing identified variants"
* securityLabel = $CONFIDENTIALITY#R "Restricted"
* content.attachment.url = "https://chat.fhir.org/user_uploads/10155/Rp_GBGx6jz5reuS_Py7XQDjr/somaticVCFFile.vcf"
* content.attachment.title = "somatic VCF File"

Instance: FullGenome-GRCh38
InstanceOf: GenomicDataFile
Description: "Example for Genomic Data File FullGenome-GRCh38"
Usage: #example
* identifier.system = "http://www.somesystemabc.net/identifiers/files"
* identifier.value = "1076146520"
* status = #current
* docStatus = #preliminary
* description = "Studied region for RNA sequencing."
* securityLabel = $CONFIDENTIALITY#R "Restricted"
* content.attachment.url = "https://chat.fhir.org/user_uploads/10155/ha97JexWz8T5PLHl7zoLsosd/Default.WGS.GRCh38.bed"
* content.attachment.title = "Full Genome"

Instance: overallInt
InstanceOf: OverallInterpretation
Description: "Example for Overall Interpretation."
* id = "overallInt"
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* valueCodeableConcept = $LNC#LA6576-8 "Positive"
* subject = Reference(somaticPatient)
* status = #final
* component[conclusion-string].valueString = "Patient is positive for Tier 1 / Level A variants, including variants with FDA-approved indications."

Instance: TMBExample
InstanceOf: MolecularBiomarker
Description: "Example for Tumor Mutation Burden"
* id = "TMBExample"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/molecular-biomarker"
* status = #final "final"
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* category[labCategory].coding = $OBSCAT#laboratory
* category[mbCategory].coding = TbdCodesCS#biomarker-category
* category[geCategory].coding = $DIAGNOSTICSERVICE#GE
* code = $LNC#94076-7 "Mutations/Megabase [# Ratio] in Tumor"
* subject = Reference(somaticPatient)
* valueQuantity.value = 29.8
* component[biomarker-category].code = TbdCodesCS#biomarker-category
* component[biomarker-category].valueCodeableConcept.coding = MolecularBiomarkerOntologyCS#molgen "molecular sequence adjacent category"

Instance: MSIExample
InstanceOf: MolecularBiomarker
Description: "Example for MSI"
* id = "MSIExample"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/molecular-biomarker"
* status = #final "final"
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* category[labCategory].coding = $OBSCAT#laboratory
* category[mbCategory].coding = TbdCodesCS#biomarker-category
* category[geCategory].coding = $DIAGNOSTICSERVICE#GE
* code = $LNC#81695-9 "Microsatellite instability [Interpretation] in Cancer specimen Qualitative"
* subject = Reference(somaticPatient)
* valueCodeableConcept = $LNC#LA26203-2 "MSI-H"
* component[biomarker-category].code = TbdCodesCS#biomarker-category
* component[biomarker-category].valueCodeableConcept.coding = MolecularBiomarkerOntologyCS#molgen "molecular sequence adjacent category"

Instance: PDL1Example
InstanceOf: MolecularBiomarker
Description: "Example for PD-L1"
* id = "PDL1Example"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/molecular-biomarker"
* status = #final "final"
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* category[labCategory].coding = $OBSCAT#laboratory
* category[mbCategory].coding = TbdCodesCS#biomarker-category
* category[geCategory].coding = $DIAGNOSTICSERVICE#GE
* code = $LNC#85147-7 "PD-L1 by clone 22C3 in Tissue by Immune stain Report"
* subject = Reference(somaticPatient)
* valueCodeableConcept = $LNC#LA6576-8 "Positive"
* component[biomarker-category][0].valueCodeableConcept = $BIOMARKER#cellReceptorLigand "cell receptor ligand category"
* component[biomarker-category][1].valueCodeableConcept = $BIOMARKER#immuneStain "immune stain category"
* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:17635 "CD274"
* note.text = "5% tumor proportion score"

Instance: HLA-A-haplotype1
InstanceOf: Haplotype
Description: "Example for HLA-A-haplotype1"
Usage: #example
* status = #final
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = $LNC#84414-2 "Haplotype Name"
* issued = "2023-02-01T00:00:00-05:00"
* valueCodeableConcept = $HLAALLELE#A*24:02 "HLA-A*24:02"
* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:4931 "HLA-A"

Instance: HLA-A-haplotype2
InstanceOf: Haplotype
Description: "Example for HLA-A-haplotype2"
Usage: #example
* status = #final
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = $LNC#84414-2 "Haplotype Name"
* issued = "2023-02-01T00:00:00-05:00"
* valueCodeableConcept = $HLAALLELE#A*02:06 "HLA-A*02:06"
* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:4931 "HLA-A"

Instance: HLA-B-haplotype1
InstanceOf: Haplotype
Description: "Example for HLA-B-haplotype1"
Usage: #example
* status = #final
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = $LNC#84414-2 "Haplotype Name"
* issued = "2023-02-01T00:00:00-05:00"
* valueCodeableConcept = $HLAALLELE#B*35:01 "HLA-B*35:01"
* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:4932 "HLA-B"

Instance: HLA-B-haplotype2
InstanceOf: Haplotype
Description: "Example for HLA-B-haplotype2"
Usage: #example
* status = #final
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = $LNC#84414-2 "Haplotype Name"
* issued = "2023-02-01T00:00:00-05:00"
* valueCodeableConcept = $HLAALLELE#B*35:01 "HLA-B*35:01"
* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:4932 "HLA-B"

Instance: HLA-C-haplotype1
InstanceOf: Haplotype
Description: "Example for HLA-C-haplotype1"
Usage: #example
* status = #final
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = $LNC#84414-2 "Haplotype Name"
* issued = "2023-02-01T00:00:00-05:00"
* valueCodeableConcept = $HLAALLELE#C*03:03 "HLA-C*03:03"
* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:4933 "HLA-C"

Instance: HLA-C-haplotype2
InstanceOf: Haplotype
Description: "Example for HLA-C-haplotype2"
Usage: #example
* status = #final
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2023-02-01"
* performer[0] = Reference(pathologistPractitioner)
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = $LNC#84414-2 "Haplotype Name"
* issued = "2023-02-01T00:00:00-05:00"
* valueCodeableConcept = $HLAALLELE#C*15:02 "HLA-C*15:02"
* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:4933 "HLA-C"

Instance: somaticReport
InstanceOf: GenomicReport
Description: "Example somatic GenomicReport"
Usage: #example
* extension[0].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-reference"
* extension[=].valueReference = Reference(somaticStudy) "somaticStudy"
* identifier.type.coding.code = #ACSN
* identifier.type.coding.display = "Accession ID"
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier.value = "23-0000345"
* status = #final
* category[Genetics] = $DIAGNOSTICSERVICE#GE "Genetics"
* code.coding[0] = $LNC#51969-4 "Genetic analysis report"
* effectiveDateTime = "2023-02-02"
* basedOn = Reference(somaticServiceRequest)
* performer[0] = Reference(pathologistPractitioner)
* performer[+] = Reference(performingOrganization)
* resultsInterpreter[0] = Reference(supervisorPractitioner)
* resultsInterpreter[+] = Reference(performingOrganization)
* result[0] = Reference(overallInt)
* result[+] = Reference(NOTCH1-uncertain-var)
* result[+] = Reference(ZFHX3-uncertain-var)
* result[+] = Reference(MSH2-del-var)
* result[+] = Reference(NTHL1-snv-var)
* result[+] = Reference(STAG2-insertion-var)
* result[+] = Reference(ATR-insertion-var)
* result[+] = Reference(ATM-missense-var)
* result[+] = Reference(EGFR-L858R-var)
* result[+] = Reference(ROS1-Fusion-var)
* result[+] = Reference(NOTCH1-significance)
* result[+] = Reference(ZFHX3-significance)
* result[+] = Reference(MSH2-del-disease)
* result[+] = Reference(NTHL1-snv-disease)
* result[+] = Reference(STAG2-insertion-significance)
* result[+] = Reference(ATR-insertion-significance)
* result[+] = Reference(ATM-missense-significance)
* result[+] = Reference(EGFR-L858R-significance)
* result[+] = Reference(ROS1-Fusion-disease)
* result[+] = Reference(ROS1-Fusion-therapuTrial)
* result[+] = Reference(ROS1-Fusion-therapuDrug)
* result[+] = Reference(EGFR-L858R-therapuDrug1)
* result[+] = Reference(EGFR-L858R-therapuDrug2)
* result[+] = Reference(TMB-therapuDrug)
* result[+] = Reference(NOTCH1-uncertain-molc)
* result[+] = Reference(ZFHX3-uncertain-molc)
* result[+] = Reference(MSH2-del-molc)
* result[+] = Reference(NTHL1-snv-molc)
* result[+] = Reference(STAG2-insertion-molc)
* result[+] = Reference(ATR-insertion-molc)
* result[+] = Reference(ATM-insertion-molc)
* result[+] = Reference(EGFR-L858R-molc)
* result[+] = Reference(ROS1-Fusion)
* result[+] = Reference(TMBExample)
* result[+] = Reference(MSIExample)
* result[+] = Reference(PDL1Example)
* result[+] = Reference(HLA-A-haplotype1)
* result[+] = Reference(HLA-A-haplotype2)
* result[+] = Reference(HLA-B-haplotype1)
* result[+] = Reference(HLA-B-haplotype2)
* result[+] = Reference(HLA-C-haplotype1)
* result[+] = Reference(HLA-C-haplotype2)

Instance: somaticServiceRequest
InstanceOf: ServiceRequest
Description: "Example for Somatic Testing Request"
Usage: #example
* identifier.type = $IDTYPE#LACSN
* identifier.type.text = "Laboratory Accession ID"
* identifier.system = "http://www.somesystemabc.net/identifiers/serviceRequests"
* identifier.value = "1111jh11112"
* status = #active
* intent = #plan
* code.text = "My Test Cancer 700 Gene Panel"
* subject = Reference(somaticPatient)
* reasonCode = $SCT#424993006 "Adenocarcinoma of lung, stage IV (disorder)"
* requester = Reference(orderingPractitioner)

Instance: orderingPractitioner
InstanceOf: Practitioner
Description: "Example of an ordering provider"
Usage: #example
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "1245319599"
* active = true
* name.family = "Submitter"
* name.given = "Test"
* name.prefix = "Dr"
* address.line = "1000 SE Submitter Ave"
* address.city = "Los Angeles"
* address.state = "CA"
* address.postalCode = "90027"

Instance: pathologistPractitioner
InstanceOf: Practitioner
Description: "Example of a pathologist"
Usage: #example
* identifier.system = "http://www.somesystemabc.net/identifiers/persons"
* identifier.value = "11d116"
* active = true
* name.family = "Dolin"
* name.given = "Test"
* name.prefix = "Dr"

Instance: supervisorPractitioner
InstanceOf: Practitioner
Description: "Example of a supervisor"
Usage: #example
* identifier.system = "http://www.somesystemabc.net/identifiers/persons"
* identifier.value = "11d1x16"
* active = true
* name.family = "Chamala"
* name.given = "Test"
* name.prefix = "Dr"

Instance: performingOrganization
InstanceOf: Organization
Description: "Example of a Pathology lab"
Usage: #example
* identifier.system = "http://www.somesystemabc.net/identifiers/CLIA"
* identifier.value = "10000DLAB8"
* name = "My Test Pathology Laboratories"
* telecom[0].system = #phone
* telecom[=].value = "(100) 200-3000"
* telecom[+].system = #fax
* telecom[=].value = "(400) 500-6000"
* telecom[+].system = #url
* telecom[=].value = "http://www.example.com/mytestpathlabs"
* address.line = "1000 SE Lab Ave"
* address.city = "Los Angeles"
* address.state = "CA"
* address.postalCode = "90027"
