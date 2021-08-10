Instance: find-subject-specific-variants-simple
InstanceOf: OperationDefinition
Title: "Find Subject Simple Variants Simple"
Usage: #definition
Description: ""
* name = "FindSubjectSpecificVariantsSimple"
* title = "Find Subject Specific Variants Simple"
* status = #active
* kind = #operation
* publisher = "HL7 International Clinical Genomics Work Group"
* system = false
* type = true
* instance = false
* code = #match
* parameter[0].name = #subject
* parameter[0].use = #in
* parameter[0].min = 1
* parameter[0].max = "1"
* parameter[0].documentation = "The subject of interest."
* parameter[0].type = #string
* parameter[0].searchType = #reference
* parameter[1].name = #variantList
* parameter[1].use = #in
* parameter[1].min = 1
* parameter[1].max = "*"
* parameter[1].documentation = "List of variants being sought. Must be in HGVS or SPDI format."
* parameter[1].type = #string
* parameter[1].searchType = #string
* parameter[2].name = #testIdentifierFilter
* parameter[2].use = #in
* parameter[2].min = 0
* parameter[2].max = "*"
* parameter[2].documentation = "Supply a list of test identifiers. Only results originating from one of these tests will be returned."
* parameter[2].type = #string
* parameter[2].searchType = #token
* parameter[3].name = #testDateRangeFilter
* parameter[3].use = #in
* parameter[3].min = 0
* parameter[3].max = "*"
* parameter[3].documentation = "Supply a list of date ranges. Only results generated during one of these ranges will be returned."
* parameter[3].type = #Period
* parameter[4].name = #specimenIdentifierFilter
* parameter[4].use = #in
* parameter[4].min = 0
* parameter[4].max = "*"
* parameter[4].documentation = "Supply a list of specimen identifiers. Only results derived from one of these specimens will be returned."
* parameter[4].type = #string
* parameter[4].searchType = #token
* parameter[5].name = #genomicSourceClassFilter
* parameter[5].use = #in
* parameter[5].min = 0
* parameter[5].max = "*"
* parameter[5].documentation = "Enables an App to limit results to those that are 'germline' or 'somatic'."
* parameter[5].type = #string
* parameter[5].searchType = #token
* parameter[6].name = #response
* parameter[6].use = #out
* parameter[6].min = 1
* parameter[6].max = "1"
* parameter[6].documentation = "Operation returns a FHIR Parameters resource, containing each variant requested, a boolean indicating if variant is present or not, and the variant instance itself if present."
* parameter[6].type = #canonical
* parameter[6].targetProfile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/region-studied"


Instance: find-subject-variants
InstanceOf: OperationDefinition
Title: "Find Subject Variants"
Usage: #definition
Description: "Use this operation to retrieve variants with precise endpoints from a specified genomic region for a specified patient. If the range in question has been studied, the operation returns a FHIR Parameters resource containing variants overlapping the region. If the patient or the specified region has not been studied, the operation returns a 404 error."
* name = "FindSubjectVariants"
* title = "Find Subject Variants"
* status = #active
* kind = #operation
* publisher = "HL7 International Clinical Genomics Work Group"
* system = false
* type = true
* instance = false
* code = #match
* parameter[0].name = #subject
* parameter[0].use = #in
* parameter[0].min = 1
* parameter[0].max = "1"
* parameter[0].documentation = "The subject of interest."
* parameter[0].type = #string
* parameter[0].searchType = #reference
* parameter[1].name = #region
* parameter[1].use = #in
* parameter[1].min = 1
* parameter[1].max = "1"
* parameter[1].documentation = "Region of interest is specified as a 0-based integer interval range. Variants that overlap the range are returned."
* parameter[1].type = #Range
* parameter[2].name = #genomicRefSeq
* parameter[2].use = #in
* parameter[2].min = 1
* parameter[2].max = "1"
* parameter[2].documentation = "Genomic reference sequence is a valid NCBI chromosome-level ('NC_') build 37 or build 38 identifier, or a valid mitochondrion identifier (NC_012920.1, NC_001807.4)"
* parameter[2].type = #string
* parameter[2].searchType = #token
* parameter[3].name = #regionStudied
* parameter[3].use = #out
* parameter[3].min = 0
* parameter[3].max = "*"
* parameter[3].documentation = "[Profile: http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/region-studied] Must include 1..* component:ranges-examined; 1..1 component:coordinate-system (valued with '0-based interval counting'); 1..1 component:genomic-ref-seq."
* parameter[3].type = #canonical
* parameter[3].targetProfile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/region-studied"
* parameter[4].name = #variant
* parameter[4].use = #out
* parameter[4].min = 0
* parameter[4].max = "*"
* parameter[4].documentation = "[Profile: http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant] Must include valueCodeableConcept; component:genomic-source-class; component:genomic-ref-seq; component:allelic-state; component:ref-allele; component:alt-allele; component:coordinate-system (valued with '0-based interval counting'); component:exact-start-end."
* parameter[4].type = #canonical
* parameter[4].targetProfile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* parameter[5].name = #sequencePhaseRelationship
* parameter[5].use = #out
* parameter[5].min = 0
* parameter[5].max = "*"
* parameter[5].documentation = "[Profile: http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/sequence-phase-relationship] Must include valueCodeableConcept; 2..2 derivedFrom:variant."
* parameter[5].type = #canonical
* parameter[5].targetProfile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/sequence-phase-relationship"