ValueSet:       HighLowCodesVS
Id:             high-low-codes-vs
Title:          "High Low codes"
Description:    "This value set includes high/low codes for Observation Interpretations"

* ObsInt#H "High"
* ObsInt#L "Low"

ValueSet:       HGNCVS
Id:             hgnc-vs
Title:          "HUGO Gene Nomenclature Committee Gene Names (HGNC)"
Description:    "This value set includes all HGNC Codes, which includes multiple code systems. In this guide, Gene IDs from HGNC are used as CodeableConcepts, which must be sent with the HGNC gene ID including the prefix 'HGNC:' as the code and the HGNC 'gene symbol' as display. CAUTION: HGNC also indexes gene groups by numeric ID (without a prefix), and older systems may send HGNC gene IDs without the prefix, so care must be taken to confirm alignment. We have separately included the genegroup code system to draw attention to this ambiguity and potential error."
* include codes from system HGNCID
* include codes from system HGNCGROUP

ValueSet:       HGVSVS
Id:             hgvs-vs
Title:          "Human Genome Variation Society (HGVS) Nomenclature"
Description:    "HGVS-nomenclature is used to report and exchange information regarding variants found in DNA, RNA and protein sequences and serves as an international standard. (source: varnomen.hgvs.org)"
* include codes from system HGVS

ValueSet:       DNAChangeTypeVS
Id:             dna-change-type-vs
Title:          "DNA Change Type"
Description:    "DNA Change Type of a variant."
* include codes from system SEQONT where concept is-a #SO:0002072

ValueSet:       TBDCodesVS
Id:             tbd-codes-vs
Title:          "To Be Determined Value Set"
Description:    "Value Set for codes yet to be defined in LOINC"
* include codes from system TbdCodesCS

ValueSet:       MolecularConsequenceVS
Id:             molecular-consequence-vs
Title:          "Molecular Consequence"
Description:    "Changes in a structural features of a sequence due to the observed variant."
* include codes from system SEQONT where concept is-a #SO:0001537

ValueSet:       FunctionalEffectVS
Id:             functional-effect-vs
Title:          "Functional Effect"
Description:    "The effect of a variant on downstream biological products or pathways."
* include codes from system SEQONT where concept is-a #SO:0001536

ValueSet:       VariantInheritanceVS
Id:             variant-inheritance-vs
Title:          "Variant Inheritances"
Description:    "By which parent the variant was inherited in the patient, if known."
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* LNC#LA26320-4 "Maternal"
* LNC#LA26321-2 "Paternal"
* LNC#LA4489-6 "Unknown"

ValueSet:       SequencePhaseRelationshipVS
Id:             sequence-phase-relationship-vs
Title:          "Sequence Phase Relationships"
Description:    "Value Set for specific types of relationships"
* codes from system SequencePhaseRelationshipCS

ValueSet:       ConditionInheritanceModeVS
Id:             condition-inheritance-mode-vs
Title:          "Condition Inheritance Patterns"
Description:    "Value Set for specific transmission patterns of a condition in a pedigree"
* codes from system ConditionInheritanceModeCS


ValueSet:       GeneticTherapeuticImplicationsVS
Id:             genetic-therapeutic-implications-vs
Title:          "Genetic Therapeutic Implications"
Description:    "Value Set for terms that describe a predicted ramification based on the presence of associated molecular finding(s)."
* LNC#LA10315-2	"Ultrarapid metabolizer"
* LNC#LA25391-6	"Normal metabolizer"
* LNC#LA25390-8	"Rapid metabolizer"
* LNC#LA10317-8	"Intermediate metabolizer"
* LNC#LA9657-3	"Poor metabolizer"
* LNC#LA19542-2	"Low Risk"
* LNC#LA19541-4	"High Risk"
* LNC#LA6676-6 	"Resistant"
* LNC#LA6677-4 	"Responsive"
* LNC#LA9660-7 	"Presumed resistant"
* LNC#LA9661-5 	"Presumed responsive"
* LNC#LA6682-4 	"Unknown Significance"
* LNC#LA6675-8 	"Benign"
* LNC#LA6674-1 	"Presumed Benign"
* LNC#LA9662-3 	"Presumed non-responsive"
* LNC#LA25392-4	"Increased function"
* LNC#LA25393-2	"Normal function"
* LNC#LA25395-7	"Decreased function"
* LNC#LA25394-0	"Poor function"
* SCT#444734003 "Does not meet eligibility criteria for clinical trial (finding)"
* SCT#399223003	"Patient eligible for clinical trial (finding)"

ValueSet:       EvidenceLevelExampleVS
Id:             evidence-level-example-vs
Title:          "Evidence Level Examples"
Description:    "Example sources of values for Evidence Level"
* codes from system EvidenceLevelExampleCS