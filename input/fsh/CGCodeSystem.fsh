CodeSystem: SequencePhaseRelationshipCS
Id: sequence-phase-relationship-cs
Title: "Sequence Phase Relationship Codes"
Description: "Code System for specific types of relationships"
* ^url = "http://terminology.hl7.org/CodeSystem/sequence-phase-relationship-cs"
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
* ^experimental = true
* #associated-therapy "Associated Therapy" "The non-medication therapy (procedure) associated with this implication."
* #molecular-consequence "Molecular Consequence" "The calculated or observed effect of a DNA variant on its downstream transcript and, if applicable, ensuing protein sequence."
* #feature-consequence "Feature Consequence" "The structural implications of a variant (e.g. the variant disrupts a regulatory region, the variant is an inframe insertion)."
* #diagnostic-implication "Diagnostic Implication" "An observation linking a genomic finding with a knowledge base, providing context that may aid in diagnosing a patient with a particular phenotype or condition."
* #therapeutic-implication "Therapeutic Implication" "An observation linking a genomic finding with a knowledge base, providing potential evidence of an interaction with a specified medication or non-medicinal therapy. Ramifications may include alterations in drug metabolism (or pharmacokinetics) that determine the concentration of the drug, prodrug, and/or break-down products over time; alterations in drug efficacy (or pharmacodynamics) that determine how effective a drug is at a given concentration; alterations that alter the risk of adverse drug events, or other types of implications that indicate altered responsiveness to other types of therapies."
* #genomic-annotation "Genomic Annotation" "Profile for communicating the genome annotation derived from a genomic finding. Annotations are obtained from different databases (Clinvar,gnomad3,thousandgenomes etc.). NOTE: The bound Annotation Module value set is extensible. New annotation programs are being developed and old programs are being upodated/revised, meaning some annotation modules are outside the value set."
* #functional-effect "Functional Effect" "The effect of a variant on downstream biological products or pathways (from Sequence Ontology)."
* #conclusion-string "Conclusion Text" "Clinical conclusion (interpretation) of the observation."
* #condition-inheritance "Condition Inheritance" "The transmission pattern of the condition/phenotype in a pedigree."
* #variant-confidence-status "Variant Confidence Status" "The confidence of a true positive variant call."
* #repeat-motif "Repeat Expansion Motif" "Nucleotides of a repeat expansion motif."
* #repeat-number "Number of Repeat Expansions" "Number of repeats of a repeat expansion."
* #biomarker-category "A characterization of a given biomarker observation."
* #protein-ref-seq "An identifier for the protein reference sequence."
* #conservation-score "Conservation Score" "The conservation score calculated" 
* #annotation-pipeline "Annotation Pipeline" "The name of the data pipeline that processed the genomic data file"
* #knowledge-base "Knowledge Base" "The database from which the annotation is derived"

CodeSystem: ClinVarEvidenceLevelCustomCS
Id: clinvar-evidence-level-custom-cs
Title: "ClinVar Evidence Level Example Codes"
Description: "ClinVar contains examples of evidence level concepts that are not conflated with clinical significance. These can be found on  ClinVar https://www.ncbi.nlm.nih.gov/clinvar/docs/review_status/ . These examples are informational only, for copyright information contact the relevant source."
* ^caseSensitive = true
* ^experimental = true
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
* ^experimental = true
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
* ^url = "http://terminology.hl7.org/CodeSystem/variant-confidence-status-cs"
* ^caseSensitive = true
* ^experimental = true
* #high	        "High"	        "High confidence true positive variant call. Suitable for clinical reporting."
* #intermediate	"Intermediate"	"Candidate true positive variant call. Unable to confirm without additional testing."
* #low	        "Low"	        "High confidence false positive variant call."

CodeSystem: CodedAnnotationTypesCS
Id: coded-annotation-types-cs
Title: "Coded Annotation Type Codes"
Description: "Code System for specific types of coded annotations"
* ^caseSensitive = true
* ^experimental = true
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

CodeSystem: KnowledgeBaseCS
Id: knowledge-base-cs
Title: "Knowledge Base Codes"
Description: "This example code systems provides examples on how to properly display the knowledge base version number. Version numbers should always be followed by the letter v and calendar dates are displayed Month Day Year. For clarity the month SHALL be written in full."
* ^experimental = true
* ^caseSensitive = false
* #gnomadv4.1exome "gnomad v4.1 exome" "gnomAD version 4.1 exome"
* #gnomadv4.1genome "gnomad v4.1 genome" "gnomAD version 4.1 genome"
* #clinvar-april2024 "clinvar april 2024" "Clinvar April 2024 release"
* #clinvar-march2024 "clinvar march 2024" "Clinvar March 2024 release" 
* #1000genomesv4.1.0 "1000genomes v4.1.0" "1000genomes version 4.1.0"
* #civicv1.2.0 "civic v1.2.0" "CIViC version 1.2.0"
* #graspv2.1.0 "grasp v2.1.0" "GRASP version 2.1.0"
* #oncokbv1.5.2 "oncokb v1.5.2" "OncoKB version 1.5.2"
* #pharmgkbv2.3.5 "pharmgkb v2.3.5" "PharmGKB version 2.3.5"
* #phastconsv3.6.0 "phascons v.3.6.0" "PhastCons version 3.6.0"