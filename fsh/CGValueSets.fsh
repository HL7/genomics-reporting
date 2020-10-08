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
Id:             dnachangetype
Title:          "DNA Change Type"
Description:    "DNA Change Type of a variant."
* include codes from system SEQONT where concept is-a #SO:0002072
// * include codes from system SEQONT  // MLT: follow-up with intensional value sets where the code has special characters. Trying to represent 'Include codes from http://sequenceontology.org where concept descends from SO:0002072'

ValueSet:       TBDVS
Id:             tbd
Title:          "TBD Value Set"
Description:    "Value Set for codes yet to be defined in LOINC"
* include codes from system TBD

ValueSet:       FunctionalAnnotationVS
Id:             functionalannotation
Title:          "Functional Annotation"
Description:    "Functional annotation of a variant."
* include codes from system SEQONT where concept is-a #SO:0001537

ValueSet:       VariantInheritanceVS
Id:             variant-inheritance
Title:          "Variant Inheritance (FSH)"
Description:    "A quality inhering in a variant by virtue of its origin."
* include codes from system SEQONT where concept is-a #SO:0001762
* include codes from system DataAbsentReason
