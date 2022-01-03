CodeSystem: SequencePhaseRelationshipCS
Id: sequence-phase-relationship-cs
Title: "Sequence Phase Relationship Codes"
Description: "Code System for specific types of relationships"
* ^caseSensitive = true

* #Cis "Cis" "Phase is in cis (same chromosome)"
* #Trans "Trans" "Phase is in trans (different chromosomes)"
* #Indeterminate "Indeterminate" "Phase is unable to be determined"
* #Unknown "Unknown" "Phase is unknown"


CodeSystem: TbdCodesCS
Id: tbd-codes-cs
Title: "To Be Determined Codes"
Description: "These codes are currently 'TBD-LOINC' codes. The CG WG is requesting formal LOINC codes."
* ^caseSensitive = true
* #predicted-therapeutic-implication "Predicted Therapeutic Implication" "A predicted ramification based on the presence of associated molecular finding(s). Ramifications may include alterations in drug metabolism (or pharmacokinetics) that determine the concentration of the drug, prodrug, and/or break-down products over time; alterations in drug efficacy (or pharmacodynamics) that determine how effective a drug is at a given concentration; alterations that alter the risk of adverse drug events, or other types of implications that indicate altered responsiveness to other types of therapies."
* #prognostic-implication "Prognostic Implication component" "Finding of whether a particular somatic genotype/haplotype/variation or combination-thereof predicts a particular outcome for the specified cancer - either on its own or in conjunction with one or more interventions."
* #associated-therapy "Genomically linked therapy" "The non-medication therapy (procedure) associated with this implication."
* #region-coverage "region-coverage" "Given as a number between 0 and 100. Mean mapped read depth. Obtained by counting total number of mapped reads and divided by the number of bases in the region sequence."
* #molecular-consequence "Molecular Consequence" "Annotated changes to sequence features caused by this variant. Terms are from the sequence ontology under SO:0001537."
* #exact-start-end "Variant exact start and end" "The genomic coordinates of the exact genomic range in which the variant resides."
* #inner-start-end "Inner Start-End" "The genomic coordinates of the inner genomic range in which the variant might reside."
* #outer-start-end "Outer Start-End" "The genomic coordinates of the outer genomic range in which the variant might reside."
* #variant-inheritance "Variant inheritance" "A quality inhering in a variant by virtue of its origin. The terms are in the sequence ontology under SO:0001762."
* #diagnostic-implication "Diagnostic Implication" "An observation linking a genomic finding with a knowledge base, providing context that may aid in diagnosing a patient with a particular phenotype or condition."
* #therapeutic-implication "Therapeutic Implication" "An observation linking a genomic finding with a knowledge base, providing potential evidence of an interaction with a specified medication or non-medicinal therapy."
* #uncallable-regions "Uncallable Regions" "Contiguous regions where a call was not made. Must be inside the range given by 'ranges examined' in the given reference sequence and coordinate system."
* #functional-effect "Functional Effect" "The effect of a variant on downstream biological products or pathways (from Sequence Ontology)."
* #conclusion-string "Conclusion text" "Clinical conclusion (interpretation) of the observation."
* #condition-inheritance "Condition Inheritance" "The transmission pattern of the condition/phenotype in a pedigree."

// CodeSystem: ConditionInheritanceModeCS
// Id: condition-inheritance-mode-cs
// Title: "Condition Inheritance Pattern Codes"
// Description: "A set of terms that describe the transmission pattern of a condition in a pedigree."
// * ^caseSensitive = true

// * #GENO:0000143	"Codominant inheritance"
// * #GENO:0000889	"Unknown inheritance"
// * #GENO:0000892	"Mitochondrial inheritance (primarily or exclusively heteroplasmic)"
// * #GENO:0000893	"Mitochondrial inheritance (primarily or exclusively homoplasmic)"
// * #HP:0000006	"Autosomal dominant inheritance"
// * #HP:0000007	"Autosomal recessive inheritance"
// * #HP:0001417	"X-linked inheritance"
// * #HP:0001419	"X-linked inheritance (recessive)"
// * #HP:0001423	"X-linked inheritance (dominant)"
// * #HP:0001426	"Multifactorial inheritance"
// * #HP:0001427	"Mitochondrial inheritance"
// * #HP:0001428	"Somatic mutation"
// * #HP:0001450	"Y-linked inheritance"
// * #HP:0001470	"Autosomal dominant inheritance (sex-limited)"
// * #HP:0003743	"Genetic anticipation"
// * #HP:0003745	"Sporadic"
// * #HP:0010983	"Oligogenic"
// * #HP:0012274	"Autosomal dominant inheritance (with paternal imprinting)"
// * #HP:0012275	"Autosomal dominant inheritance (with maternal imprinting)"
// * #HP:0025352	"Autosomal dominant inheritance (primarily or exclusively de novo)"
// * #HP:0031362	"Autosomal recessive inheritance (sex-limited)"
// * #SEPIO-CG:97020	"Semidominant inheritance"
// * #SEPIO-CG:97021	"X-linked inheritance (primarily recessive with milder female expression)"
// * #SEPIO-CG:97022	"Autosomal dominant inheritance (with genetic anticipation)"
// * #SEPIO-CG:97023	"Autosomal recessive inheritance (with genetic anticipation)"

// CodeSystem: GeneticTherapeuticImplicationsCS
// Id: genetic-therapeutic-implications-cs
// Title: "Genetic Therapeutic Implication Codes"
// Description: "A set of terms that describe a predicted ramification based on the presence of associated molecular finding(s)."

// * #LNC:LA10315-2	"Ultrarapid metabolizer"
// * #LNC:LA25390-8	"Rapid metabolizer"
// * #LNC:LA25391-6	"Normal metabolizer"
// * #LNC:LA10317-8	"Intermediate metabolizer"
// * #LNC:LA9657-3	    "Poor metabolizer"
// * #LNC:LA19542-2	"Low Risk"
// * #LNC:LA19541-4	"High Risk"
// * #LNC:LA6676-6 	"Resistant"
// * #LNC:LA6677-4 	"Responsive"
// * #LNC:LA9660-7 	"Presumed resistant"
// * #LNC:LA9661-5 	"Presumed responsive"
// * #LNC:LA6682-4 	"Unknown Significance"
// * #LNC:LA6675-8 	"Benign"
// * #LNC:LA6674-1 	"Presumed Benign"
// * #LNC:LA9662-3 	"Presumed non-responsive"
// * #LNC:LA25392-4	"Increased function"
// * #LNC:LA25393-2	"Normal function"
// * #LNC:LA25395-7	"Decreased function"
// * #LNC:LA25394-0	"Poor function"
// * #SCT:444734003 	"Does not meet eligibility criteria for clinical trial (finding)"
// * #SCT:399223003	"Patient eligible for clinical trial (finding)"

// CodeSystem: EvidenceLevelExampleCS
// Id: evidence-level-example-cs
// Title: "Evidence Level Example codes"
// Description: "ClinVar and PharmGKB contain examples of evidence level concepts that are not conflated with clinical significance. These can be found on  ClinVar https://www.ncbi.nlm.nih.gov/clinvar/docs/review_status/ or PharmGKB https://www.pharmgkb.org/page/clinAnnLevels. These examples are informational only, for copyright information contact the relevant source."
// * #ClinVarEvidence:4-star	"4 star"	"Supported by practice guideline"
// * #ClinVarEvidence:3-star	"3 star"	"Supported by expert panel review"
// * #ClinVarEvidence:2-star	"2 star"	"Supported by submission by multiple-submitters with documentation of criteria for assertion"
// * #ClinVarEvidence:1-star	"1 star"	"Single submitter providing interpretation and documentation of criteria for assertion"
// * #ClinvarEvidence:no-star	"no star"	"submitted, no evidence"
// * #PharmGKBevidence:1A	"PGKB 1A"	"High level of evidence. Supported by a guideline or FDA label with variant specific prescribing guidance. Additionally, supported by at least one publication."
// * #PharmGKBevidence:1B	"PGKB 1B"	"High level of evidence. But, NOT supported by a guideline or FDA label with variant specific prescribing guidance. Additionally, supported by at least one publication."
// * #PharmGKBevidence:2A	"PGKB 2A"	"Moderate level of evidence. Supported by being a KNOWN pharmacogene on https://www.pharmgkb.org/vips. Also, found in multiple studies but may have a minority of studies that did not support the majority opinion. Supported by at least two indpendent publications."
// * #PharmGKBevidence:2B	"PGKB 2B"	"Moderate level of evidence. NOT in the list of very important, KNOWN pharmacogenes. Found in multiple studies but may have a minority of studies that did not support the majority opinion. Supported by at least two indpendent publications."
// * #PharmGKBevidence:3	"PGKB 3"	"Low-level of evidence. Where either the assocation is based on a single study, failed to be reproduced, or preliminary evidence."
// * #PharmGKBevidence:4	"PGKB 4"	"The evidence does not support an association between the variant and the drug phenotype. (negative)"

CodeSystem: ClinVarEvidenceLevelCustomCS
Id: clinvar-evidence-level-custom-cs
Title: "ClinVar Evidence Level Example codes"
Description: "ClinVar contains examples of evidence level concepts that are not conflated with clinical significance. These can be found on  ClinVar https://www.ncbi.nlm.nih.gov/clinvar/docs/review_status/ . These examples are informational only, for copyright information contact the relevant source."
* ^caseSensitive = true
* #4-star	"4 star"	"Supported by practice guideline"
* #3-star	"3 star"	"Supported by expert panel review"
* #2-star	"2 star"	"Supported by submission by multiple-submitters with documentation of criteria for assertion"
* #1-star	"1 star"	"Single submitter providing interpretation and documentation of criteria for assertion"
* #no-star	"no star"	"submitted, no evidence"

CodeSystem: PharmGKBEvidenceLevelCustomCS
Id: pharmgkb-evidence-level-custom-cs
Title: "Evidence Level Example codes"
Description: "PharmGKB contains examples of evidence level concepts that are not conflated with clinical significance. These can be found on PharmGKB https://www.pharmgkb.org/page/clinAnnLevels. These examples are informational only, for copyright information contact the relevant source."
* ^caseSensitive = true
* #1A	"PGKB 1A"	"High level of evidence. Supported by a guideline or FDA label with variant specific prescribing guidance. Additionally, supported by at least one publication."
* #1B	"PGKB 1B"	"High level of evidence. But, NOT supported by a guideline or FDA label with variant specific prescribing guidance. Additionally, supported by at least one publication."
* #2A	"PGKB 2A"	"Moderate level of evidence. Supported by being a KNOWN pharmacogene on https://www.pharmgkb.org/vips. Also, found in multiple studies but may have a minority of studies that did not support the majority opinion. Supported by at least two indpendent publications."
* #2B	"PGKB 2B"	"Moderate level of evidence. NOT in the list of very important, KNOWN pharmacogenes. Found in multiple studies but may have a minority of studies that did not support the majority opinion. Supported by at least two indpendent publications."
* #3	"PGKB 3"	"Low-level of evidence. Where either the assocation is based on a single study, failed to be reproduced, or preliminary evidence."
* #4	"PGKB 4"	"The evidence does not support an association between the variant and the drug phenotype. (negative)"