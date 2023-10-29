Instance: bundle-somaticReportPDFdraftExamples
InstanceOf: Bundle
Description: "data instances for somatic report."
// Usage: #os1dddpe = #collection
* type = #collection
* entry[+].resource = NOTCH1-uncertain-var
* entry[+].resource = ZFHX3-uncertain-var
* entry[+].resource = NTHL1-2disease-var
* entry[+].resource = MSH2-del-var
* entry[+].resource = NTHL1-snv-var
* entry[+].resource = STAG2-insertion-var
* entry[+].resource = ATR-insertion-var
* entry[+].resource = ATM-missense-var
* entry[+].resource = EGFR-L858R-var
* entry[+].resource = ROS1-Fusion-var
* entry[+].resource = NOTCH1-significance
* entry[+].resource = ZFHX3-significance
* entry[+].resource = NTHL1-2disease1
* entry[+].resource = NTHL1-2disease2
* entry[+].resource = MSH2-del-disease
* entry[+].resource = NTHL1-snv-disease
* entry[+].resource = STAG2-insertion-significance
* entry[+].resource = ATR-insertion-significance
* entry[+].resource = ATM-missense-significance
* entry[+].resource = EGFR-L858R-significance
* entry[+].resource = ROS1-Fusion-disease
* entry[+].resource = ROS1-Fusion-therapuTrial
* entry[+].resource = ROS1-Fusion-therapuDrug
* entry[+].resource = EGFR-L858R-therapuDrug1
* entry[+].resource = EGFR-L858R-therapuDrug2
* entry[+].resource = NOTCH1-haplotype
* entry[+].resource = ZFHX3-haplotype
* entry[+].resource = STAG2-insertion-haplotype
* entry[+].resource = ATR-insertion-haplotype
* entry[+].resource = NOTCH1-uncertain-molc
* entry[+].resource = ZFHX3-uncertain-molc
* entry[+].resource = NTHL1-2disease-molc
* entry[+].resource = MSH2-del-molc
* entry[+].resource = NTHL1-snv-molc
* entry[+].resource = STAG2-insertion-molc
* entry[+].resource = ATR-insertion-molc
* entry[+].resource = ATM-insertion-molc
* entry[+].resource = EGFR-L858R-molc
* entry[+].resource = ROS1-Fusion
* entry[+].resource = somaticStudy
* entry[+].resource = overallInt

Instance: NOTCH1-uncertain-var
InstanceOf: Variant
Description: "Example for NOTCH1 uncertain"
//* id = "VariantExample1"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = $OBSCAT#laboratory
* method = $LNC#LA26398-0 "Sequencing"
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = $LNC#LA9633-4 "Present"
//* interpretation = $SCT#10828004 "Positive (qualifier value)"
* component[representative-protein-hgvs].valueCodeableConcept = $HGVS#NP_060087.3:p.A1931T
* component[representative-transcript-ref-seq].valueCodeableConcept = $NCBIREFSEQ#NM_017617.5
* component[allelic-read-depth].valueQuantity = 221 '{reads}/{base}' "reads per base pair"
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
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = $LNC#LA9633-4 "Present"
//* interpretation = $SCT#10828004 "Positive (qualifier value)"
* component[representative-protein-hgvs].valueCodeableConcept = $HGVS#NP_008816.3:p.G585S
* component[representative-transcript-ref-seq].valueCodeableConcept = $NCBIREFSEQ#NM_006885.4
* component[allelic-read-depth].valueQuantity = 212 '{reads}/{base}' "reads per base pair"
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

Instance: NTHL1-2disease-var
InstanceOf: Variant
Description: "Example for NTHL1 with 2 diseases"
//* id = "VariantExample1"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = $OBSCAT#laboratory
* method = $LNC#LA26398-0 "Sequencing"
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = $LNC#LA9633-4 "Present"
//* interpretation = $SCT#10828004 "Positive (qualifier value)"
* component[representative-protein-hgvs].valueCodeableConcept = $HGVS#NP_002519.2:p.Gln279Ter
* component[representative-transcript-ref-seq].valueCodeableConcept = $NCBIREFSEQ#NM_006885.4
//* component[allelic-read-depth].valueQuantity = 
//* component[coding-change-type].valueCodeableConcept = 
* component[representative-coding-hgvs].valueCodeableConcept = $HGVS#NM_002528.7:c.835C>T
* component[gene-studied].valueCodeableConcept = $HGNCID#HGNC:8028 "NTHL1"
//* component[alt-allele].valueString = 
//* component[chromosome-identifier].valueCodeableConcept =  
//* component[exact-start-end][0].valueRange.low.value = 
//* component[exact-start-end][0].valueRange.high.value = 
//* component[genomic-ref-seq].valueCodeableConcept = 
//* component[ref-allele].valueString = 
* component[variation-code].valueCodeableConcept = $CLINVAR#620182 "NM_002528.7(NTHL1):c.835C>T (p.Gln279Ter)"
* component[genomic-hgvs].valueCodeableConcept = $HGVS#NC_000016.10:g.2040004G>A
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
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = $LNC#LA9633-4 "Present"
//* interpretation = $SCT#10828004 "Positive (qualifier value)"
* component[representative-protein-hgvs].valueCodeableConcept = $HGVS#NP_000242.1:p.Val611fs
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
* effectiveDateTime = "2019-04-01"
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
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = $LNC#LA9633-4 "Present"
//* interpretation = $SCT#10828004 "Positive (qualifier value)"
* component[representative-protein-hgvs].valueCodeableConcept = $HGVS#NP_006594.3:p.S1178*
* component[representative-transcript-ref-seq].valueCodeableConcept = $NCBIREFSEQ#NM_006603.5
* component[allelic-read-depth].valueQuantity = 88 '{reads}/{base}' "reads per base pair"
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
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = $LNC#LA9633-4 "Present"
//* interpretation = $SCT#10828004 "Positive (qualifier value)"
* component[representative-protein-hgvs].valueCodeableConcept = $HGVS#NP_001175.2:p.R960fs*2
* component[representative-transcript-ref-seq].valueCodeableConcept = $NCBIREFSEQ#NM_001184.4
* component[allelic-read-depth].valueQuantity = 131 '{reads}/{base}' "reads per base pair"
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

Instance: ATM-missense-var
InstanceOf: Variant
Description: "Example for ATM missense"
//* id = "VariantExample1"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = $OBSCAT#laboratory
* method = $LNC#LA26398-0 "Sequencing"
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2019-04-01"
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

//ATM IS NOT CONSISTENT
//Tier I - Level A	6.20%		
//"PARP inhibitor
//Olaparib
//Summary: This study (PMID 32343890) by de Bono et al, is a randomized, open-label, phase 3 trial evaluating the PARP inhibitor olaparib in 387 men with metastatic castration-resistant prostate cancer (mCRPC) who had disease progression while receiving a new hormonal agent (e.g., enzalutamide or abiraterone).The study found that in men with mCRPC who had disease progression while receiving enzalutamide or abiraterone and who had somatic or germline deleterious alterations (irrespective of zygosity) in any of the following HRR genes (BRCA1, BRCA2, ATM, BRIP1, BARD1, CDK12, CHEK1, CHEK2, FANCL, PALB2, PPP2R2A, RAD51B, RAD51C, RAD51D, and RAD54L), olaparib was associated with longer progression-free survival and better measures of response and patient- reported end points than either enzalutamide or abiraterone (PFS HR 0.49 [0.38, 0.63]). For patients with ATM mutations specifically, PFS HR 1.04 [0.61-1.87]. Based on the results of this study, On May 19, 2020, the Food and Drug Administration approved olaparib (LYNPARZA) for adult patients with deleterious or suspected deleterious germline or somatic HRR gene-mutated mCRPC, who have progressed following prior treatment with enzalutamide or abiraterone."	
//Missense Variant		
//"https://civicdb.org/variants/244/summary
//https://civicdb.org/molecular-profiles/240/summary
//https://www.oncokb.org/gene/ATM/N2875K#tab=FDA
//https://www.oncokb.org/therapeutic-levels#version=AAC"


Instance: EGFR-L858R-var
InstanceOf: Variant
Description: "Example for EGFR L858R"
//* id = "VariantExample1"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final "Final"
* category[labCategory] = $OBSCAT#laboratory
* method = $LNC#LA26398-0 "Sequencing"
* subject = Reference(Patient/somaticPatient)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = $LNC#LA9633-4 "Present"
//* interpretation = $SCT#10828004 "Positive (qualifier value)"
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
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = $LNC#LA9633-4 "Present"
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
* component[sample-allelic-frequency][0].valueQuantity.value = 0.075
* component[sample-allelic-frequency][0].valueQuantity.system = "http://unitsofmeasure.org"
* component[sample-allelic-frequency][0].valueQuantity.unit = "decimal"

Instance: NOTCH1-significance
InstanceOf: DiagnosticImplication
Description: "Example DiagnosticImplication - NOTCH1 uncertain significance"
Usage: #example
* status = #final
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
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#diagnostic-implication "Diagnostic Implication"
* derivedFrom = Reference(ZFHX3-uncertain-var)
* component[0].code = $LNC#53037-8 "Genetic variation clinical significance [Imp]"
* component[=].valueCodeableConcept = $LNC#LA26333-7 "Uncertain Significance"

//NTHL1_2disease1 
//699346009 | Hereditary cancer-predisposing syndrome (disorder) SNOMED
//LA6668-3 Pathogenic
Instance: NTHL1-2disease1
InstanceOf: DiagnosticImplication
Description: "Example DiagnosticImplication - NTHL1 variant 2 Hereditary cancer-predisposing syndrome"
Usage: #example
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#diagnostic-implication "Diagnostic Implication"
* derivedFrom = Reference(NTHL1-2disease-var)
* component[0].code = $LNC#53037-8 "Genetic variation clinical significance [Imp]"
* component[=].valueCodeableConcept = $LNC#LA6668-3 "Pathogenic"
* component[+].code = $LNC#81259-4 "Associated phenotype"
* component[=].valueCodeableConcept.coding[0] = $SCT#699346009 "Hereditary cancer-predisposing syndrome (disorder)"
* component[=].valueCodeableConcept.text = "Hereditary cancer-predisposing syndrome"

//NTHL1_2disease2 
//616415 FAMILIAL ADENOMATOUS POLYPOSIS 3 OMIM
//2nd condition - will be second observation use LA26332-9^Likely Pathogenic
Instance: NTHL1-2disease2
InstanceOf: DiagnosticImplication
Description: "Example DiagnosticImplication - NTHL1 variant 2 FAMILIAL ADENOMATOUS POLYPOSIS 3"
Usage: #example
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#diagnostic-implication "Diagnostic Implication"
* derivedFrom = Reference(NTHL1-2disease-var)
* component[0].code = $LNC#53037-8 "Genetic variation clinical significance [Imp]"
* component[=].valueCodeableConcept = $LNC#LA26332-9 "Likely Pathogenic"
* component[+].code = $LNC#81259-4 "Associated phenotype"
* component[=].valueCodeableConcept.coding[0] = $OMIM#616415 "FAMILIAL ADENOMATOUS POLYPOSIS 3"
* component[=].valueCodeableConcept.text = "FAMILIAL ADENOMATOUS POLYPOSIS 3"

//MSH2_del 
//699346009 | Hereditary cancer-predisposing syndrome (disorder) SNOMED
//LA6668-3 Pathogenic
Instance: MSH2-del-disease
InstanceOf: DiagnosticImplication
Description: "Example DiagnosticImplication - MSH2 deletion Hereditary cancer-predisposing syndrome"
Usage: #example
* status = #final
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
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#diagnostic-implication "Diagnostic Implication"
* derivedFrom = Reference(STAG2-insertion-var)
* component[0].code = $LNC#53037-8 "Genetic variation clinical significance [Imp]"
* component[=].valueCodeableConcept = $LNC#LA26332-9 "Likely Pathogenic"
* component[=].extension[workflow-relatedArtifact].valueRelatedArtifact.type = #citation
* component[=].extension[workflow-relatedArtifact].valueRelatedArtifact.url = "https://www.ncbi.nlm.nih.gov/gene/545#:~:text=ATR%20may%20function%20as%20an,radiation%20when%20ATM%20is%20deficient"

//ATR insertion 
//LA26332-9^Likely Pathogenic
//Tier 2C
//https://www.jmdjournal.org/cms/attachment/ee43a71b-81de-4cb3-ac5e-2fb9a7d41491/gr2.jpg
Instance: ATR-insertion-significance
InstanceOf: DiagnosticImplication
Description: "Example DiagnosticImplication - ATR likely pathogenic"
Usage: #example
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#diagnostic-implication "Diagnostic Implication"
* derivedFrom = Reference(ATR-insertion-var)
* component[0].code = $LNC#53037-8 "Genetic variation clinical significance [Imp]"
* component[=].valueCodeableConcept = $LNC#LA26332-9 "Likely Pathogenic"

* component[+].code = $LNC#93044-6 "Level of evidence"
//* component[=].valueCodeableConcept = codesystem#code "display"
* component[=].valueCodeableConcept.text = "Tier 2C"
* component[=].extension[workflow-relatedArtifact].valueRelatedArtifact.type = #citation
* component[=].extension[workflow-relatedArtifact].valueRelatedArtifact.url = "https://www.jmdjournal.org/cms/attachment/ee43a71b-81de-4cb3-ac5e-2fb9a7d41491/gr2.jpg"

* component[+].code = TbdCodesCS#conclusion-string
* component[=].valueString = "The protein encoded by this gene is a serine/threonine kinase and DNA damage sensor, activating cell cycle checkpoint signaling upon DNA stress. The encoded protein can phosphorylate and activate several proteins involved ... more"
* component[=].extension[workflow-relatedArtifact].valueRelatedArtifact.type = #citation
* component[=].extension[workflow-relatedArtifact].valueRelatedArtifact.url = "https://www.ncbi.nlm.nih.gov/gene/545#:~:text=ATR%20may%20function%20as%20an,radiation%20when%20ATM%20is%20deficient"

//ATM_insertion
Instance: ATM-missense-significance
InstanceOf: DiagnosticImplication
Description: "Example DiagnosticImplication - ATM likely pathogenic"
Usage: #example
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#diagnostic-implication "Diagnostic Implication"
* derivedFrom = Reference(ATM-missense-var)
* component[0].code = $LNC#53037-8 "Genetic variation clinical significance [Imp]"
* component[=].valueCodeableConcept = $LNC#LA26332-9 "Likely Pathogenic"

* component[+].code = $LNC#93044-6 "Level of evidence"
//* component[=].valueCodeableConcept = codesystem#code "display"
* component[=].valueCodeableConcept.text = "Tier 2C"
* component[=].extension[workflow-relatedArtifact].valueRelatedArtifact.type = #citation
* component[=].extension[workflow-relatedArtifact].valueRelatedArtifact.url = "https://www.jmdjournal.org/cms/attachment/ee43a71b-81de-4cb3-ac5e-2fb9a7d41491/gr2.jpg"

* component[+].code = TbdCodesCS#conclusion-string
* component[=].valueString = "The protein encoded by this gene belongs to the PI3/PI4-kinase family. This protein is an important cell cycle checkpoint kinase that phosphorylates; thus, it functions as a regulator of a wide variety ... more."


//EGFR L858R
//LA6668-3 Pathogenic
//Tier I - Level A
//https://www.jmdjournal.org/cms/attachment/ee43a71b-81de-4cb3-ac5e-2fb9a7d41491/gr2.jpg
Instance: EGFR-L858R-significance
InstanceOf: DiagnosticImplication
Description: "Example DiagnosticImplication - EGFR pathogenic"
Usage: #example
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#diagnostic-implication "Diagnostic Implication"
* derivedFrom = Reference(EGFR-L858R-var)
* component[0].code = $LNC#53037-8 "Genetic variation clinical significance [Imp]"
* component[=].valueCodeableConcept = $LNC#LA6668-3 "Pathogenic"

* component[+].code = $LNC#93044-6 "Level of evidence"
//* component[=].valueCodeableConcept = codesystem#code "display"
* component[=].valueCodeableConcept.text = "Tier I - Level A"
* component[=].extension[workflow-relatedArtifact].valueRelatedArtifact.type = #citation
* component[=].extension[workflow-relatedArtifact].valueRelatedArtifact.url = "https://www.jmdjournal.org/cms/attachment/ee43a71b-81de-4cb3-ac5e-2fb9a7d41491/gr2.jpg"

* component[+].code = $LNC#81259-4 "Associated phenotype"
* component[=].valueCodeableConcept.coding[0] = $SCT#254637007 "Non-small cell lung cancer (disorder)"
* component[=].valueCodeableConcept.text = "Non-small cell lung cancer"
* component[=].extension[workflow-relatedArtifact].valueRelatedArtifact.type = #citation
* component[=].extension[workflow-relatedArtifact].valueRelatedArtifact.url = "https://civicdb.org/evidence/2994/summary"

* component[=].extension[workflow-relatedArtifact].valueRelatedArtifact.type = #citation
* component[=].extension[workflow-relatedArtifact].valueRelatedArtifact.url = "https://www.cancer.net/cancer-types/lung-cancer-non-small-cell/types-treatment"

* component[+].code = TbdCodesCS#conclusion-string
* component[=].extension[workflow-relatedArtifact].valueRelatedArtifact.type = #citation
* component[=].extension[workflow-relatedArtifact].valueRelatedArtifact.url = "https://civicdb.org/variants/33/summary"


Instance: ROS1-Fusion-disease
InstanceOf: DiagnosticImplication
Description: "Example DiagnosticImplication - ROS1 disease"
Usage: #example
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#diagnostic-implication "Diagnostic Implication"
* derivedFrom = Reference(ROS1-Fusion-var)
* component[0].code = $LNC#53037-8 "Genetic variation clinical significance [Imp]"
* component[=].valueCodeableConcept = $LNC#LA6668-3 "Pathogenic"

* component[+].code = $LNC#93044-6 "Level of evidence"
//* component[=].valueCodeableConcept = codesystem#code "display"
* component[=].valueCodeableConcept.text = "Tier I - Level A"
* component[=].extension[workflow-relatedArtifact].valueRelatedArtifact.type = #citation
* component[=].extension[workflow-relatedArtifact].valueRelatedArtifact.url = "https://www.jmdjournal.org/cms/attachment/ee43a71b-81de-4cb3-ac5e-2fb9a7d41491/gr2.jpg"

* component[+].code = $LNC#81259-4 "Associated phenotype"
* component[=].valueCodeableConcept.coding[0] = $SCT#254637007 "Non-small cell lung cancer (disorder)"
* component[=].valueCodeableConcept.text = "Non-small cell lung cancer"
* component[=].extension[workflow-relatedArtifact].valueRelatedArtifact.type = #citation
* component[=].extension[workflow-relatedArtifact].valueRelatedArtifact.url = "https://civicdb.org/variants/33/summary"

* component[=].extension[workflow-relatedArtifact].valueRelatedArtifact.type = #citation
* component[=].extension[workflow-relatedArtifact].valueRelatedArtifact.url = "https://www.cancer.net/cancer-types/lung-cancer-non-small-cell/types-treatment"

Instance: ROS1-Fusion-therapuTrial
InstanceOf: TherapeuticImplication
Description: "Example of ROS1 Fusion Therapeutic Implication for Clinical Trial"
//* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/therapeutic-implication"
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = TbdCodesCS#therapeutic-implication
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

Instance: ROS1-Fusion-therapuDrug
InstanceOf: TherapeuticImplication
Description: "Example of ROS1 Fusion Therapeutic Implication for drug treatment"
//* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/therapeutic-implication"
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = TbdCodesCS#therapeutic-implication
//* component[0].code.coding = TbdCodesCS#predicted-therapeutic-implication "Predicted Therapeutic Implication"

* component[0].code.coding = TbdCodesCS#therapeutic-implication "Therapeutic Implication"
* component[=].valueCodeableConcept.text = "cancer sensitive to crizotinib"
* component[+].code.coding = $LNC#81259-4 // "Phenotypic treatment context"
* component[=].valueCodeableConcept.coding[0] = $SCT#254637007 "Non-small cell lung cancer (disorder)"
* component[=].valueCodeableConcept.text = "Non-small cell lung cancer"
* component[+].code = $LNC#51963-7 "Medication assessed"
* component[=].valueCodeableConcept.text = "Crizotinib"
* component[=].extension[workflow-relatedArtifact].valueRelatedArtifact.type = #citation
* component[=].extension[workflow-relatedArtifact].valueRelatedArtifact.url = "https://civicdb.org/molecular-profiles/2562/summary"
* derivedFrom = Reference(ROS1-Fusion-var)
* status = #final
* component[+].code = TbdCodesCS#conclusion-string
* component[=].valueString = "Non-small cell lung cancer positive for ROS1 fusions are sensitive to crizotinib"
* component[=].extension[workflow-relatedArtifact].valueRelatedArtifact.type = #citation
* component[=].extension[workflow-relatedArtifact].valueRelatedArtifact.url = "https://civicdb.org/evidence/7282/summary"

Instance: EGFR-L858R-therapuDrug1
InstanceOf: TherapeuticImplication
Description: "Example of ROS1 Fusion Therapeutic Implication for drug treatment"
//* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/therapeutic-implication"
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = TbdCodesCS#therapeutic-implication
//* component[0].code.coding = TbdCodesCS#predicted-therapeutic-implication "Predicted Therapeutic Implication"
* component[0].code.coding = TbdCodesCS#therapeutic-implication "Therapeutic Implication"
* component[=].valueCodeableConcept.text = "cancer sensitive to gefitinib"
* component[+].code.coding = $LNC#81259-4 // "Phenotypic treatment context"
* component[=].valueCodeableConcept.coding[0] = $SCT#254637007 "Non-small cell lung cancer (disorder)"
* component[=].valueCodeableConcept.text = "Non-small cell lung cancer"
* component[+].code = $LNC#51963-7 "Medication assessed"
* component[=].valueCodeableConcept.text = "Gefitinib"
* component[=].extension[workflow-relatedArtifact].valueRelatedArtifact.type = #citation
* component[=].extension[workflow-relatedArtifact].valueRelatedArtifact.url = "https://www.cancer.net/cancer-types/lung-cancer-non-small-cell/types-treatment"
* derivedFrom = Reference(EGFR-L858R-var)
* status = #final
* component[+].code = TbdCodesCS#conclusion-string
* component[=].valueString = "Non-small cell lung cancer with EGFR L858R mutation is sensitive to gefitinib"
* component[=].extension[workflow-relatedArtifact].valueRelatedArtifact.type = #citation
* component[=].extension[workflow-relatedArtifact].valueRelatedArtifact.url = "https://civicdb.org/evidence/2994/summary"

Instance: EGFR-L858R-therapuDrug2
InstanceOf: TherapeuticImplication
Description: "Example of ROS1 Fusion Therapeutic Implication for drug treatment"
//* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/therapeutic-implication"
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = TbdCodesCS#therapeutic-implication
//* component[0].code.coding = TbdCodesCS#predicted-therapeutic-implication "Predicted Therapeutic Implication"
* component[0].code.coding = TbdCodesCS#therapeutic-implication "Therapeutic Implication"
* component[=].valueCodeableConcept.text = "cancer sensitive to erlotinib"
* component[+].code.coding = $LNC#81259-4 // "Phenotypic treatment context"
* component[=].valueCodeableConcept.coding[0] = $SCT#254637007 "Non-small cell lung cancer (disorder)"
* component[=].valueCodeableConcept.text = "Non-small cell lung cancer"
* component[+].code = $LNC#51963-7 "Medication assessed"
* component[=].valueCodeableConcept.text = "Erlotinib"
* component[=].extension[workflow-relatedArtifact].valueRelatedArtifact.type = #citation
* component[=].extension[workflow-relatedArtifact].valueRelatedArtifact.url = "https://www.cancer.net/cancer-types/lung-cancer-non-small-cell/types-treatment"
* derivedFrom = Reference(EGFR-L858R-var)
* status = #final
* component[+].code = TbdCodesCS#conclusion-string
* component[=].valueString = "Non-small cell lung cancer with EGFR L858R mutation is sensitive to erlotinib"
* component[=].extension[workflow-relatedArtifact].valueRelatedArtifact.type = #citation
* component[=].extension[workflow-relatedArtifact].valueRelatedArtifact.url = "https://civicdb.org/evidence/2994/summary"

//NM_017617.5(NOTCH1):c.5791G>A (p.A1931T)
//HGNC:7881
Instance: NOTCH1-haplotype
InstanceOf: Haplotype
Usage: #example
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = $LNC#84414-2 "Haplotype Name"
* effectiveDateTime = "2018"
* issued = "2018-03-06T00:00:00-05:00"
* valueCodeableConcept.text = "NM_017617.5(NOTCH1):c.5791G>A (p.A1931T)"
* derivedFrom = Reference( NOTCH1-uncertain-var)
* component.code = $LNC#48018-6 "Gene studied ID"
* component.valueCodeableConcept = $HGNCID#HGNC:7881 "NOTCH1"

//NM_006885.4(ZFHX3):c.1753G>A (p.G585S)
//HGNC:777
Instance: ZFHX3-haplotype
InstanceOf: Haplotype
Usage: #example
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = $LNC#84414-2 "Haplotype Name"
* effectiveDateTime = "2018"
* issued = "2018-03-06T00:00:00-05:00"
* valueCodeableConcept.text = "NM_006885.4(ZFHX3):c.1753G>A (p.G585S)"
* derivedFrom = Reference(ZFHX3-uncertain-var)
* component.code = $LNC#48018-6 "Gene studied ID"
* component.valueCodeableConcept = $HGNCID#HGNC:777 "ZFHX3"

//NM_006603.5(STAG2):c.3530_3531insGTGACTATTAATAT (p.S1178*)
//HGNC:11355
Instance: STAG2-insertion-haplotype
InstanceOf: Haplotype
Usage: #example
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = $LNC#84414-2 "Haplotype Name"
* effectiveDateTime = "2018"
* issued = "2018-03-06T00:00:00-05:00"
* valueCodeableConcept.text = "NM_006603.5(STAG2):c.3530_3531insGTGACTATTAATAT (p.S1178*)"
* derivedFrom = Reference(STAG2-insertion-var)
* component.code = $LNC#48018-6 "Gene studied ID"
* component.valueCodeableConcept = $HGNCID#HGNC:11355 "STAG2"

//NM_001184.4(ATR):c.2878_2879insAGTAA (p.R960fs*2)
//HGNC:882
Instance: ATR-insertion-haplotype
InstanceOf: Haplotype
Usage: #example
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = $LNC#84414-2 "Haplotype Name"
* effectiveDateTime = "2018"
* issued = "2018-03-06T00:00:00-05:00"
* valueCodeableConcept.text = "NM_001184.4(ATR):c.2878_2879insAGTAA (p.R960fs*2)"
* derivedFrom = Reference(ATR-insertion-var)
* component.code = $LNC#48018-6 "Gene studied ID"
* component.valueCodeableConcept = $HGNCID#HGNC:882 "ATR"



Instance: NOTCH1-uncertain-molc
InstanceOf: MolecularConsequence
Description: "Example Molecular Consequence NOTCH1 missense_variant"
Usage: #example
* status = #final
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

Instance: NTHL1-2disease-molc
InstanceOf: MolecularConsequence
Description: "Example Molecular Consequence NTHL1 variant with two diseases nonsense codon"
Usage: #example
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#molecular-consequence
* subject = Reference(CGPatientExample01)
* derivedFrom = Reference(NTHL1-2disease-var)
* component[0].code = http://loinc.org#48004-6
* component[0].code.text = "coding HGVS"
* component[=].valueCodeableConcept = http://varnomen.hgvs.org#NM_002528.7:c.835C>T "NM_002528.7:c.835C>T"
* component[+].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#feature-consequence
* component[=].valueCodeableConcept.coding[0] = http://sequenceontology.org#SO:0001587 "stop_gained"
* component[=].valueCodeableConcept.text = "nonsense codon"
* component[+].code = http://loinc.org#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept = http://varnomen.hgvs.org#NP_002519.2:p.Gln279Ter "NP_002519.2:p.Gln279Ter"

Instance: MSH2-del-molc
InstanceOf: MolecularConsequence
Description: "Example Molecular Consequence MSH2 frameshift"
Usage: #example
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
* component[+].code = http://loinc.org#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept = http://varnomen.hgvs.org#NP_000242.1:p.Val611fs "NP_000242.1:p.Val611fs"

Instance: NTHL1-snv-molc
InstanceOf: MolecularConsequence
Description: "Example Molecular Consequence NTHL1 SNV variant with nonsense codon"
Usage: #example
* status = #final
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
* component[+].code = http://loinc.org#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept = http://varnomen.hgvs.org#NP_001175.2:p.R960fs*2 "NP_001175.2:p.R960fs*2"
* component[+].code = TbdCodesCS#functional-effect
* component[=].valueCodeableConcept = http://sequenceontology.org#SO_0002054 "loss_of_function_variant"

Instance: ATM-insertion-molc
InstanceOf: MolecularConsequence
Description: "Example Molecular Consequence ATM frameshift"
Usage: #example
* status = #final
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
* component[+].code = http://loinc.org#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept = http://varnomen.hgvs.org#NP_001175.2:p.R960fs*2 "NP_001175.2:p.R960fs*2"
* component[+].code = TbdCodesCS#functional-effect
* component[=].valueCodeableConcept = http://sequenceontology.org#SO_0002054 "loss_of_function_variant"

Instance: EGFR-L858R-molc
InstanceOf: MolecularConsequence
Description: "Example Molecular Consequence EGFR L858R missense_variant"
Usage: #example
* status = #final
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
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#molecular-consequence
* subject = Reference(CGPatientExample01)
* derivedFrom = Reference(ROS1-Fusion-var)
* component[+].code = TbdCodesCS#functional-effect
* component[=].valueCodeableConcept = http://sequenceontology.org#SO:0001565 "gene_fusion"

Instance: somaticPatient
InstanceOf: Patient
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
Usage: #example
* extension[0].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-ext"
* extension[=].valueReference = Reference(analysisTumorNormalDNA)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-ext"
* extension[=].valueReference = Reference(analysisTumorRNA)
* status = #completed
* code.text = "Genomic Cancer Testing Assay"
* category = $OBSCAT#laboratory
* subject = Reference(Patient/somaticPatient)
* performedDateTime = "2023-02-02"
* asserter = Reference(Practitioner/practitioner02)
* reasonCode = $SCT#424993006 "Adenocarcinoma of lung, stage IV (disorder)"

Instance: analysisTumorNormalDNA
InstanceOf: GenomicStudyAnalysis
Usage: #example
* extension[0].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-method-type"
* extension[=].valueCodeableConcept = $methodType#sequence-analysis-of-the-entire-coding-region "Sequence analysis of the entire coding region"
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-method-type"
* extension[=].valueCodeableConcept = $methodType#deletion-duplication-analysis "Deletion/duplication analysis"
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-change-type"
* extension[=].valueCodeableConcept = $SEQONT#SO:0001483 "SNV"
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-change-type"
* extension[=].valueCodeableConcept = $SEQONT#SO:0002007 "MNV"
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-change-type"
* extension[=].valueCodeableConcept = $SEQONT#SO:1000032 "delins"
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-change-type"
* extension[=].valueCodeableConcept = $SEQONT#SO:0001019 "CNV"
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-genome-build"
* extension[=].valueCodeableConcept = $LNC#LA26806-2 "GRCh38"
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-specimen"
* extension[=].valueReference = Reference(Specimen/tumorSpecimen)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-specimen"
* extension[=].valueReference = Reference(Specimen/normalSpecimen)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-focus"
* extension[=].valueReference = Reference(Patient/somaticPatient)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-regions-studied"
* extension[=].valueReference = Reference(DocumentReference/WES-FullSequencedRegion-GRCh38)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-regions-uncallable"
* extension[=].valueReference = Reference(DocumentReference/WES-UncallableRegions-GRCh38)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-output"
* extension[=].extension[0].url = "type"
* extension[=].extension[=].valueCodeableConcept = $fileType#vcf "VCF"
* extension[=].extension[+].url = "file"
* extension[=].extension[=].valueReference = Reference(DocumentReference/somaticVCFfile)
* status = #completed
* category = $OBSCAT#laboratory
* performedDateTime = "2023-02-02T01:01:10-06:00"
* note.text = "For technical reasons, BCR gene was deemed uncallable."
* performer.actor = Reference(Practitioner/practitioner02)
* performer.function = $CodeSystem-v3-ParticipationType.html#PRF "Performer"
* subject = Reference(Patient/somaticPatient)

Instance: analysisTumorRNA
InstanceOf: GenomicStudyAnalysis
Usage: #example
* extension[0].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-method-type"
* extension[=].valueCodeableConcept = $methodType#rna-analysis "RNA analysis"
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-change-type"
* extension[=].valueCodeableConcept = $SEQONT#SO:0001565 "gene_fusion"
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-change-type"
* extension[=].valueCodeableConcept = $SEQONT#SO:0001576 "transcript_variant"
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-specimen"
* extension[=].valueReference = Reference(Specimen/tumorSpecimen)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-focus"
* extension[=].valueReference = Reference(Patient/somaticPatient)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-regions-studied"
* extension[=].valueReference = Reference(DocumentReference/FullGenome-GRCh38)
* status = #completed
* category = $OBSCAT#laboratory
* performedDateTime = "2023-02-02T01:01:10-06:00"
* performer.actor = Reference(Practitioner/practitioner02)
* performer.function = $CodeSystem-v3-ParticipationType.html#PRF "Performer"
* subject = Reference(Patient/somaticPatient)

Instance: tumorSpecimen
InstanceOf: Specimen
Usage: #example
* identifier.system = "http://www.somesystemabc.net/identifiers/specimens"
* identifier.value = "222333"
* status = #available
* type = $SCT#122610009 "Specimen from lung obtained by biopsy (specimen)"
* subject = Reference(Patient/somaticPatient) "Hamsburg, Substance Jr"
* receivedTime = "2023-01-23T01:01:01Z"
* collection.collector = Reference(Practitioner/practitioner02)
* collection.collectedDateTime = "2023-01-01T01:01:00Z"
* collection.method = $SCT#129314006 "Biopsy - action"
* collection.bodySite = $SCT#3341006 "Right lung structure (body structure)"
* note.text = "Tumor: 20%"

Instance: normalSpecimen
InstanceOf: Specimen
Usage: #example
* identifier.system = "http://www.somesystemabc.net/identifiers/specimens"
* identifier.value = "444555"
* status = #available
* type = $SCT#119297000 "Blood specimen (specimen)"
* subject = Reference(Patient/somaticPatient) "Hamsburg, Substance Jr"
* receivedTime = "2023-01-23T01:01:01Z"
* collection.collector = Reference(Practitioner/practitioner02)
* collection.collectedDateTime = "2023-01-01T01:01:00Z"

Instance: WES-UncallableRegions-GRCh38
InstanceOf: DocumentReference
Usage: #example
* identifier.system = "http://www.somesystemabc.net/identifiers/files"
* identifier.value = "11146520"
* status = #current
* docStatus = #preliminary
* description = "Regions deemed uncallable (generally due to low coverage)."
* securityLabel = $v3-Confidentiality#R "Restricted"
* content.attachment.url = "https://chat.fhir.org/user_uploads/10155/kTufC6Mv8FR6WM5-HDu64YD_/WES-UncallableRegions-GRCh38.bed"
* content.attachment.title = "WES-UncallableRegions-GRCh38"

Instance: somaticVCFfile
InstanceOf: DocumentReference
Usage: #example
* identifier.system = "http://www.somesystemabc.net/identifiers/files"
* identifier.value = "1134121"
* status = #current
* docStatus = #preliminary
* description = "VCF file containing identified variants"
* securityLabel = $v3-Confidentiality#R "Restricted"
* content.attachment.url = "https://chat.fhir.org/user_uploads/10155/M8IzVpRjRAEYBLkH2JytSFM-/somaticVCFFile.vcf"
* content.attachment.title = "somatic VCF File"

Instance: FullGenome-GRCh38
InstanceOf: DocumentReference
Usage: #example
* identifier.system = "http://www.somesystemabc.net/identifiers/files"
* identifier.value = "1076146520"
* status = #current
* docStatus = #preliminary
* description = "Studied region for RNA sequencing."
* securityLabel = $v3-Confidentiality#R "Restricted"
* content.attachment.url = "https://chat.fhir.org/user_uploads/10155/wih8YSNPChCcEZfR7m8Duutm/Default.WGS.GRCh38.bed"
* content.attachment.title = "Full Genome"

Instance: overallInt
InstanceOf: OverallInterpretation
Description: "Example for Overall Interpretation."
* id = "overallInt"
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* valueCodeableConcept = $LNC#LA6576-8 "Positive"
* subject = Reference(somaticPatient)
* status = #final
* component[conclusion-string].valueString = "Patient is positive for Tier 1 / Level A variants, including variants with FDA-approved indications."