Instance: find-subject-variants
InstanceOf: OperationDefinition
Title: "Find Subject Variants"
Usage: #definition
Description: "Determine if simple variants are present that overlap range(s)."
* name = "FindSubjectVariants"
* title = "Find Subject Variants"
* status = #active
* kind = #operation
* publisher = "HL7 International Clinical Genomics Work Group"
* system = false
* type = true
* instance = false
* code = #match
* parameter[+]
  * name = #subject
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "The subject of interest."
  * type = #string
  * searchType = #reference
* parameter[+]
  * name = #ranges
  * use = #in
  * min = 1
  * max = "*"
  * documentation = "List of regions to be searched for variants. Must be in zero-based RefSeq:Integer-range format (e.g. 'NC_000007.14:55174721-55174820')."
  * type = #string
  * searchType = #special
* parameter[+]
  * name = #testIdentifiers
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "Supply a list of test identifiers. Only results originating from one of these tests will be returned."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #testDateRange
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Supply a date range. Only results generated during this range will be returned."
  * type = #Period
* parameter[+]
  * name = #specimenIdentifiers
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "Supply a list of specimen identifiers. Only results derived from one of these specimens will be returned."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #genomicSourceClass
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Enables an App to limit results to those that are 'germline' or 'somatic'. Default is to include variants irrespective of genomic source class."
  * type = #code
* parameter[+]
  * name = #includeVariants
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Include variants in response if set to true. Default=false."
  * type = #boolean
* parameter[+]
  * name = #includePhasing
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "If true, then assume includeVariants=true, and return variants and sequence-phase-relationships between returned variants. Default=false."
  * type = #boolean
* parameter[+]
  * name = #variants
  * use = #out
  * min = 1
  * max = "*"
  * documentation = "(one for each range in rangeList)"
  * part[+]
    * name = #rangeItem
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "range from rangeList"
    * type = #string
  * part[+]
    * name = #presence
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "True if as least one variant is identified in the range"
    * type = #boolean
  * part[+]
    * name = #variant
    * use = #out
    * min = 0
    * max = "*"
    * documentation = "If includeVariants=true then include variants in the range. Variants must conform to [Profile: http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant] and minimally include valueCodeableConcept; component:genomic-ref-seq; component:ref-allele; component:alt-allele; component:coordinate-system (valued with '0-based interval counting'); component:exact-start-end."
    * type = #Observation
    * extension[operationAllowedType].valueUri = Canonical(Variant)
  * part[+]
    * name = #sequencePhaseRelationship
    * use = #out
    * min = 0
    * max = "*"
    * documentation = "If includePhasing=true and includeVariants=true then include sequence-phase-relationships between returned variants. Sequence phase relationships must conform to [Profile: http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition-sequence-phase-relationship.html] and minimally include valueCodeableConcept and 2..2 derivedFrom:variant references."
    * type = #Observation
    * extension[operationAllowedType].valueUri = Canonical(Variant)

Instance: find-subject-specific-variants
InstanceOf: OperationDefinition
Title: "Find Subject Specific Variants"
Usage: #definition
Description: "Determine if specified simple variants are present."
* name = "FindSubjectSpecificVariants"
* title = "Find Subject Specific Variants"
* status = #active
* kind = #operation
* publisher = "HL7 International Clinical Genomics Work Group"
* system = false
* type = true
* instance = false
* code = #match
* parameter[+]
  * name = #subject
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "The subject of interest."
  * type = #string
  * searchType = #reference
* parameter[+]
  * name = #variants
  * use = #in
  * min = 1
  * max = "*"
  * documentation = "List of variants being sought. Must be in HGVS or SPDI format."
  * type = #string
  * searchType = #string
* parameter[+]
  * name = #testIdentifiers
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "Supply a list of test identifiers. Only results originating from one of these tests will be returned."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #testDateRange
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Supply a date range. Only results generated during this range will be returned."
  * type = #Period
* parameter[+]
  * name = #specimenIdentifiers
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "Supply a list of specimen identifiers. Only results derived from one of these specimens will be returned."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #genomicSourceClass
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Enables an App to limit results to those that are 'germline' or 'somatic'. Default is to include variants irrespective of genomic source class."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #variants
  * use = #out
  * min = 1
  * max = "*"
  * documentation = "(one for each variant in variantList)"
  * part[+]
    * name = #variantItem
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "variant from variantList"
    * type = #string
  * part[+]
    * name = #presence
    * use = #out
    * min = 1
    * max = "1"
    * type = #boolean
  * part[+]
    * name = #variant
    * use = #out
    * min = 0
    * max = "*"
    * documentation = "Variants must conform to [Profile: http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant] and minimally include valueCodeableConcept; component:genomic-ref-seq; component:ref-allele; component:alt-allele; component:coordinate-system (valued with '0-based interval counting'); component:exact-start-end."
    * type = #Observation
    * extension[operationAllowedType].valueUri = Canonical(Variant)

Instance: find-subject-structural-intersecting-variants
InstanceOf: OperationDefinition
Title: "Find Subject Structural Intersecting Variants"
Usage: #definition
Description: "Determine if structural variants are present that overlap range(s)."
* name = "FindSubjectStructuralIntersectingVariants"
* title = "Find Subject Structural Intersecting Variants"
* status = #active
* kind = #operation
* publisher = "HL7 International Clinical Genomics Work Group"
* system = false
* type = true
* instance = false
* code = #match
* parameter[+]
  * name = #subject
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "The subject of interest."
  * type = #string
  * searchType = #reference
* parameter[+]
  * name = #ranges
  * use = #in
  * min = 1
  * max = "*"
  * documentation = "List of regions to be searched for variants. Must be in zero-based RefSeq:Integer-range format (e.g. 'NC_000007.14:55174721-55174820')."
  * type = #string
  * searchType = #special
* parameter[+]
  * name = #testIdentifiers
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "Supply a list of test identifiers. Only results originating from one of these tests will be returned."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #testDateRange
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Supply a date range. Only results generated during this range will be returned."
  * type = #Period
* parameter[+]
  * name = #specimenIdentifiers
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "Supply a list of specimen identifiers. Only results derived from one of these specimens will be returned."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #genomicSourceClass
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Enables an App to limit results to those that are 'germline' or 'somatic'. Default is to include variants irrespective of genomic source class."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #includeVariants
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Include variants in response if set to true. Default=false."
  * type = #boolean
* parameter[+]
  * name = #variants
  * use = #out
  * min = 1
  * max = "*"
  * documentation = "(one for each range in rangeList)"
  * part[+]
    * name = #rangeItem
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "range from rangeList"
    * type = #string
  * part[+]
    * name = #presence
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "True if as least one variant is identified that intersects the range"
    * type = #boolean
  * part[+]
    * name = #variant
    * use = #out
    * min = 0
    * max = "*"
    * documentation = "If includeVariants=true then include variants that intersect the range. Variants must conform to [Profile: http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant] and minimally include valueCodeableConcept; component:coding-change-type; component:genomic-ref-seq; component:coordinate-system (valued with '0-based interval counting'); components outer-start-end and/or inner-start-end."
    * type = #Observation
    * extension[operationAllowedType].valueUri = Canonical(Variant)

Instance: find-subject-structural-subsuming-variants
InstanceOf: OperationDefinition
Title: "Find Subject Structural Subsuming Variants"
Usage: #definition
Description: "Determine if structural variants are present that fully subsume a range."
* name = "FindSubjectStructuralSubsumingVariants"
* title = "Find Subject Structural Subsuming Variants"
* status = #active
* kind = #operation
* publisher = "HL7 International Clinical Genomics Work Group"
* system = false
* type = true
* instance = false
* code = #match
* parameter[+]
  * name = #subject
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "The subject of interest."
  * type = #string
  * searchType = #reference
* parameter[+]
  * name = #ranges
  * use = #in
  * min = 1
  * max = "*"
  * documentation = "List of regions to be searched for variants. Must be in zero-based RefSeq:Integer-range format (e.g. 'NC_000007.14:55174721-55174820')."
  * type = #string
  * searchType = #special
* parameter[+]
  * name = #testIdentifiers
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "Supply a list of test identifiers. Only results originating from one of these tests will be returned."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #testDateRange
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Supply a date range. Only results generated during this range will be returned."
  * type = #Period
* parameter[+]
  * name = #specimenIdentifiers
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "Supply a list of specimen identifiers. Only results derived from one of these specimens will be returned."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #genomicSourceClass
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Enables an App to limit results to those that are 'germline' or 'somatic'. Default is to include variants irrespective of genomic source class."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #includeVariants
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Include variants in response if set to true. Default=false."
  * type = #boolean
* parameter[+]
  * name = #variants
  * use = #out
  * min = 1
  * max = "*"
  * documentation = "(one for each range in rangeList)"
  * part[+]
    * name = #rangeItem
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "range from rangeList"
    * type = #string
  * part[+]
    * name = #presence
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "True if as least one variant is identified that subsumes the range"
    * type = #boolean
  * part[+]
    * name = #variant
    * use = #out
    * min = 0
    * max = "*"
    * documentation = "If includeVariants=true then include variants that subsume the range. Variants must conform to [Profile: http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant] and minimally include valueCodeableConcept; component:coding-change-type; component:genomic-ref-seq; component:coordinate-system (valued with '0-based interval counting'); components outer-start-end and/or inner-start-end."
    * type = #Observation
    * extension[operationAllowedType].valueUri = Canonical(Variant)

Instance: find-subject-haplotypes
InstanceOf: OperationDefinition
Title: "Find Subject Haplotypes"
Usage: #definition
Description: "Retrieve haplotypes/genotypes for specified genes."
* name = "FindSubjectHaplotypes"
* title = "Find Subject Haplotypes"
* status = #active
* kind = #operation
* publisher = "HL7 International Clinical Genomics Work Group"
* system = false
* type = true
* instance = false
* code = #match
* parameter[+]
  * name = #subject
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "The subject of interest."
  * type = #string
  * searchType = #reference
* parameter[+]
  * name = #genes
  * use = #in
  * min = 1
  * max = "*"
  * documentation = "List of genes to be searched. Must be in token or codesystem|code format."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #testIdentifiers
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "Supply a list of test identifiers. Only results originating from one of these tests will be returned."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #testDateRange
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Supply a date range. Only results generated during this range will be returned."
  * type = #Period
* parameter[+]
  * name = #specimenIdentifiers
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "Supply a list of specimen identifiers. Only results derived from one of these specimens will be returned."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #genomicSourceClass
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Enables an App to limit results to those that are 'germline' or 'somatic'. Default is to include haplotypes irrespective of genomic source class."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #haplotypes
  * use = #out
  * min = 1
  * max = "*"
  * documentation = "(one for each gene in geneList)"
  * part[+]
    * name = #geneItem
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "gene from geneList"
    * type = #string
  * part[+]
    * name = #haplotype
    * use = #out
    * min = 0
    * max = "*"
    * documentation = "Haplotypes must conform to [Profile: http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/haplotype]."
    * type = #Observation
    * extension[operationAllowedType].valueUri = Canonical(Haplotype)
  * part[+]
    * name = #genotype
    * use = #out
    * min = 0
    * max = "*"
    * documentation = "Genotypes must conform to [Profile: http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genotype]."
    * type = #Observation
    * extension[operationAllowedType].valueUri = Canonical(Genotype)

Instance: find-subject-specific-haplotypes
InstanceOf: OperationDefinition
Title: "Find Subject Specific Haplotypes"
Usage: #definition
Description: "See if specified haplotypes/genotypes are present."
* name = "FindSubjectSpecificHaplotypes"
* title = "Find Subject Specific Haplotypes"
* status = #active
* kind = #operation
* publisher = "HL7 International Clinical Genomics Work Group"
* system = false
* type = true
* instance = false
* code = #match
* parameter[+]
  * name = #subject
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "The subject of interest."
  * type = #string
  * searchType = #reference
* parameter[+]
  * name = #haplotypes
  * use = #in
  * min = 1
  * max = "*"
  * documentation = "List of haplotypes and/or genotypes being sought. Must be in token or codesystem|code format."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #testIdentifiers
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "Supply a list of test identifiers. Only results originating from one of these tests will be returned."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #testDateRange
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Supply a date range. Only results generated during this range will be returned."
  * type = #Period
* parameter[+]
  * name = #specimenIdentifiers
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "Supply a list of specimen identifiers. Only results derived from one of these specimens will be returned."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #genomicSourceClass
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Enables an App to limit results to those that are 'germline' or 'somatic'. Default is to include haplotypes irrespective of genomic source class."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #haplotypes
  * use = #out
  * min = 1
  * max = "*"
  * documentation = "(one for each haplotype in haplotypeList)"
  * part[+]
    * name = #haplotypeItem
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "haplotype/genotype from haplotypeList"
    * type = #string
  * part[+]
    * name = #presence
    * use = #out
    * min = 1
    * max = "1"
    * type = #boolean
  * part[+]
    * name = #haplotype
    * use = #out
    * min = 0
    * max = "*"
    * documentation = "Haplotypes must conform to [Profile: http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/haplotype]."
    * type = #Observation
    * extension[operationAllowedType].valueUri = Canonical(Haplotype)
  * part[+]
    * name = #genotype
    * use = #out
    * min = 0
    * max = "*"
    * documentation = "Genotypes must conform to [Profile: http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genotype]."
    * type = #Observation
    * extension[operationAllowedType].valueUri = Canonical(Genotype)

Instance: find-subject-tx-implications
InstanceOf: OperationDefinition
Title: "Find Subject Treatment Implications"
Usage: #definition
Description: "Retrieves genetic therapeutic implications for variants/haplotypes/genotypes."
* name = "FindSubjectTxImplications"
* title = "Find Subject Treatment Implications"
* status = #active
* kind = #operation
* publisher = "HL7 International Clinical Genomics Work Group"
* system = false
* type = true
* instance = false
* code = #match
* parameter[+]
  * name = #subject
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "The subject of interest."
  * type = #string
  * searchType = #reference
* parameter[+]
  * name = #variants
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "List of variants from which implications are derived. Must be in HGVS or SPDI format."
  * type = #string
  * searchType = #string
* parameter[+]
  * name = #ranges
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "List of regions to be searched for variants. Must be in zero-based RefSeq:Integer-range format (e.g. 'NC_000007.14:55174721-55174820')."
  * type = #string
  * searchType = #special
* parameter[+]
  * name = #haplotypes
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "List of haplotypes and/or genotypes from which implications are derived. Must be in token or codesystem|code format."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #treatments
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "List of medications and/or other therapeutic interventions for which implications are sought. Must be in token or codesystem|code format."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #conditions
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "List of conditions for which implications are sought. Must be in token or codesystem|code format."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #testIdentifiers
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "Supply a list of test identifiers. Only results originating from one of these tests will be returned."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #testDateRange
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Supply a date range. Only results generated during this range will be returned."
  * type = #Period
* parameter[+]
  * name = #specimenIdentifiers
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "Supply a list of specimen identifiers. Only results derived from one of these specimens will be returned."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #genomicSourceClass
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Enables an App to limit results to those that are 'germline' or 'somatic'. Default is to include variants irrespective of genomic source class."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #implication
  * use = #out
  * min = 0
  * max = "*"
  * documentation = "Implications must conform to [Profile: http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/therapeutic-implication]. The target(s) of the implication's derivedFrom shall also be included in the response."
  * type = #Observation
  * extension[operationAllowedType].valueUri = Canonical(TherapeuticImplication)
* parameter[+]
  * name = #variant
  * use = #out
  * min = 0
  * max = "*"
  * documentation = "Variants must conform to [Profile: http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant]."
  * type = #Observation
  * extension[operationAllowedType].valueUri = Canonical(Variant)
* parameter[+]
  * name = #haplotype
  * use = #out
  * min = 0
  * max = "*"
  * documentation = "Haplotypes must conform to [Profile: http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/haplotype]."
  * type = #Observation
  * extension[operationAllowedType].valueUri = Canonical(Haplotype)
* parameter[+]
  * name = #genotype
  * use = #out
  * min = 0
  * max = "*"
  * documentation = "Genotypes must conform to [Profile: http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genotype]."
  * type = #Observation
  * extension[operationAllowedType].valueUri = Canonical(Genotype)

Instance: find-subject-dx-implications
InstanceOf: OperationDefinition
Title: "Find Subject Diagnostic Implications"
Usage: #definition
Description: "Retrieves genetic diagnostic implications for variants."
* name = "FindSubjectDxImplications"
* title = "Find Subject Diagnostic Implications"
* status = #active
* kind = #operation
* publisher = "HL7 International Clinical Genomics Work Group"
* system = false
* type = true
* instance = false
* code = #match
* parameter[+]
  * name = #subject
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "The subject of interest."
  * type = #string
  * searchType = #reference
* parameter[+]
  * name = #variants
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "List of variants from which implications are derived. Must be in HGVS or SPDI format."
  * type = #string
  * searchType = #string
* parameter[+]
  * name = #ranges
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "List of regions to be searched for variants. Must be in zero-based RefSeq:Integer-range format (e.g. 'NC_000007.14:55174721-55174820')."
  * type = #string
  * searchType = #special
* parameter[+]
  * name = #conditions
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "List of conditions for which implications are sought. Must be in token or codesystem|code format."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #testIdentifiers
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "Supply a list of test identifiers. Only results originating from one of these tests will be returned."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #testDateRange
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Supply a date range. Only results generated during this range will be returned."
  * type = #Period
* parameter[+]
  * name = #specimenIdentifiers
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "Supply a list of specimen identifiers. Only results derived from one of these specimens will be returned."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #genomicSourceClass
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Enables an App to limit results to those that are 'germline' or 'somatic'. Default is to include variants irrespective of genomic source class."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #implication
  * use = #out
  * min = 0
  * max = "*"
  * documentation = "Implications must conform to [Profile: http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/diagnostic-implication]. The target(s) of the implication's derivedFrom shall also be included in the response."
  * type = #Observation
  * extension[operationAllowedType].valueUri = Canonical(DiagnosticImplication)
* parameter[+]
  * name = #variant
  * use = #out
  * min = 0
  * max = "*"
  * documentation = "Variants must conform to [Profile: http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant]."
  * type = #Observation
  * extension[operationAllowedType].valueUri = Canonical(Variant)

Instance: find-subject-molec-conseq
InstanceOf: OperationDefinition
Title: "Find Subject Molecular Consequences"
Usage: #definition
Description: "Retrieves molecular consequences of a DNA variant."
* name = "FindSubjectMolecConseq"
* title = "Find Subject Molecular Consequences"
* status = #active
* kind = #operation
* publisher = "HL7 International Clinical Genomics Work Group"
* system = false
* type = true
* instance = false
* code = #match
* parameter[+]
  * name = #subject
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "The subject of interest."
  * type = #string
  * searchType = #reference
* parameter[+]
  * name = #variants
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "List of variants from which consequences are derived. Must be in HGVS or SPDI format."
  * type = #string
  * searchType = #string
* parameter[+]
  * name = #ranges
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "List of regions to be searched for variants. Must be in zero-based RefSeq:Integer-range format (e.g. 'NC_000007.14:55174721-55174820')."
  * type = #string
  * searchType = #special
* parameter[+]
  * name = #featureConsequences
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "List of consequences sought. Must be in token or codesystem|code format."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #testIdentifiers
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "Supply a list of test identifiers. Only results originating from one of these tests will be returned."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #testDateRange
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Supply a date range. Only results generated during this range will be returned."
  * type = #Period
* parameter[+]
  * name = #specimenIdentifiers
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "Supply a list of specimen identifiers. Only results derived from one of these specimens will be returned."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #genomicSourceClass
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Enables an App to limit results to those that are 'germline' or 'somatic'. Default is to include variants irrespective of genomic source class."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #consequence
  * use = #out
  * min = 0
  * max = "*"
  * documentation = "Consequences must conform to [Profile: http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/molecular-consequence]. The target(s) of the consequence's derivedFrom shall also be included in the response."
  * type = #Observation
  * extension[operationAllowedType].valueUri = Canonical(MolecularConsequence)
* parameter[+]
  * name = #variant
  * use = #out
  * min = 0
  * max = "*"
  * documentation = "Variants must conform to [Profile: http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant]."
  * type = #Observation
  * extension[operationAllowedType].valueUri = Canonical(Variant)

Instance: find-population-specific-variants
InstanceOf: OperationDefinition
Title: "Find Population Specific Variants"
Usage: #definition
Description: "Retrieve count or list of patients having specified variants."
* name = "FindPopulationSpecificVariants"
* title = "Find Population Specific Variants"
* status = #active
* kind = #operation
* publisher = "HL7 International Clinical Genomics Work Group"
* system = false
* type = true
* instance = false
* code = #match
* parameter[+]
  * name = #variants
  * use = #in
  * min = 1
  * max = "*"
  * documentation = "List of variants being sought. Must be in HGVS or SPDI format."
  * type = #string
  * searchType = #string
* parameter[+]
  * name = #genomicSourceClass
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Enables an App to limit results to those that are 'germline' or 'somatic'. Default is to include variants irrespective of genomic source class."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #includePatientList
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Include list of matching patients if set to true. Default=false."
  * type = #boolean
* parameter[+]
  * name = #variants
  * use = #out
  * min = 1
  * max = "*"
  * part[+]
    * name = #variantItem
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "variant from variantList"
    * type = #string
  * part[+]
    * name = #numerator
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Count of patients having this variant"
    * type = #Quantity
  * part[+]
    * name = #denominator
    * use = #out
    * min = 0
    * max = "1"
    * documentation = "Count of patients in the cohort searched"
    * type = #Quantity
  * part[+]
    * name = #subject
    * use = #out
    * min = 0
    * max = "*"
    * documentation = "Patient ID. Include if includePatientList=true"
    * type = #string

Instance: find-population-structural-intersecting-variants
InstanceOf: OperationDefinition
Title: "Find Population Structural Intersecting Variants"
Usage: #definition
Description: "Retrieve count or list of patients having structural intersecting variants in specified regions."
* name = "FindPopulationStructuralIntersectingVariants"
* title = "Find Population Structural Intersecting Variants"
* status = #active
* kind = #operation
* publisher = "HL7 International Clinical Genomics Work Group"
* system = false
* type = true
* instance = false
* code = #match
* parameter[+]
  * name = #ranges
  * use = #in
  * min = 1
  * max = "*"
  * documentation = "List of regions to be searched for variants. Must be in zero-based RefSeq:Integer-range format (e.g. 'NC_000007.14:55174721-55174820')."
  * type = #string
  * searchType = #special
* parameter[+]
  * name = #genomicSourceClass
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Enables an App to limit results to those that are 'germline' or 'somatic'. Default is to include variants irrespective of genomic source class."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #includePatientList
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Include list of matching patients if set to true. Default=false."
  * type = #boolean
* parameter[+]
  * name = #variants
  * use = #out
  * min = 1
  * max = "*"
  * part[+]
    * name = #rangeItem
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "range from rangeList"
    * type = #string
  * part[+]
    * name = #numerator
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Count of patients having this variant"
    * type = #Quantity
  * part[+]
    * name = #denominator
    * use = #out
    * min = 0
    * max = "1"
    * documentation = "Count of patients in the cohort searched"
    * type = #Quantity
  * part[+]
    * name = #subject
    * use = #out
    * min = 0
    * max = "*"
    * documentation = "Patient ID. Include if includePatientList=true"
    * type = #string

Instance: find-population-structural-subsuming-variants
InstanceOf: OperationDefinition
Title: "Find Population Structural Subsuming Variants"
Usage: #definition
Description: "Retrieve count or list of patients having structural subsuming variants in specified regions."
* name = "FindPopulationStructuralSubsumingVariants"
* title = "Find Population Structural Subsuming Variants"
* status = #active
* kind = #operation
* publisher = "HL7 International Clinical Genomics Work Group"
* system = false
* type = true
* instance = false
* code = #match
* parameter[+]
  * name = #ranges
  * use = #in
  * min = 1
  * max = "*"
  * documentation = "List of regions to be searched for variants. Must be in zero-based RefSeq:Integer-range format (e.g. 'NC_000007.14:55174721-55174820')."
  * type = #string
  * searchType = #special
* parameter[+]
  * name = #genomicSourceClass
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Enables an App to limit results to those that are 'germline' or 'somatic'. Default is to include variants irrespective of genomic source class."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #includePatientList
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Include list of matching patients if set to true. Default=false."
  * type = #boolean
* parameter[+]
  * name = #variants
  * use = #out
  * min = 1
  * max = "*"
  * part[+]
    * name = #rangeItem
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "range from rangeList"
    * type = #string
  * part[+]
    * name = #numerator
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Count of patients having this variant"
    * type = #Quantity
  * part[+]
    * name = #denominator
    * use = #out
    * min = 0
    * max = "1"
    * documentation = "Count of patients in the cohort searched"
    * type = #Quantity
  * part[+]
    * name = #subject
    * use = #out
    * min = 0
    * max = "*"
    * documentation = "Patient ID. Include if includePatientList=true"
    * type = #string

Instance: find-population-specific-haplotypes
InstanceOf: OperationDefinition
Title: "Find Population Specific Haplotypes"
Usage: #definition
Description: "Retrieve count or list of patients having specified genotypes/haplotypes."
* name = "FindPopulationSpecificHaplotypes"
* title = "Find Population Specific Haplotypes"
* status = #active
* kind = #operation
* publisher = "HL7 International Clinical Genomics Work Group"
* system = false
* type = true
* instance = false
* code = #match
* parameter[+]
  * name = #haplotypes
  * use = #in
  * min = 1
  * max = "*"
  * documentation = "List of haplotypes and/or genotypes being sought. Must be in token or codesystem|code format."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #genomicSourceClass
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Enables an App to limit results to those that are 'germline' or 'somatic'. Default is to include variants irrespective of genomic source class."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #includePatientList
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Include list of matching patients if set to true. Default=false."
  * type = #boolean
* parameter[+]
  * name = #haplotypes
  * use = #out
  * min = 1
  * max = "*"
  * documentation = "(one for each haplotype in haplotypeList)"
  * part[+]
    * name = #haplotypeItem
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "haplotype/genotype from haplotypeList"
    * type = #string
  * part[+]
    * name = #numerator
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Count of patients having this variant"
    * type = #Quantity
  * part[+]
    * name = #denominator
    * use = #out
    * min = 0
    * max = "1"
    * documentation = "Count of patients in the cohort searched"
    * type = #Quantity
  * part[+]
    * name = #subject
    * use = #out
    * min = 0
    * max = "*"
    * documentation = "Patient ID. Include if includePatientList=true"
    * type = #string

Instance: find-population-tx-implications
InstanceOf: OperationDefinition
Title: "Find Population Treatment Implications"
Usage: #definition
Description: "Retrieve count or list of patients having therapeutic implications."
* name = "FindPopulationTxImplications"
* title = "Find Population Treatment Implications"
* status = #active
* kind = #operation
* publisher = "HL7 International Clinical Genomics Work Group"
* system = false
* type = true
* instance = false
* code = #match
* parameter[+]
  * name = #variants
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "List of variants from which implications are derived. Must be in HGVS or SPDI format."
  * type = #string
  * searchType = #string
* parameter[+]
  * name = #haplotypes
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "List of haplotypes from which implications are derived. Must be in token or codesystem|code format."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #treatments
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "List of medications and/or other therapeutic interventions for which implications are sought. Must be in token or codesystem|code format."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #conditions
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "List of conditions for which implications are sought. Must be in token or codesystem|code format."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #genomicSourceClass
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Enables an App to limit results to those that are 'germline' or 'somatic'. Default is to include variants irrespective of genomic source class."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #includePatientList
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Include list of matching patients if set to true. Default=false."
  * type = #boolean
* parameter[+]
  * name = #implications
  * use = #out
  * min = 1
  * max = "1"
  * part[+]
    * name = #numerator
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Count of patients having this variant"
    * type = #Quantity
  * part[+]
    * name = #denominator
    * use = #out
    * min = 0
    * max = "1"
    * documentation = "Count of patients in the cohort searched"
    * type = #Quantity
  * part[+]
    * name = #subject
    * use = #out
    * min = 0
    * max = "*"
    * documentation = "Patient ID. Include if includePatientList=true"
    * type = #string

Instance: find-population-dx-implications
InstanceOf: OperationDefinition
Title: "Find Population Diagnostic Implications"
Usage: #definition
Description: "Retrieve count or list of patients having diagnostic implications."
* name = "FindPopulationDxImplications"
* title = "Find Population Diagnostic Implications"
* status = #active
* kind = #operation
* publisher = "HL7 International Clinical Genomics Work Group"
* system = false
* type = true
* instance = false
* code = #match
* parameter[+]
  * name = #variants
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "List of variants from which implications are derived. Must be in HGVS or SPDI format."
  * type = #string
  * searchType = #string
* parameter[+]
  * name = #haplotypes
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "List of haplotypes from which implications are derived. Must be in token or codesystem|code format."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #conditions
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "List of conditions for which implications are sought. Must be in token or codesystem|code format."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #genomicSourceClass
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Enables an App to limit results to those that are 'germline' or 'somatic'. Default is to include variants irrespective of genomic source class."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #includePatientList
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Include list of matching patients if set to true. Default=false."
  * type = #boolean
* parameter[+]
  * name = #implications
  * use = #out
  * min = 1
  * max = "1"
  * part[+]
    * name = #numerator
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Count of patients having this variant"
    * type = #Quantity
  * part[+]
    * name = #denominator
    * use = #out
    * min = 0
    * max = "1"
    * documentation = "Count of patients in the cohort searched"
    * type = #Quantity
  * part[+]
    * name = #subject
    * use = #out
    * min = 0
    * max = "*"
    * documentation = "Patient ID. Include if includePatientList=true"
    * type = #string

Instance: find-population-molec-conseq
InstanceOf: OperationDefinition
Title: "Find Population Molecular Consequences"
Usage: #definition
Description: "Retrieve count or list of patients having molecular consequences."
* name = "FindPopulationMolecConseq"
* title = "Find Population Molecular Consequences"
* status = #active
* kind = #operation
* publisher = "HL7 International Clinical Genomics Work Group"
* system = false
* type = true
* instance = false
* code = #match
* parameter[+]
  * name = #variants
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "List of variants from which implications are derived. Must be in HGVS or SPDI format."
  * type = #string
  * searchType = #string
* parameter[+]
  * name = #featureConsequences
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "List of consequences sought. Must be in token or codesystem|code format."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #genomicSourceClass
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Enables an App to limit results to those that are 'germline' or 'somatic'. Default is to include variants irrespective of genomic source class."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #includePatientList
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Include list of matching patients if set to true. Default=false."
  * type = #boolean
* parameter[+]
  * name = #consequences
  * use = #out
  * min = 1
  * max = "1"
  * part[+]
    * name = #numerator
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Count of patients meeting criteria"
    * type = #Quantity
  * part[+]
    * name = #denominator
    * use = #out
    * min = 0
    * max = "1"
    * documentation = "Count of patients in the cohort searched"
    * type = #Quantity
  * part[+]
    * name = #subject
    * use = #out
    * min = 0
    * max = "*"
    * documentation = "Patient ID. Include if includePatientList=true"
    * type = #string

Instance: find-study-metadata
InstanceOf: OperationDefinition
Title: "Find Study Metadata"
Usage: #definition
Description: "Retrieve metadata about sequencing studies performed on a subject."
* name = "FindStudyMetadata"
* title = "Find Study Metadata"
* status = #active
* kind = #operation
* publisher = "HL7 International Clinical Genomics Work Group"
* system = false
* type = true
* instance = false
* code = #match
* parameter[+]
  * name = #subject
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "The subject of interest."
  * type = #string
  * searchType = #reference
* parameter[+]
  * name = #testIdentifiers
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "List of test identifiers. Metadata for each test is returned."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #testDateRange
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Metadata for each test performed during the range is returned."
  * type = #Period
* parameter[+]
  * name = #specimenIdentifiers
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "List of specimen identifiers. Metadata for each test based on a supplied specimen identifier is returned."
  * type = #string
  * searchType = #token
* parameter[+]
  * name = #ranges
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "List of regions for which additional study information is sought. If ranges are supplied, then each returned test will include studied and uncallable regions. Must be in zero-based RefSeq:Integer-range format (e.g. 'NC_000007.14:55174721-55174820')."
  * type = #string
  * searchType = #special
* parameter[+]
  * name = #tests
  * use = #out
  * min = 0
  * max = "*"
  * part[+]
    * name = #testId
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "test identifier"
    * type = #string
  * part[+]
    * name = #testDate
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "test date"
    * type = #dateTime
  * part[+]
    * name = #specimenId
    * use = #out
    * min = 0
    * max = "1"
    * documentation = "specimen identifier"
    * type = #string
  * part[+]
    * name = #genomicBuild
    * use = #out
    * min = 0
    * max = "1"
    * documentation = "preferred codes: https://loinc.org/LL1040-6/"
    * type = #CodeableConcept
  * part[+]
    * name = #dnaChangeType
    * use = #out
    * min = 0
    * max = "1"
    * documentation = "preferred codes: http://www.sequenceontology.org/browser/current_release/term/SO:0002072"
    * type = #CodeableConcept
  * part[+]
    * name = #regionStudied
    * use = #out
    * min = 0
    * max = "1"
    * documentation = "List of non-overlapping regions, each in zero-based RefSeq:Integer-range format; or 'unknown'"
    * type = #string
  * part[+]
    * name = #uncallableRegions
    * use = #out
    * min = 0
    * max = "1"
    * documentation = "List of non-overlapping regions, each in zero-based RefSeq:Integer-range format; or 'unknown'"
    * type = #string