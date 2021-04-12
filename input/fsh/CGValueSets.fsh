ValueSet:       HighLowCodesVS
Id:             high-low-codes
Title:          "High Low codes"
Description:    "This value set includes high/low codes for Observation Interpretations"

* ObsInt#H "High"
* ObsInt#L "Low"

ValueSet:       HGNCVS
Id:             hgnc
Title:          "HUGO Gene Nomenclature Committee Gene Names (HGNC)"
Description:    "This value set includes all HGNC Codes, which includes multiple code systems. In this guide, Gene IDs from HGNC are used as CodeableConcepts, which must be sent with the HGNC gene ID including the prefix 'HGNC:' as the code and the HGNC 'gene symbol' as display. CAUTION: HGNC also indexes gene groups by numeric ID (without a prefix), and older systems may send HGNC gene IDs without the prefix, so care must be taken to confirm alignment. We have separately included the genegroup code system to draw attention to this ambiguity and potential error."
* include codes from system HGNCID
* include codes from system HGNCGROUP

ValueSet:       HGVSVS
Id:             hgvs
Title:          "Human Genome Variation Society (HGVS) Nomenclature"
Description:    "HGVS-nomenclature is used to report and exchange information regarding variants found in DNA, RNA and protein sequences and serves as an international standard. (source: varnomen.hgvs.org)"
* include codes from system HGVS

ValueSet:       DNAChangeTypeVS
Id:             dna-change-type
Title:          "DNA Change Type"
Description:    "DNA Change Type of a variant."
* include codes from system SEQONT where concept is-a #SO:0002072

ValueSet:       TBDVS
Id:             tbd
Title:          "TBD Value Set"
Description:    "Value Set for codes yet to be defined in LOINC"
* include codes from system TbdCodes

ValueSet:       MolecularConsequenceVS
Id:             molecular-consequence
Title:          "Molecular Consequence"
Description:    "Changes in a structural features of a sequence due to the observed variant."
* include codes from system SEQONT where concept is-a #SO:0001537

ValueSet:       FunctionalEffectVS
Id:             functional-effect
Title:          "Functional Effect"
Description:    "The effect of a variant on downstream biological products or pathways."
* include codes from system SEQONT where concept is-a #SO:0001536

ValueSet:       VariantInheritanceVS
Id:             variant-inheritance
Title:          "Variant Inheritance"
Description:    "By which parent the variant was inherited in the patient, if known."
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* LNC#LA26320-4 "Maternal"
* LNC#LA26321-2 "Paternal"
* LNC#LA4489-6 "Unknown"

ValueSet:       SeqPhaseRelationshipVS
Id:             seq-phase-relationship
Title:          "Sequence Phase Relationship"
Description:    "Value Set for specific types of relationships"
* codes from system SequencePhaseRelationshipCS

ValueSet:       ConditionInheritanceModeVS
Id:             condition-inheritance-vs
Title:          "Condition Inheritance Pattern"
Description:    "Value Set for specific ttransmission patterns of a condition in a pedigree"
* codes from system ConditionInheritanceMode