ValueSet:       HighLowCodesVS
Id:             high-low-codes
Title:          "High Low codes"
Description:    "This value set includes high/low codes for Observation Interpretations"

* ObsInt#H "High"
* ObsInt#L "Low"

ValueSet:       HGNC
Id:             hgnc
Title:          "HUGO Gene Nomenclature Committee Gene Names (HGNC)"
Description:    "This value set includes all HGNC Codes, which includes multiple code systems. In this guide, Gene IDs from HGNC are used as CodeableConcepts, which must be sent with the HGNC gene ID including the prefix 'HGNC:' as the code and the HGNC 'gene symbol' as display. CAUTION: HGNC also indexes gene groups by numeric ID (without a prefix), and older systems may send HGNC gene IDs without the prefix, so care must be taken to confirm alignment. We have separately included the genegroup code system to draw attention to this ambiguity and potential error."
* include codes from system HGNCID
* include codes from system HGNCGROUP
