Instance: find-subject-variants
InstanceOf: OperationDefinition
Title: "Find Subject Variants"
Usage: #definition
Description: ""
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
* parameter[3].name = #testDateRange
* parameter[3].use = #in
* parameter[3].min = 0
* parameter[3].max = "1"
* parameter[3].documentation = "Supply a date range. Only results generated during this range will be returned."
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
* parameter[7].max = "*"
* parameter[7].documentation = "Operation returns a FHIR Parameters resource, containing each range requested, a boolean indicating if variants are present in a range, and optionally, the variants present in a range. Variants must conform to [Profile: http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant] and minimally include valueCodeableConcept; component:genomic-ref-seq; component:ref-allele; component:alt-allele; component:coordinate-system (valued with '0-based interval counting'); component:exact-start-end.

    parameters
      parameter (1..*) (one for each range in rangeList)
        name: variants
        part (1..1)
          name: rangeItem
          valueString: range from rangeList
        part (1..1)
          name: presence
          valueBoolean: boolean (True if as least one variant is identified in the range)
        part (0..*) (if includeVariants=true then include variants in the range)
          name: variant
          resource: observation (variant profile)
"
* parameter[7].type = #Parameters
* parameter[7].targetProfile = Canonical(ParametersProfileSomething)

Instance: find-subject-specific-variants
InstanceOf: OperationDefinition
Title: "Find Subject Specific Variants"
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
* parameter[3].name = #testDateRange
* parameter[3].use = #in
* parameter[3].min = 0
* parameter[3].max = "1"
* parameter[3].documentation = "Supply a date range. Only results generated during this range will be returned."
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
* parameter[6].documentation = "Operation returns a FHIR Parameters resource, containing each variant requested, a boolean indicating if variant is present or not, and the variant instance itself if present. Variants must conform to [Profile: http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant] and minimally include valueCodeableConcept; component:genomic-ref-seq; component:ref-allele; component:alt-allele; component:coordinate-system (valued with '0-based interval counting'); component:exact-start-end.

    parameters
      parameter (1..*) (one for each variant in variantList)
        name: variants
        part (1..1)
          name: variantItem
          valueString: variant from variantList
        part (1..1)
          name: presence
          valueBoolean: boolean
        part (0..*)
          name: variant
          resource: observation (variant profile)
"
* parameter[6].type = #canonical
* parameter[6].targetProfile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/FindSubjectSpecificVariantsParameters"

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
* parameter[3].name = #testDateRange
* parameter[3].use = #in
* parameter[3].min = 0
* parameter[3].max = "1"
* parameter[3].documentation = "Supply a date range. Only results generated during this range will be returned."
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
* parameter[7].documentation = "Operation returns a FHIR Parameters resource, containing each range requested, a boolean indicating if variants are present in a range, and optionally, the variants that intersect the range. Variants must conform to [Profile: http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant] and minimally include valueCodeableConcept; component:coding-change-type; component:genomic-ref-seq; component:coordinate-system (valued with '0-based interval counting'); components outer-start-end and/or inner-start-end.

    parameters
      parameter (1..*) (one for each range in rangeList)
        name: variants
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
* parameter[3].name = #testDateRange
* parameter[3].use = #in
* parameter[3].min = 0
* parameter[3].max = "1"
* parameter[3].documentation = "Supply a date range. Only results generated during this range will be returned."
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
* parameter[7].documentation = "Operation returns a FHIR Parameters resource, containing each range requested, a boolean indicating if variants are present in a range, and optionally, the variants that subsume the range. Variants must conform to [Profile: http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant] and minimally include valueCodeableConcept; component:coding-change-type; component:genomic-ref-seq; component:coordinate-system (valued with '0-based interval counting'); components outer-start-end and/or inner-start-end.

    parameters
	  name: variants
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

Instance: find-subject-haplotypes
InstanceOf: OperationDefinition
Title: "Find Subject Haplotypes"
Usage: #definition
Description: ""
* name = "FindSubjectHaplotypes"
* title = "Find Subject Haplotypes"
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
* parameter[1].name = #genes
* parameter[1].use = #in
* parameter[1].min = 1
* parameter[1].max = "*"
* parameter[1].documentation = "List of genes to be searched. Must be in token or codesystem|code format."
* parameter[1].type = #string
* parameter[1].searchType = #token
* parameter[2].name = #testIdentifiers
* parameter[2].use = #in
* parameter[2].min = 0
* parameter[2].max = "*"
* parameter[2].documentation = "Supply a list of test identifiers. Only results originating from one of these tests will be returned."
* parameter[2].type = #string
* parameter[2].searchType = #token
* parameter[3].name = #testDateRange
* parameter[3].use = #in
* parameter[3].min = 0
* parameter[3].max = "1"
* parameter[3].documentation = "Supply a date range. Only results generated during this range will be returned."
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
* parameter[6].documentation = "Operation returns a FHIR Parameters resource, containing each range requested, a boolean indicating if variants are present in a range, and optionally, the variants present in a range.

    parameters
      parameter (1..*) (one for each gene in geneList)
        name: haplotypes
        part (1..1)
          name: geneItem
          valueString: gene from geneList
        part (0..*)
          name: haplotype
          resource: observation (haplotype profile)
        part (0..*)
          name: genotype
          resource: observation (genotype profile)
"
* parameter[6].type = #canonical
* parameter[6].targetProfile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/FindSubjectHaplotypesParameters"

Instance: find-subject-specific-haplotypes
InstanceOf: OperationDefinition
Title: "Find Subject Specific Haplotypes"
Usage: #definition
Description: ""
* name = "FindSubjectSpecificHaplotypes"
* title = "Find Subject Specific Haplotypes"
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
* parameter[1].name = #haplotypes
* parameter[1].use = #in
* parameter[1].min = 1
* parameter[1].max = "*"
* parameter[1].documentation = "List of haplotypes and/or genotypes being sought. Must be in token or codesystem|code format."
* parameter[1].type = #string
* parameter[1].searchType = #token
* parameter[2].name = #testIdentifiers
* parameter[2].use = #in
* parameter[2].min = 0
* parameter[2].max = "*"
* parameter[2].documentation = "Supply a list of test identifiers. Only results originating from one of these tests will be returned."
* parameter[2].type = #string
* parameter[2].searchType = #token
* parameter[3].name = #testDateRange
* parameter[3].use = #in
* parameter[3].min = 0
* parameter[3].max = "1"
* parameter[3].documentation = "Supply a date range. Only results generated during this range will be returned."
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
      parameter (1..*) (one for each haplotype in haplotypeList)
        name: haplotypes
        part (1..1)
          name: haplotypeItem
          valueString: haplotype/genotype from haplotypeList
        part (1..1)
          name: presence
          valueBoolean: boolean
        part (0..*)
          name: haplotype
          resource: observation (haplotype profile)
        part (0..*)
          name: genotype
          resource: observation (genotype profile)
"
* parameter[6].type = #canonical
* parameter[6].targetProfile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/FindSubjectSpecificHaplotypesParameters"

Instance: find-subject-tx-implications
InstanceOf: OperationDefinition
Title: "Find Subject Treatment Implications"
Usage: #definition
Description: ""
* name = "FindSubjectTxImplications"
* title = "Find Subject Treatment Implications"
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
* parameter[1].min = 0
* parameter[1].max = "*"
* parameter[1].documentation = "List of variants from which implications are derived. Must be in HGVS or SPDI format."
* parameter[1].type = #string
* parameter[1].searchType = #string
* parameter[2].name = #haplotypes
* parameter[2].use = #in
* parameter[2].min = 0
* parameter[2].max = "*"
* parameter[2].documentation = "List of haplotypes and/or genotypes from which implications are derived. Must be in token or codesystem|code format."
* parameter[2].type = #string
* parameter[2].searchType = #token
* parameter[3].name = #treatments
* parameter[3].use = #in
* parameter[3].min = 0
* parameter[3].max = "*"
* parameter[3].documentation = "List of medications and/or other therapeutic interventions for which implications are sought. Must be in token or codesystem|code format."
* parameter[3].type = #string
* parameter[3].searchType = #token
* parameter[4].name = #conditions
* parameter[4].use = #in
* parameter[4].min = 0
* parameter[4].max = "*"
* parameter[4].documentation = "List of conditions for which implications are sought. Must be in token or codesystem|code format."
* parameter[4].type = #string
* parameter[4].searchType = #token
* parameter[5].name = #testIdentifiers
* parameter[5].use = #in
* parameter[5].min = 0
* parameter[5].max = "*"
* parameter[5].documentation = "Supply a list of test identifiers. Only results originating from one of these tests will be returned."
* parameter[5].type = #string
* parameter[5].searchType = #token
* parameter[6].name = #testDateRange
* parameter[6].use = #in
* parameter[6].min = 0
* parameter[6].max = "1"
* parameter[6].documentation = "Supply a date range. Only results generated during this range will be returned."
* parameter[6].type = #Period
* parameter[7].name = #specimenIdentifiers
* parameter[7].use = #in
* parameter[7].min = 0
* parameter[7].max = "*"
* parameter[7].documentation = "Supply a list of specimen identifiers. Only results derived from one of these specimens will be returned."
* parameter[7].type = #string
* parameter[7].searchType = #token
* parameter[8].name = #genomicSourceClass
* parameter[8].use = #in
* parameter[8].min = 0
* parameter[8].max = "1"
* parameter[8].documentation = "Enables an App to limit results to those that are 'germline' or 'somatic'. Default is to include variants irrespective of genomic source class."
* parameter[8].type = #string
* parameter[8].searchType = #token
* parameter[9].name = #response
* parameter[9].use = #out
* parameter[9].min = 1
* parameter[9].max = "1"
* parameter[9].documentation = "Operation returns a FHIR Parameters resource, containing each therapeutic implication identified, along with those variants/haplotypes/genotypes from which the implication is derived.

    parameters
      parameter (0..*)
        name: implications
        part (1..1)
          name: implication
          resource: observation (therapeuticImplication profile)
        part (0..*)
          name: variant
          resource: observation variant profile)
        part (0..*)
          name: haplotype
          resource: observation haplotype profile)
        part (0..*)
          name: genotype
          resource: observation genotype profile)
"
* parameter[9].type = #canonical
* parameter[9].targetProfile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/FindSubjectTxImplicationsParameters"

Instance: find-subject-dx-implications
InstanceOf: OperationDefinition
Title: "Find Subject Diagnostic Implications"
Usage: #definition
Description: ""
* name = "FindSubjectDxImplications"
* title = "Find Subject Diagnostic Implications"
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
* parameter[1].min = 0
* parameter[1].max = "*"
* parameter[1].documentation = "List of variants from which implications are derived. Must be in HGVS or SPDI format."
* parameter[1].type = #string
* parameter[1].searchType = #string
* parameter[2].name = #conditions
* parameter[2].use = #in
* parameter[2].min = 0
* parameter[2].max = "*"
* parameter[2].documentation = "List of conditions for which implications are sought. Must be in token or codesystem|code format."
* parameter[2].type = #string
* parameter[2].searchType = #token
* parameter[3].name = #testIdentifiers
* parameter[3].use = #in
* parameter[3].min = 0
* parameter[3].max = "*"
* parameter[3].documentation = "Supply a list of test identifiers. Only results originating from one of these tests will be returned."
* parameter[3].type = #string
* parameter[3].searchType = #token
* parameter[4].name = #testDateRange
* parameter[4].use = #in
* parameter[4].min = 0
* parameter[4].max = "1"
* parameter[4].documentation = "Supply a date range. Only results generated during this range will be returned."
* parameter[4].type = #Period
* parameter[5].name = #specimenIdentifiers
* parameter[5].use = #in
* parameter[5].min = 0
* parameter[5].max = "*"
* parameter[5].documentation = "Supply a list of specimen identifiers. Only results derived from one of these specimens will be returned."
* parameter[5].type = #string
* parameter[5].searchType = #token
* parameter[6].name = #genomicSourceClass
* parameter[6].use = #in
* parameter[6].min = 0
* parameter[6].max = "1"
* parameter[6].documentation = "Enables an App to limit results to those that are 'germline' or 'somatic'. Default is to include variants irrespective of genomic source class."
* parameter[6].type = #string
* parameter[6].searchType = #token
* parameter[7].name = #response
* parameter[7].use = #out
* parameter[7].min = 1
* parameter[7].max = "1"
* parameter[7].documentation = "Operation returns a FHIR Parameters resource, containing each diagnostic implication identified, along with those variants from which the implication is derived.

    parameters
      parameter (0..*)
        name: implications
        part (1..1)
          name: implication
          resource: observation (diagnosticImplication profile)
        part (1..*)
          name: variant
          resource: observation variant profile)
"
* parameter[7].type = #canonical
* parameter[7].targetProfile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/FindSubjectDxImplicationsParameters"

Instance: find-population-specific-variants
InstanceOf: OperationDefinition
Title: "Find Population Specific Variants"
Usage: #definition
Description: ""
* name = "FindPopulationSpecificVariants"
* title = "Find Population Specific Variants"
* status = #active
* kind = #operation
* publisher = "HL7 International Clinical Genomics Work Group"
* system = false
* type = true
* instance = false
* code = #match
* parameter[0].name = #variants
* parameter[0].use = #in
* parameter[0].min = 1
* parameter[0].max = "*"
* parameter[0].documentation = "List of variants being sought. Must be in HGVS or SPDI format."
* parameter[0].type = #string
* parameter[0].searchType = #string
* parameter[1].name = #genomicSourceClass
* parameter[1].use = #in
* parameter[1].min = 0
* parameter[1].max = "1"
* parameter[1].documentation = "Enables an App to limit results to those that are 'germline' or 'somatic'. Default is to include variants irrespective of genomic source class."
* parameter[1].type = #string
* parameter[1].searchType = #token
* parameter[2].name = #includePatientList
* parameter[2].use = #in
* parameter[2].min = 0
* parameter[2].max = "1"
* parameter[2].documentation = "Include list of matching patients if set to true. Default=false."
* parameter[2].type = #boolean
* parameter[3].name = #response
* parameter[3].use = #out
* parameter[3].min = 1
* parameter[3].max = "1"
* parameter[3].documentation = "Operation returns a FHIR Parameters resource containing variants sought along with a count +/- list of matching patients.

    parameters
      parameter (1..*)
        name: variants
        part (1..1)
          name: variantItem
          valueString: variant from variantList
        part (1..1)
          name: numerator
          valueQuantity: count of patients having this variant
        part (0..1)
          name: denominator
          valueQuantity: count of patients in the cohort searched
        part (0..*) (if includePatientList is true)
          name: subject
          valueString: patient ID
"
* parameter[3].type = #canonical
* parameter[3].targetProfile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/FindPopulationSpecificVariantsParameters"

Instance: find-population-structural-intersecting-variants
InstanceOf: OperationDefinition
Title: "Find Population Structural Intersecting Variants"
Usage: #definition
Description: ""
* name = "FindPopulationStructuralIntersectingVariants"
* title = "Find Population Structural Intersecting Variants"
* status = #active
* kind = #operation
* publisher = "HL7 International Clinical Genomics Work Group"
* system = false
* type = true
* instance = false
* code = #match
* parameter[0].name = #ranges
* parameter[0].use = #in
* parameter[0].min = 1
* parameter[0].max = "*"
* parameter[0].documentation = "List of regions to be searched for variants. Must be in zero-based RefSeq:Integer-range format (e.g. 'NC_000007.14:55174721-55174820')."
* parameter[0].type = #string
* parameter[0].searchType = #special
* parameter[1].name = #genomicSourceClass
* parameter[1].use = #in
* parameter[1].min = 0
* parameter[1].max = "1"
* parameter[1].documentation = "Enables an App to limit results to those that are 'germline' or 'somatic'. Default is to include variants irrespective of genomic source class."
* parameter[1].type = #string
* parameter[1].searchType = #token
* parameter[2].name = #includePatientList
* parameter[2].use = #in
* parameter[2].min = 0
* parameter[2].max = "1"
* parameter[2].documentation = "Include list of matching patients if set to true. Default=false."
* parameter[2].type = #boolean
* parameter[3].name = #response
* parameter[3].use = #out
* parameter[3].min = 1
* parameter[3].max = "1"
* parameter[3].documentation = "Operation returns a FHIR Parameters resource containing ranges sought along with a count +/- list of patients having at least one structural variant intersecting that range.

    parameters
      parameter (1..*) (one for each range in rangeList)
        name: variants
        part (1..1)
          name: rangeItem
          valueString: range from rangeList
        part (1..1)
          name: numerator
          valueQuantity: count of patients having this variant
        part (0..1)
          name: denominator
          valueQuantity: count of patients in the cohort searched
        part (0..*) (if includePatientList is true)
          name: subject
          valueString: patient ID
"
* parameter[3].type = #canonical
* parameter[3].targetProfile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/FindPopulationStructuralIntersectingVariantsParameters"

Instance: find-population-structural-subsuming-variants
InstanceOf: OperationDefinition
Title: "Find Population Structural Subsuming Variants"
Usage: #definition
Description: ""
* name = "FindPopulationStructuralSubsumingVariants"
* title = "Find Population Structural Subsuming Variants"
* status = #active
* kind = #operation
* publisher = "HL7 International Clinical Genomics Work Group"
* system = false
* type = true
* instance = false
* code = #match
* parameter[0].name = #ranges
* parameter[0].use = #in
* parameter[0].min = 1
* parameter[0].max = "*"
* parameter[0].documentation = "List of regions to be searched for variants. Must be in zero-based RefSeq:Integer-range format (e.g. 'NC_000007.14:55174721-55174820')."
* parameter[0].type = #string
* parameter[0].searchType = #special
* parameter[1].name = #genomicSourceClass
* parameter[1].use = #in
* parameter[1].min = 0
* parameter[1].max = "1"
* parameter[1].documentation = "Enables an App to limit results to those that are 'germline' or 'somatic'. Default is to include variants irrespective of genomic source class."
* parameter[1].type = #string
* parameter[1].searchType = #token
* parameter[2].name = #includePatientList
* parameter[2].use = #in
* parameter[2].min = 0
* parameter[2].max = "1"
* parameter[2].documentation = "Include list of matching patients if set to true. Default=false."
* parameter[2].type = #boolean
* parameter[3].name = #response
* parameter[3].use = #out
* parameter[3].min = 1
* parameter[3].max = "1"
* parameter[3].documentation = "Operation returns a FHIR Parameters resource containing ranges sought along with a count +/- list of patients having at least one structural variant subsuming that range.

    parameters
      parameter (1..*) (one for each range in rangeList)
        name: variants
        part (1..1)
          name: rangeItem
          valueString: range from rangeList
        part (1..1)
          name: numerator
          valueQuantity: count of patients having this variant
        part (0..1)
          name: denominator
          valueQuantity: count of patients in the cohort searched
        part (0..*) (if includePatientList is true)
          name: subject
          valueString: patient ID
"
* parameter[3].type = #canonical
* parameter[3].targetProfile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/FindPopulationStructuralSubsumingVariantsParameters"

Instance: find-population-specific-haplotypes
InstanceOf: OperationDefinition
Title: "Find Population Specific Haplotypes"
Usage: #definition
Description: ""
* name = "FindPopulationSpecificHaplotypes"
* title = "Find Population Specific Haplotypes"
* status = #active
* kind = #operation
* publisher = "HL7 International Clinical Genomics Work Group"
* system = false
* type = true
* instance = false
* code = #match
* parameter[0].name = #haplotypes
* parameter[0].use = #in
* parameter[0].min = 1
* parameter[0].max = "*"
* parameter[0].documentation = "List of haplotypes and/or genotypes being sought. Must be in token or codesystem|code format."
* parameter[0].type = #string
* parameter[0].searchType = #token
* parameter[1].name = #genomicSourceClass
* parameter[1].use = #in
* parameter[1].min = 0
* parameter[1].max = "1"
* parameter[1].documentation = "Enables an App to limit results to those that are 'germline' or 'somatic'. Default is to include variants irrespective of genomic source class."
* parameter[1].type = #string
* parameter[1].searchType = #token
* parameter[2].name = #includePatientList
* parameter[2].use = #in
* parameter[2].min = 0
* parameter[2].max = "1"
* parameter[2].documentation = "Include list of matching patients if set to true. Default=false."
* parameter[2].type = #boolean
* parameter[3].name = #response
* parameter[3].use = #out
* parameter[3].min = 1
* parameter[3].max = "1"
* parameter[3].documentation = "Operation returns a FHIR Parameters resource containing haplotypes/genotypes sought along with a count +/- list of matching patients.

    parameters
      parameter (1..*) (one for each haplotype in haplotypeList)
        name: haplotypes
        part (1..1)
          name: haplotypeItem
          valueString: haplotype/genotype from haplotypeList
        part (1..1)
          name: numerator
          valueQuantity: count of patients having this variant
        part (0..1)
          name: denominator
          valueQuantity: count of patients in the cohort searched
        part (0..*) (if includePatientList is true)
          name: subject
          valueString: patient ID
"
* parameter[3].type = #canonical
* parameter[3].targetProfile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/FindPopulationSpecificHaplotypesParameters"

Instance: find-population-tx-implications
InstanceOf: OperationDefinition
Title: "Find Population Treatment Implications"
Usage: #definition
Description: ""
* name = "FindPopulationTxImplications"
* title = "Find Population Treatment Implications"
* status = #active
* kind = #operation
* publisher = "HL7 International Clinical Genomics Work Group"
* system = false
* type = true
* instance = false
* code = #match
* parameter[0].name = #variants
* parameter[0].use = #in
* parameter[0].min = 0
* parameter[0].max = "*"
* parameter[0].documentation = "List of variants from which implications are derived. Must be in HGVS or SPDI format."
* parameter[0].type = #string
* parameter[0].searchType = #string
* parameter[1].name = #haplotypes
* parameter[1].use = #in
* parameter[1].min = 0
* parameter[1].max = "*"
* parameter[1].documentation = "List of haplotypes from which implications are derived. Must be in token or codesystem|code format."
* parameter[1].type = #string
* parameter[1].searchType = #token
* parameter[2].name = #treatments
* parameter[2].use = #in
* parameter[2].min = 0
* parameter[2].max = "*"
* parameter[2].documentation = "List of medications and/or other therapeutic interventions for which implications are sought. Must be in token or codesystem|code format."
* parameter[2].type = #string
* parameter[2].searchType = #token
* parameter[3].name = #conditions
* parameter[3].use = #in
* parameter[3].min = 0
* parameter[3].max = "*"
* parameter[3].documentation = "List of conditions for which implications are sought. Must be in token or codesystem|code format."
* parameter[3].type = #string
* parameter[3].searchType = #token
* parameter[4].name = #genomicSourceClass
* parameter[4].use = #in
* parameter[4].min = 0
* parameter[4].max = "1"
* parameter[4].documentation = "Enables an App to limit results to those that are 'germline' or 'somatic'. Default is to include variants irrespective of genomic source class."
* parameter[4].type = #string
* parameter[4].searchType = #token
* parameter[5].name = #includePatientList
* parameter[5].use = #in
* parameter[5].min = 0
* parameter[5].max = "1"
* parameter[5].documentation = "Include list of matching patients if set to true. Default=false."
* parameter[5].type = #boolean
* parameter[6].name = #response
* parameter[6].use = #out
* parameter[6].min = 1
* parameter[6].max = "1"
* parameter[6].documentation = "Operation returns a FHIR Parameters resource containing a count +/- list of patients having at least one matching therapeutic implication.

    parameters
      parameter (1..1)
        name: implications
        part (1..1)
          name: numerator
          valueQuantity: count of patients having this variant
        part (0..1)
          name: denominator
          valueQuantity: count of patients in the cohort searched
        part (0..*) (if includePatientList is true)
          name: subject
          valueString: patient ID
"
* parameter[6].type = #canonical
* parameter[6].targetProfile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/FindPopulationTxImplicationsParameters"

Instance: find-population-dx-implications
InstanceOf: OperationDefinition
Title: "Find Population Diagnostic Implications"
Usage: #definition
Description: ""
* name = "FindPopulationDxImplications"
* title = "Find Population Diagnostic Implications"
* status = #active
* kind = #operation
* publisher = "HL7 International Clinical Genomics Work Group"
* system = false
* type = true
* instance = false
* code = #match
* parameter[0].name = #variants
* parameter[0].use = #in
* parameter[0].min = 0
* parameter[0].max = "*"
* parameter[0].documentation = "List of variants from which implications are derived. Must be in HGVS or SPDI format."
* parameter[0].type = #string
* parameter[0].searchType = #string
* parameter[1].name = #haplotypes
* parameter[1].use = #in
* parameter[1].min = 0
* parameter[1].max = "*"
* parameter[1].documentation = "List of haplotypes from which implications are derived. Must be in token or codesystem|code format."
* parameter[1].type = #string
* parameter[1].searchType = #token
* parameter[2].name = #conditions
* parameter[2].use = #in
* parameter[2].min = 0
* parameter[2].max = "*"
* parameter[2].documentation = "List of conditions for which implications are sought. Must be in token or codesystem|code format."
* parameter[2].type = #string
* parameter[2].searchType = #token
* parameter[3].name = #genomicSourceClass
* parameter[3].use = #in
* parameter[3].min = 0
* parameter[3].max = "1"
* parameter[3].documentation = "Enables an App to limit results to those that are 'germline' or 'somatic'. Default is to include variants irrespective of genomic source class."
* parameter[3].type = #string
* parameter[3].searchType = #token
* parameter[4].name = #includePatientList
* parameter[4].use = #in
* parameter[4].min = 0
* parameter[4].max = "1"
* parameter[4].documentation = "Include list of matching patients if set to true. Default=false."
* parameter[4].type = #boolean
* parameter[5].name = #response
* parameter[5].use = #out
* parameter[5].min = 1
* parameter[5].max = "1"
* parameter[5].documentation = "Operation returns a FHIR Parameters resource containing a count +/- list of patients having at least one matching diagnostic implication.

    parameters
      parameter (1..1)
        name: implications
        part (1..1)
          name: numerator
          valueQuantity: count of patients having this variant
        part (0..1)
          name: denominator
          valueQuantity: count of patients in the cohort searched
        part (0..*) (if includePatientList is true)
          name: subject
          valueString: patient ID
"
* parameter[5].type = #canonical
* parameter[5].targetProfile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/FindPopulationTxImplicationsParameters"

Instance: find-study-metadata
InstanceOf: OperationDefinition
Title: "Find Study Metadata"
Usage: #definition
Description: ""
* name = "FindStudyMetadata"
* title = "Find Study Metadata"
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
* parameter[1].name = #testIdentifiers
* parameter[1].use = #in
* parameter[1].min = 0
* parameter[1].max = "*"
* parameter[1].documentation = "List of test identifiers. Metadata for each test is returned."
* parameter[1].type = #string
* parameter[1].searchType = #token
* parameter[2].name = #testDateRange
* parameter[2].use = #in
* parameter[2].min = 0
* parameter[2].max = "1"
* parameter[2].documentation = "Metadata for each test performed during the range is returned."
* parameter[2].type = #Period
* parameter[3].name = #specimenIdentifiers
* parameter[3].use = #in
* parameter[3].min = 0
* parameter[3].max = "*"
* parameter[3].documentation = "List of specimen identifiers. Metadata for each test based on a supplied specimen identifier is returned."
* parameter[3].type = #string
* parameter[3].searchType = #token
* parameter[4].name = #ranges
* parameter[4].use = #in
* parameter[4].min = 0
* parameter[4].max = "*"
* parameter[4].documentation = "List of regions for which additional study information is sought. If ranges are supplied, then each returned test will include studied and uncallable regions. Must be in zero-based RefSeq:Integer-range format (e.g. 'NC_000007.14:55174721-55174820')."
* parameter[4].type = #string
* parameter[4].searchType = #special
* parameter[5].name = #response
* parameter[5].use = #out
* parameter[5].min = 1
* parameter[5].max = "1"
* parameter[5].documentation = "Operation returns a list of identified sequencing studies with associated study metadata. 

    parameters
      parameter (0..*) (one for each test identified)
	    name: tests
        part (1..1)
          name: testId
          valueString: test identifier
        part (1..1)
          name: testDate
          valueDateTime: test date
        part (0..1)
          name: specimenId
          valueString: specimen identifier
        part (0..1)
          name: genomicBuild
          valueCodeableConcept: preferred codes: https://loinc.org/LL1040-6/
        part (0..1)
          name: dnaChangeType
          valueCodeableConcept: preferred codes: http://www.sequenceontology.org/browser/current_release/term/SO:0002072
        part (0..1)
          name: regionStudied
          valueString: List of non-overlapping regions, each in zero-based RefSeq:Integer-range format; or 'unknown'
        part (0..1)
          name: uncallableRegions
          valueString: List of non-overlapping regions, each in zero-based RefSeq:Integer-range format; or 'unknown'
"
* parameter[5].type = #canonical
* parameter[5].targetProfile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/FindStudyMetadataParameters"
