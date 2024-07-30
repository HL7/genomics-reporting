ValueSet:       HighLowCodesVS
Id:             high-low-codes-vs
Title:          "High Low codes"
Description:    "This value set includes high/low codes for Observation Interpretations"
* ^experimental = false
* $OBSINT#H "High"
* $OBSINT#L "Low"
* $OBSINT#I "Intermediate"

ValueSet:       HGNCVS
Id:             hgnc-vs
Title:          "HUGO Gene Nomenclature Committee Gene Names (HGNC)"
Description:    "This value set includes all HGNC Codes, which includes multiple code systems. In this guide, Gene IDs from HGNC are used as CodeableConcepts, which must be sent with the HGNC gene ID including the prefix 'HGNC:' as the code and the HGNC 'gene symbol' as display. CAUTION: HGNC also indexes gene groups by numeric ID (without a prefix), and older systems may send HGNC gene IDs without the prefix, so care must be taken to confirm alignment. We have separately included the genegroup code system to draw attention to this ambiguity and potential error."
* ^experimental = false
* include codes from system $HGNCID
* include codes from system $HGNCGROUP

ValueSet:       HGVSVS
Id:             hgvs-vs
Title:          "Human Genome Variation Society (HGVS) Nomenclature"
Description:    "HGVS-nomenclature is used to report and exchange information regarding variants found in DNA, RNA and protein sequences and serves as an international standard. (source: varnomen.hgvs.org)"
* ^experimental = false
* include codes from system $HGVS

ValueSet:       DNAChangeTypeVS
Id:             dna-change-type-vs
Title:          "DNA Change Type"
Description:    "DNA Change Type of a variant."
* ^experimental = false
* include codes from system $SEQONT where concept is-a #SO:0002072

ValueSet:       TBDCodesVS
Id:             tbd-codes-vs
Title:          "To Be Determined Value Set"
Description:    "Value Set for codes yet to be defined in LOINC"
* ^experimental = false
* include codes from system TbdCodesCS

ValueSet:       MolecularConsequenceVS
Id:             molecular-consequence-vs
Title:          "Molecular Consequence Value Set"
Description:    "The calculated or observed effect of a variant on its downstream transcript and, if applicable, ensuing protein sequence."
* ^experimental = false
* include codes from system $SEQONT where concept is-a #SO:0001537

ValueSet:       FunctionalEffectVS
Id:             functional-effect-vs
Title:          "Functional Effect Value Set"
Description:    "The effect of a variant on downstream biological products or pathways."
* ^experimental = false
* include codes from system $SEQONT where concept is-a #SO:0001536

ValueSet:       SequencePhaseRelationshipVS
Id:             sequence-phase-relationship-vs
Title:          "Sequence Phase Relationships"
Description:    "Value Set for specific types of relationships"
* ^experimental = false
* codes from system SequencePhaseRelationshipCS

ValueSet:       ConditionInheritanceModeVS
Id:             condition-inheritance-mode-vs
Title:          "Condition Inheritance Patterns"
Description:    "Value Set for specific transmission patterns of a condition in a pedigree"
* ^experimental = false
// GENO (http://www.ebi.ac.uk/ols/ontologies/geno) is not yet a valid CodeSystem, so commenting out for now
// * $GENO#0000892	"Mitochondrial inheritance (primarily or exclusively heteroplasmic)"
// * $GENO#0000893	"Mitochondrial inheritance (primarily or exclusively homoplasmic)"
* $HPO#HP:0000006	"Autosomal dominant inheritance"
* $HPO#HP:0000007	"Autosomal recessive inheritance"
* $HPO#HP:0001417	"X-linked inheritance"
* $HPO#HP:0001419	"X-linked inheritance (recessive)"
* $HPO#HP:0001423	"X-linked inheritance (dominant)"
* $HPO#HP:0001426	"Multifactorial inheritance"
* $HPO#HP:0001427	"Mitochondrial inheritance"
* $HPO#HP:0001428	"Somatic mutation"
* $HPO#HP:0001450	"Y-linked inheritance"
* $HPO#HP:0001470	"Autosomal dominant inheritance (sex-limited)"
* $HPO#HP:0003743	"Genetic anticipation"
* $HPO#HP:0003745	"Sporadic"
* $HPO#HP:0010983	"Oligogenic"
* $HPO#HP:0012274	"Autosomal dominant inheritance (with paternal imprinting)"
* $HPO#HP:0012275	"Autosomal dominant inheritance (with maternal imprinting)"
* $HPO#HP:0025352	"Autosomal dominant inheritance (primarily or exclusively de novo)"
* $HPO#HP:0031362	"Autosomal recessive inheritance (sex-limited)"
* $HPO#HP:0032113	"Semidominant inheritance"

ValueSet:       GeneticTherapeuticImplicationsVS
Id:             genetic-therapeutic-implications-vs
Title:          "Genetic Therapeutic Implications"
Description:    "Value Set for terms that describe a predicted ramification based on the presence of associated molecular finding(s)."
* ^copyright = """
This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc.
This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement.
"""
* ^experimental = false
* $LNC#LA10315-2	"Ultrarapid metabolizer"
* $LNC#LA25391-6	"Normal metabolizer"
* $LNC#LA25390-8	"Rapid metabolizer"
* $LNC#LA10317-8	"Intermediate metabolizer"
* $LNC#LA9657-3	"Poor metabolizer"
* $LNC#LA19542-2	"Low Risk"
* $LNC#LA19541-4	"High Risk"
* $LNC#LA6676-6 	"Resistant"
* $LNC#LA6677-4 	"Responsive"
* $LNC#LA9660-7 	"Presumed resistant"
* $LNC#LA9661-5 	"Presumed responsive"
* $LNC#LA6682-4 	"Unknown Significance"
* $LNC#LA6675-8 	"Benign"
* $LNC#LA6674-1 	"Presumed Benign"
* $LNC#LA9662-3 	"Presumed non-responsive"
* $LNC#LA25392-4	"Increased function"
* $LNC#LA25393-2	"Normal function"
* $LNC#LA25395-7	"Decreased function"
* $LNC#LA25394-0	"Poor function"
* $SCT#444734003 "Does not meet eligibility criteria for clinical trial (finding)"
* $SCT#399223003	"Patient eligible for clinical trial (finding)"

ValueSet:       EvidenceLevelExampleVS
Id:             evidence-level-example-vs
Title:          "Evidence Level Examples"
Description:    "Example sources of values for Evidence Level"
* ^experimental = false
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* codes from system ClinVarEvidenceLevelCustomCS
* codes from system PharmGKBEvidenceLevelCustomCS

ValueSet:       VariantConfidenceStatusVS
Id:             variant-confidence-status-vs
Title:          "Variant Confidence Status"
Description:    "A code that classifies the confidence for calling this variant."
* ^experimental = false
* codes from system VariantConfidenceStatusCS

ValueSet:       CodedAnnotationTypesVS
Id:             coded-annotation-types-vs
Title:          "Coded Annotation Types"
Description:    "Value Set for specific types of coded annotations"
* ^experimental = false
* codes from system CodedAnnotationTypesCS

ValueSet:       MolecularBiomarkerCategoryVS
Id:             molecular-biomarker-category-vs
Title:          "Molecular Biomarker Categories"
Description:    "This value set is drawn from the Molecular Biomarker Ontology code system, which provides codes that characterize a molecular biomarker."
* ^experimental = true
* include codes from system MolecularBiomarkerOntologyCS

ValueSet:       MolecularBiomarkerCodeVS
Id:             molecular-biomarker-code-vs
Title:          "Molecular Biomarker Codes"
Description:    "Value Set for terms that can be used as Biomarkers."
* ^copyright = """
This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc.
This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement.
"""
* ^experimental = false
* $LNC#85337-4 "Estrogen receptor Ag Immune stain Ql (Breast cancer specimen)"
* $LNC#72382-5 "HER2 IA Qn (Tiss)" 
* $LNC#77637-7 "HLA-A and B and C (class I) IgG panel IA [Identifier]"
* $LNC#40557-1 "Progesterone receptor Ag Immune stain Ql (Tiss)"
* $LNC#85147-7 "PD-L1 by clone 22C3 Immune stain Doc (Tiss)"
* $LNC#59025-7 "Neutrophil Ab FC Qn (S)"
* $LNC#59003-4 "Lactoferrin Ab IA Qn (S)"
* $LNC#10495-0 "Insulin Ag Immune stain Ql (Tiss)"
* $LNC#16550-6 "Carbohydrates Nom (U)"
* $LNC#2569-2 "Lipids (S) [Mass/Vol]"
* $LNC#4551-8 "Hemoglobin A2 (Bld) [Mass fraction]"
* $LNC#19195-7 "Prostate specific Ag Qn"
* $LNC#64083-9 "MGMT gene methylation score Molgen (Tiss) [Ratio]"
* $LNC#62862-8 "Microsatellite instability Immune stain Ql (Tiss)"
* $LNC#81704-9 "Microsatellite instability marker D17S250 Ql (Cancer specimen)"
* $LNC#94077-5 "Tumor mutation burden Ql (Tumor) [Interp]"

ValueSet:       SamplePopulationValueSet
Id:             sample-population-vs
Title:          "Sample Population Value Set"
Description:    "Value Set of the different populations for Population Allele Frequency"
* ^experimental = false
* codes from system SamplePopulationCS

ValueSet:       AnnotationModuleValueSet
Id:             annotation-module-vs
Title:          "Annotation Module Value Set"
Description:    "Value Set containing different annotation databases"
* ^experimental = false
* codes from system AnnotationModuleCS