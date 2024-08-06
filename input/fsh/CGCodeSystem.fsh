CodeSystem: SequencePhaseRelationshipCS
Id: sequence-phase-relationship-cs
Title: "Sequence Phase Relationship Codes"
Description: "Code System for specific types of relationships"
* ^caseSensitive = true
* ^experimental = false
* #Cis "Cis" "Phase is in cis (same chromosome)"
* #Trans "Trans" "Phase is in trans (different chromosomes)"
* #Indeterminate "Indeterminate" "Phase is unable to be determined"
* #Unknown "Unknown" "Phase is unknown"

CodeSystem: TbdCodesCS
Id: tbd-codes-cs
Title: "To Be Determined Codes"
Description: "These codes are 'TBD' codes, meaning they are important concepts but codes have not been identifed in available code systems. The CG WG anticpates these codes maturing over time. We may remove some codes as we refine the concepts, or identify suitable replacement codes from other code systems. As we approach normative and these concepts are validated, for codes that remain, we plan to request formal LOINC codes to replace these temporary codes."
* ^caseSensitive = true
* ^experimental = false
* #associated-therapy "Associated Therapy" "The non-medication therapy (procedure) associated with this implication."
* #molecular-consequence "Molecular Consequence" "The calculated or observed effect of a DNA variant on its downstream transcript and, if applicable, ensuing protein sequence."
* #feature-consequence "Feature Consequence" "The structural implications of a variant (e.g. the variant disrupts a regulatory region, the variant is an inframe insertion)."
* #diagnostic-implication "Diagnostic Implication" "An observation linking a genomic finding with a knowledge base, providing context that may aid in diagnosing a patient with a particular phenotype or condition."
* #therapeutic-implication "Therapeutic Implication" "An observation linking a genomic finding with a knowledge base, providing potential evidence of an interaction with a specified medication or non-medicinal therapy. Ramifications may include alterations in drug metabolism (or pharmacokinetics) that determine the concentration of the drug, prodrug, and/or break-down products over time; alterations in drug efficacy (or pharmacodynamics) that determine how effective a drug is at a given concentration; alterations that alter the risk of adverse drug events, or other types of implications that indicate altered responsiveness to other types of therapies."
* #functional-effect "Functional Effect" "The effect of a variant on downstream biological products or pathways (from Sequence Ontology)."
* #conclusion-string "Conclusion Text" "Clinical conclusion (interpretation) of the observation."
* #condition-inheritance "Condition Inheritance" "The transmission pattern of the condition/phenotype in a pedigree."
* #variant-confidence-status "Variant Confidence Status" "The confidence of a true positive variant call."
* #repeat-motif "Repeat Expansion Motif" "Nucleotides of a repeat expansion motif."
* #repeat-number "Number of Repeat Expansions" "Number of repeats of a repeat expansion."
* #biomarker-category "A characterization of a given biomarker observation."
* #protein-ref-seq "An identifier for the protein reference sequence."
* #genomic-annotation "Genomic Annotation" "The annotations associated with particular variant/sample."

CodeSystem: ClinVarEvidenceLevelCustomCS
Id: clinvar-evidence-level-custom-cs
Title: "ClinVar Evidence Level Example Codes"
Description: "ClinVar contains examples of evidence level concepts that are not conflated with clinical significance. These can be found on  ClinVar https://www.ncbi.nlm.nih.gov/clinvar/docs/review_status/ . These examples are informational only, for copyright information contact the relevant source."
* ^caseSensitive = true
* ^experimental = false
* #4-star	"4 star"	"Supported by practice guideline"
* #3-star	"3 star"	"Supported by expert panel review"
* #2-star	"2 star"	"Supported by submission by multiple-submitters with documentation of criteria for assertion"
* #1-star	"1 star"	"Single submitter providing interpretation and documentation of criteria for assertion"
* #no-star	"no star"	"submitted, no evidence"

CodeSystem: PharmGKBEvidenceLevelCustomCS
Id: pharmgkb-evidence-level-custom-cs
Title: "PharmGKB Evidence Level Example Codes"
Description: "PharmGKB contains examples of evidence level concepts that are not conflated with clinical significance. These can be found on PharmGKB https://www.pharmgkb.org/page/clinAnnLevels. These examples are informational only, for copyright information contact the relevant source."
* ^caseSensitive = true
* ^experimental = false
* #1A	"PGKB 1A"	"High level of evidence. Supported by a guideline or FDA label with variant specific prescribing guidance. Additionally, supported by at least one publication."
* #1B	"PGKB 1B"	"High level of evidence. But, NOT supported by a guideline or FDA label with variant specific prescribing guidance. Additionally, supported by at least one publication."
* #2A	"PGKB 2A"	"Moderate level of evidence. Supported by being a KNOWN pharmacogene on https://www.pharmgkb.org/vips. Also, found in multiple studies but may have a minority of studies that did not support the majority opinion. Supported by at least two indpendent publications."
* #2B	"PGKB 2B"	"Moderate level of evidence. NOT in the list of very important, KNOWN pharmacogenes. Found in multiple studies but may have a minority of studies that did not support the majority opinion. Supported by at least two indpendent publications."
* #3	"PGKB 3"	"Low-level of evidence. Where either the assocation is based on a single study, failed to be reproduced, or preliminary evidence."
* #4	"PGKB 4"	"The evidence does not support an association between the variant and the drug phenotype. (negative)"

CodeSystem: VariantConfidenceStatusCS
Id: variant-confidence-status-cs
Title: "Variant Confidence Status Codes"
Description: "A code that represents the confidence of a true positive variant call."
* ^caseSensitive = true
* ^experimental = false
* #high	        "High"	        "High confidence true positive variant call. Suitable for clinical reporting."
* #intermediate	"Intermediate"	"Candidate true positive variant call. Unable to confirm without additional testing."
* #low	        "Low"	        "High confidence false positive variant call."

CodeSystem: CodedAnnotationTypesCS
Id: coded-annotation-types-cs
Title: "Coded Annotation Type Codes"
Description: "Code System for specific types of coded annotations"
* ^caseSensitive = true
* ^experimental = false
* #test-disclaimer "Test Disclaimer" "Test disclaimer with the report"
* #test-methodology "Test Methodology" "Additional details regarding the test methdology"
* #result-confirmation "Result Confirmation" "Additional details regarding the confirmation of the results"

CodeSystem: MolecularBiomarkerOntologyCS
Id: molecular-biomarker-ontology-cs
Title: "Molecular Biomarker Ontology Codes"
Description: "This (experimental) code system provides for a draft categorization of biomarkers along several axes. Based on ballot feedback, the committee anticipates significant revisions."
* ^status = #active
* ^content = #complete
* ^version = "1.0.0"
* ^caseSensitive = true
* ^experimental = true
* ^hierarchyMeaning = #is-a
* #_physiologyBiomarkerCategory "Molecular biomarker physiologic role category" "A category based on the normal bodily function of the biomarker."
  * #antibody "antibody category" "Molecular biomarker physiologic role is an antibody."
  * #antgen "antigen category" "Molecular biomarker physiologic role is an antigen."
  * #cellReceptor "cell receptor category" "Molecular biomarker physiologic role is a cell receptor."
  * #cellReceptorLigand "cell receptor ligand category" "Molecular biomarker physiologic role is a cell receptor ligand."
* #_moleculeTypeBiomarkerCategory "Molecular biomarker molecular type category" "A category based on the type of biomarker molecule."
  * #carbohydrate "carbohydrate category" "Molecular biomarker molecule type is a carbohydrate."
  * #lipid "lipid category" "Molecular biomarker molecule type is a lipid."
  * #nucleicAcid "nucleic acid category" "Molecular biomarker molecule type is a nucleic acid."
  * #protein "protein category" "Molecular biomarker molecule type is a protein. Includes single or multi-subunit proteins with or without post-translational modifications."
* #_methodBiomarkerCategory "Molecular biomarker method type category" "A category based on the measurement ascertainment method of the biomarker. (Methods are drawn from LOINC (https://loinc.org/kb/users-guide/major-parts-of-a-loinc-term/#type-of-method-6th-part) and NCBI Genetic Testing Registry (https://www.ncbi.nlm.nih.gov/gtr/))."
  * #enzymeAssay "enzyme assay category" "Molecular biomarker method is enzyme assay."
  * #flowCytometry "flow cytometry category" "Molecular biomarker method is flow cytometry."
  * #immuneStain "immune stain category" "Molecular biomarker method is immune stain."
  * #immunoassay "immunoassay category" "Molecular biomarker method is immunoassay."
  * #methylationAnalysis "methylation analysis category" "Molecular biomarker method is methylation analysis."
  * #molgen "molecular sequence adjacent category" "Molecular biomarker method is molecular sequence adjacent observation."

CodeSystem: SamplePopulationCS
Id: sample-population-cs
Title: "Sample Population Coding System"
Description: "Population group that the sample is from. Groups are taken from the a variety of annotation module outputs such as ClinVar, gnomAD3, 1000genomes etc. These values were obtained on July/02/2024. This code system is not meant to be a definitive list of sample populations but instead is an example of this type of code system can be established."
* ^caseSensitive = true
* ^experimental = false
* #african "African" "African"
* #east-asian "East-Asian" "East Asian"
* #south-asian "South-Asian" "South Asian"
* #global "Global" "Global"
* #other-asian "Other-Asian" "Other Asian"
* #asian "Asian" "Asian"
* #european "European" "European"
* #latin-america "Latin-america" "Latin America"
* #amish "Amish" "Amish"
* #latin-admixed-american "Latin-admixed American" "Latin/Admixed American"
* #finnish "Finnish" "Finnish"
* #middle-east "Middle-east" "Middle East"
* #non-finnish-european "Non-Finnish-European" "Non-finnish European"
* #north-american "North-American" "North American"
* #australian "Australian" "Australian"

CodeSystem: AnnotationModuleCS
Id: annotation-module-cs
Title: "Annotation Module Coding System"
Description: "Code System for detailing the Annotation module that performed annotation calculations. This list is meant to include major/common annotation databases but is no definitive. As new databases or modules are being developed or depreciated this list can change accordingly."
* ^caseSensitive = true
* ^experimental = true
* #abraom "ABRaOM" "Arquivo Brasileiro Online de Mutacoes"
* #alfa "ALFA" "Allele Frequency Aggregator"
* #aloft "ALoFT" "Annotation Loss Of Function Transcripts"
* #alphamissense "AlphaMissense"
* #arrvars "arrvars" "Arrhythmia Channelopathy Variants"
* #bayesdel "bayesdel" "deletrious meta-score"
* #biogrid "BioGRID" "Biological General Repository for Interaction DataSets"
* #cadd "CADD" "Combined Annotation Dependent Depletion"
* #cedar "CEDAR" "Cancer Epitope Database and Analysis Resource"
* #cgd "CGD" "Clinical Genomic Database"
* #chasmplus "CHASMplus" "CHASMplus algorithm to discriminate somatic missense muations"
* #civic "CIViC" "Clinical Interpretation of Variants in Cancer"
* #clingen "ClinGen" "Clinical Genome Resource"
* #clinpred "ClinPred" "ClinPred prediction tool"
* #clinvar "ClinVar" "NCBI ClinVar"
* #cosmic "COSMIC" "Catalogue of Somatic Mutations In Cancer"
* #csape "CScape" "CScape Cancer Variant Predictor"
* #cvdkp "CVDKP" "CardioVascular Disease Knowledge Portal"
* #dann "DANN" "DANN"
* #dbcid "dbcid" "Database of Cancer Driver InDels"
* #dbscsnv "dbscSNV" "dbscSNV database inclduing all potential human SNVs"
* #dbsnp "dbSNP" "Single Nucleotide Polymorphism Database"
* #denovodb "denovodb" "denovo-db"
* #dgidb "DGIdb" "Drug Interaction Database"
* #dida "DIDA" "Digenic Diseases Database"
* #encodetfbs "ENCODE TFBS" "ENCODE TFBS"
* #esm1b "ESM1b" "ESM1b protein language model"
* #essgenes "EssentialGenes" "Essential gene mutational and genetic variant database"
* #exac "ExAC" "Exome Aggregation Consortium"
* #fathmm "FATHMM" "Functional Analysis Through Hidden Markov Models"
* #fitcons "fitCons" "Fitness Consequence"
* #funseq2 "FunSeq2" "FunSeq2"
* #gencode "GENCODE" "Genomic ENCyclopedia of DNA Elements"
* #genehancer "GeneHancer" "GeneHancer regulatory element database"
* #genocanyon "GenoCanyon" "GenoCanyon"
* #gerp "GERP" "Genomic Evolation Rate Profiling"
* #geuvadis "Geuvadis" "Geuvadis Consortium"
* #gnomad3 "gnomAD3" "Genome Aggregation Database version 3"
* #grasp "GRASP" "Genome-wide Repository of Associations between SNPs and Phenotypes"
* #gtex "GTEx" "Genotype-Tissue Expression Database"
* #haploreg "HaploReg" "HaploReg"
* #hgdp "HGDP" "Human Genome Diversity Project"
* #hpo "HPO" "Human Phenotype Ontology"
* #intact "IntAct" "IntAct Molecular Interaction Database"
* #interpro "InterPro" "InterPro protein sequence analysis and classification"
* #linsight "LINSIGHT" "LINSIGHT Statistical Model"
* #litvar "LitVar" "LitVar"
* #loftool "LoFtool" "Loss Of Function tool"
* #mavedb "MaveDB" "Multiplexed Assays of Variant Effects Database"
* #metalr "MetaLR" "MetaLogistic Regression"
* #metarnn "MetaRNN" "MetaRNN"
* #metasvm "MetaSVM" "MetaSVM"
* #mirbase "miRBase" "microRNA database"
* #mitomap "MITOMAP" "MITOMAP"
* #mupit "muPIT" "mutation Position Imaging Toolbox"
* #mutationassessor "MutationAssessor" "Mutation Assessors functional impact of protein mutations" 
* #mutationtaster "MutationTaster" "Mutation Taster"
* #mutpanning "MutPanning" "MutPanning"
* #mutpred1 "MutPred1" "MutPred1"
* #mutpred2 "MutPred2" "MutPred2"
* #ncbigene "NCBIGene" "NCBI Gene Database"
* #ncer "ncER" "non-coding Essential Regulation"
* #ndex "NDEx" "NDEx Network Data Exchange"
* #omim "OMIM" "Online Mendelian Inheritance in Man"
* #oncokb "OncoKB" "OncoKB precision oncology knowledge"
* #panglaodb "PanglaoDB" "Pangloa Database"
* #pharmgkb "PharmGKB" "Pharmacogenomics Knowledgebase"
* #phastcons "PhastCons" "Phast Cons"
* #phdsnpg "PhDSNPg" "Predicting Human Deletrous SNPs in human genome"
* #polyphen2 "PolyPhen2" "Polymoprhism Phenotyping v2"
* #provean "PROVEAN" "Protein Variation Effect Analyzer"
* #regulomedb "RegulomeDB" "Regulome Database of DNA features and regulatory elements in non-coding region of human genome"
* #revel "REVEL" "Rare Exome Variant Ensemble Learner"
* #rvis "RVIS" "Residual Varation Intolerance Scoring"
* #segway "SEGWAY" "Segway Encyclopedia of Human Regulatory elements"
* #sift "SIFT" "Sorting Intolerant From Tolerant"
* #spliceai "SpliceAI" "SpliceAI deep learning tool"
* #svracas "SVRACAS" "Simple Variant Ranking Annotation CAncer Score"
* #target "TARGET" "Tumor Alterations Relevant for GEnomics-driven Therapy"
* #thousandgenomes "1000genomes" "Thousandgenomes annotation for allele frequency"
* #trinityctat "TrinityCTAT" "Trinity Cancer Transcriptome Analysis Toolkit"
* #uk10k "UK1OK" "UK10K Cohort Database"
* #uniprot "UNIPROT" "Universal Protein Resource"
* #vest4 "VEST4" "Variant Effect Scoring Tool 4"
