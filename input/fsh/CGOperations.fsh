Instance: find-region-studied
InstanceOf: OperationDefinition
Title: "Find Region Studied"
Usage: #definition
Description: ""
* name = "FindRegionStudied"
* title = "Find Region Studied"
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
* parameter[1].name = #ranges
* parameter[1].use = #in
* parameter[1].min = 1
* parameter[1].max = "*"
* parameter[1].documentation = "List of regions to be assessed. Must be in zero-based RefSeq:Integer-range format (e.g. 'NC_000007.14:55174721-55174820')."
* parameter[1].type = #string
* parameter[1].searchType = #special
* parameter[2].name = #testIdentifiers
* parameter[2].use = #in
* parameter[2].min = 0
* parameter[2].max = "*"
* parameter[2].documentation = "Supply a list of test identifiers. Studied regions for each of these tests will be returned."
* parameter[2].type = #string
* parameter[2].searchType = #token
* parameter[3].name = #response
* parameter[3].use = #out
* parameter[3].min = 1
* parameter[3].max = "1"
* parameter[3].documentation = "Operation returns a FHIR Parameters resource, showing regions studied and uncallable subregions for each range-test combination.

    parameters
      parameter (1..*) (one for each range in rangeList in each test in filter list)
        part (1..1)
          name: rangeItem
          valueString: range from rangeList
        part (0..1)
          name: testIdentifier
          valueString: test identifier
        part (0..1)
          name: studied
          valueBoolean: boolean (True if any portion of range was studied)
        part (0..1)
          name: studiedRegion
          resource: observation (studiedRegion profile) 
		    - uncallable-regions.dataAbsentReason='not-performed' if uncallable regions are unknown.
"
* parameter[3].type = #canonical
* parameter[3].targetProfile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/FindRegionStudiedParameters"


Instance: find-subject-structural-subsuming-variants
InstanceOf: OperationDefinition
Title: "Find Subject Structural Subsuming Variants"
Usage: #definition
Description: ""
* name = "FindSubjectStructuralSubsumingVariants"
* title = "Find Subject Structural Subsuming Variants"
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
* parameter[1].name = #ranges
* parameter[1].use = #in
* parameter[1].min = 1
* parameter[1].max = "*"
* parameter[1].documentation = "List of regions to be searched for variants. Must be in zero-based RefSeq:Integer-range format (e.g. 'NC_000007.14:55174721-55174820')."
* parameter[1].type = #string
* parameter[1].searchType = #special
* parameter[2].name = #testIdentifiers
* parameter[2].use = #in
* parameter[2].min = 0
* parameter[2].max = "*"
* parameter[2].documentation = "Supply a list of test identifiers. Only results originating from one of these tests will be returned."
* parameter[2].type = #string
* parameter[2].searchType = #token
* parameter[3].name = #testDateRanges
* parameter[3].use = #in
* parameter[3].min = 0
* parameter[3].max = "*"
* parameter[3].documentation = "Supply a list of date ranges. Only results generated during one of these ranges will be returned."
* parameter[3].type = #Period
* parameter[4].name = #specimenIdentifiers
* parameter[4].use = #in
* parameter[4].min = 0
* parameter[4].max = "*"
* parameter[4].documentation = "Supply a list of specimen identifiers. Only results derived from one of these specimens will be returned."
* parameter[4].type = #string
* parameter[4].searchType = #token
* parameter[5].name = #genomicSourceClass
* parameter[5].use = #in
* parameter[5].min = 0
* parameter[5].max = "1"
* parameter[5].documentation = "Enables an App to limit results to those that are 'germline' or 'somatic'. Default is to include variants irrespective of genomic source class."
* parameter[5].type = #string
* parameter[5].searchType = #token
* parameter[6].name = #includeVariants
* parameter[6].use = #in
* parameter[6].min = 0
* parameter[6].max = "1"
* parameter[6].documentation = "Include variants in response if set to true. Default=false."
* parameter[6].type = #boolean
* parameter[7].name = #response
* parameter[7].use = #out
* parameter[7].min = 1
* parameter[7].max = "1"
* parameter[7].documentation = "Operation returns a FHIR Parameters resource, containing each range requested, a boolean indicating if variants are present in a range, and optionally, the variants that subsume the range.

    parameters
      parameter (1..*) (one for each range in rangeList)
        part (1..1)
          name: rangeItem
          valueString: range from rangeList
        part (1..1)
          name: presence
          valueBoolean: boolean (True if as least one variant is identified that subsumes the range)
        part (0..*) (if includeVariants=true then include variants that subsume the range)
          name: variant
          resource: observation (variant profile) - return as much of variant profile as is known
"
* parameter[7].type = #canonical
* parameter[7].targetProfile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/FindSubjectStructuralSubsumingVariantsParameters"



Instance: find-subject-structural-intersecting-variants
InstanceOf: OperationDefinition
Title: "Find Subject Structural Intersecting Variants"
Usage: #definition
Description: ""
* name = "FindSubjectStructuralIntersectingVariants"
* title = "Find Subject Structural Intersecting Variants"
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
* parameter[1].name = #ranges
* parameter[1].use = #in
* parameter[1].min = 1
* parameter[1].max = "*"
* parameter[1].documentation = "List of regions to be searched for variants. Must be in zero-based RefSeq:Integer-range format (e.g. 'NC_000007.14:55174721-55174820')."
* parameter[1].type = #string
* parameter[1].searchType = #special
* parameter[2].name = #testIdentifiers
* parameter[2].use = #in
* parameter[2].min = 0
* parameter[2].max = "*"
* parameter[2].documentation = "Supply a list of test identifiers. Only results originating from one of these tests will be returned."
* parameter[2].type = #string
* parameter[2].searchType = #token
* parameter[3].name = #testDateRanges
* parameter[3].use = #in
* parameter[3].min = 0
* parameter[3].max = "*"
* parameter[3].documentation = "Supply a list of date ranges. Only results generated during one of these ranges will be returned."
* parameter[3].type = #Period
* parameter[4].name = #specimenIdentifiers
* parameter[4].use = #in
* parameter[4].min = 0
* parameter[4].max = "*"
* parameter[4].documentation = "Supply a list of specimen identifiers. Only results derived from one of these specimens will be returned."
* parameter[4].type = #string
* parameter[4].searchType = #token
* parameter[5].name = #genomicSourceClass
* parameter[5].use = #in
* parameter[5].min = 0
* parameter[5].max = "1"
* parameter[5].documentation = "Enables an App to limit results to those that are 'germline' or 'somatic'. Default is to include variants irrespective of genomic source class."
* parameter[5].type = #string
* parameter[5].searchType = #token
* parameter[6].name = #includeVariants
* parameter[6].use = #in
* parameter[6].min = 0
* parameter[6].max = "1"
* parameter[6].documentation = "Include variants in response if set to true. Default=false."
* parameter[6].type = #boolean
* parameter[7].name = #response
* parameter[7].use = #out
* parameter[7].min = 1
* parameter[7].max = "1"
* parameter[7].documentation = "Operation returns a FHIR Parameters resource, containing each range requested, a boolean indicating if variants are present in a range, and optionally, the variants that intersect the range.

    parameters
      parameter (1..*) (one for each range in rangeList)
        part (1..1)
          name: rangeItem
          valueString: range from rangeList
        part (1..1)
          name: presence
          valueBoolean: boolean (True if as least one variant is identified that intersects the range)
        part (0..*) (if includeVariants=true then include variants that intersect the range)
          name: variant
          resource: observation (variant profile) - return as much of variant profile as is known
"
* parameter[7].type = #canonical
* parameter[7].targetProfile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/FindSubjectStructuralIntersectingVariantsParameters"


Instance: find-subject-specific-variants
InstanceOf: OperationDefinition
Title: "Find Subject Simple Variants"
Usage: #definition
Description: ""
* name = "FindSubjectSpecificVariants"
* title = "Find Subject Specific Variants"
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
* parameter[1].name = #variants
* parameter[1].use = #in
* parameter[1].min = 1
* parameter[1].max = "*"
* parameter[1].documentation = "List of variants being sought. Must be in HGVS or SPDI format."
* parameter[1].type = #string
* parameter[1].searchType = #string
* parameter[2].name = #testIdentifiers
* parameter[2].use = #in
* parameter[2].min = 0
* parameter[2].max = "*"
* parameter[2].documentation = "Supply a list of test identifiers. Only results originating from one of these tests will be returned."
* parameter[2].type = #string
* parameter[2].searchType = #token
* parameter[3].name = #testDateRanges
* parameter[3].use = #in
* parameter[3].min = 0
* parameter[3].max = "*"
* parameter[3].documentation = "Supply a list of date ranges. Only results generated during one of these ranges will be returned."
* parameter[3].type = #Period
* parameter[4].name = #specimenIdentifiers
* parameter[4].use = #in
* parameter[4].min = 0
* parameter[4].max = "*"
* parameter[4].documentation = "Supply a list of specimen identifiers. Only results derived from one of these specimens will be returned."
* parameter[4].type = #string
* parameter[4].searchType = #token
* parameter[5].name = #genomicSourceClass
* parameter[5].use = #in
* parameter[5].min = 0
* parameter[5].max = "1"
* parameter[5].documentation = "Enables an App to limit results to those that are 'germline' or 'somatic'. Default is to include variants irrespective of genomic source class."
* parameter[5].type = #string
* parameter[5].searchType = #token
* parameter[6].name = #response
* parameter[6].use = #out
* parameter[6].min = 1
* parameter[6].max = "1"
* parameter[6].documentation = "Operation returns a FHIR Parameters resource, containing each variant requested, a string indicating if variant is present/absent/unknown, and the variant instance itself if present.

    parameters
      parameter (1..*) (one for each variant in variantList)
        part (1..1)
          name: variantItem
          valueString: variant from variantList
        part (1..1)
          name: presence
          valueString: present/absent/unknown
        part (0..1)
          name: variant
          resource: observation (variant profile) - return as much of variant profile as is known
"
* parameter[6].type = #canonical
* parameter[6].targetProfile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/FindSubjectSpecificVariantsParameters"


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
* parameter[1].name = #variants
* parameter[1].use = #in
* parameter[1].min = 1
* parameter[1].max = "*"
* parameter[1].documentation = "List of variants being sought. Must be in HGVS or SPDI format."
* parameter[1].type = #string
* parameter[1].searchType = #string
* parameter[2].name = #testIdentifiers
* parameter[2].use = #in
* parameter[2].min = 0
* parameter[2].max = "*"
* parameter[2].documentation = "Supply a list of test identifiers. Only results originating from one of these tests will be returned."
* parameter[2].type = #string
* parameter[2].searchType = #token
* parameter[3].name = #testDateRanges
* parameter[3].use = #in
* parameter[3].min = 0
* parameter[3].max = "*"
* parameter[3].documentation = "Supply a list of date ranges. Only results generated during one of these ranges will be returned."
* parameter[3].type = #Period
* parameter[4].name = #specimenIdentifiers
* parameter[4].use = #in
* parameter[4].min = 0
* parameter[4].max = "*"
* parameter[4].documentation = "Supply a list of specimen identifiers. Only results derived from one of these specimens will be returned."
* parameter[4].type = #string
* parameter[4].searchType = #token
* parameter[5].name = #genomicSourceClass
* parameter[5].use = #in
* parameter[5].min = 0
* parameter[5].max = "1"
* parameter[5].documentation = "Enables an App to limit results to those that are 'germline' or 'somatic'. Default is to include variants irrespective of genomic source class."
* parameter[5].type = #string
* parameter[5].searchType = #token
* parameter[6].name = #response
* parameter[6].use = #out
* parameter[6].min = 1
* parameter[6].max = "1"
* parameter[6].documentation = "Operation returns a FHIR Parameters resource, containing each variant requested, a boolean indicating if variant is present or not, and the variant instance itself if present.

    parameters
      parameter (1..*) (one for each variant in variantList)
        part (1..1)
          name: variantItem
          valueString: variant from variantList
        part (1..1)
          name: presence
          valueBoolean: boolean
        part (0..1)
          name: variant
          resource: observation (variant profile) - return as much of variant profile as is known
"
* parameter[6].type = #canonical
* parameter[6].targetProfile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/FindSubjectSpecificVariantsSimpleParameters"


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
* parameter[1].name = #ranges
* parameter[1].use = #in
* parameter[1].min = 1
* parameter[1].max = "*"
* parameter[1].documentation = "List of regions to be searched for variants. Must be in zero-based RefSeq:Integer-range format (e.g. 'NC_000007.14:55174721-55174820')."
* parameter[1].type = #string
* parameter[1].searchType = #special
* parameter[2].name = #testIdentifiers
* parameter[2].use = #in
* parameter[2].min = 0
* parameter[2].max = "*"
* parameter[2].documentation = "Supply a list of test identifiers. Only results originating from one of these tests will be returned."
* parameter[2].type = #string
* parameter[2].searchType = #token
* parameter[3].name = #testDateRanges
* parameter[3].use = #in
* parameter[3].min = 0
* parameter[3].max = "*"
* parameter[3].documentation = "Supply a list of date ranges. Only results generated during one of these ranges will be returned."
* parameter[3].type = #Period
* parameter[4].name = #specimenIdentifiers
* parameter[4].use = #in
* parameter[4].min = 0
* parameter[4].max = "*"
* parameter[4].documentation = "Supply a list of specimen identifiers. Only results derived from one of these specimens will be returned."
* parameter[4].type = #string
* parameter[4].searchType = #token
* parameter[5].name = #genomicSourceClass
* parameter[5].use = #in
* parameter[5].min = 0
* parameter[5].max = "1"
* parameter[5].documentation = "Enables an App to limit results to those that are 'germline' or 'somatic'. Default is to include variants irrespective of genomic source class."
* parameter[5].type = #string
* parameter[5].searchType = #token
* parameter[6].name = #includeVariants
* parameter[6].use = #in
* parameter[6].min = 0
* parameter[6].max = "1"
* parameter[6].documentation = "Include variants and phase relationships in response if set to true. Default=false."
* parameter[6].type = #boolean
* parameter[7].name = #response
* parameter[7].use = #out
* parameter[7].min = 1
* parameter[7].max = "1"
* parameter[7].documentation = "Operation returns a FHIR Parameters resource, containing each range requested, a boolean indicating if variants are present in a range, and optionally, the variants present in a range.

    parameters
      parameter (1..*) (one for each range in rangeList)
        part (1..1)
          name: rangeItem
          valueString: range from rangeList
        part (1..1)
          name: presence
          valueBoolean: boolean (True if as least one variant is identified in the range)
        part (0..*) (if includeVariants=true then include variants in the range)
          name: variant
          resource: observation (variant profile) - return as much of variant profile as is known
        part (0..*) (if includeVariants=true then include phase relationships between variants in the range)
          name: sequencePhaseRelationship
          resource: observation (sequencePhaseRelationship profile) - return as much of profile as is known
"
* parameter[7].type = #canonical
* parameter[7].targetProfile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/FindSubjectVariantsParameters"