Profile:        GenomicFinding
Parent:         GenomicsBase
Id:             finding
Title:          "Genomics Finding"
Description:    "Properties common to genetic findings whose results are expressed as computable discrete elements (e.g. genotypes, haplotypes, variants, etc.)."
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* ^abstract = true
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
* component contains gene-studied 0..* and 
    cytogenetic-location 0..* and 
    reference-sequence-assembly 0..*
* component[gene-studied] ^short = "Gene Studied"
* component[gene-studied] ^definition = "The gene(s) on which the variant is located."
* component[gene-studied].code = LNC#48018-6
* component[gene-studied].code ^short = "48018-6"

* component[gene-studied].value[x] only CodeableConcept
* component[gene-studied].value[x] ^short = "The HGNC gene symbol is to be used as display text and the HGNC gene ID used as the code. If no HGNC code issued for this gene yet, NCBI gene IDs SHALL be used."
* component[gene-studied].value[x] 1..1
* component[gene-studied].value[x] from HGNCVS (extensible)

* component[cytogenetic-location] ^short = "Cytogenetic (Chromosome) Location"
* component[cytogenetic-location] ^definition = "The relevant chromosomal region. The combination of numbers and letters provide a genetic 'address'."
* component[cytogenetic-location].code = LNC#48001-2
* component[cytogenetic-location].code ^short = "48001-2"
* component[cytogenetic-location].value[x] only CodeableConcept
* component[cytogenetic-location].value[x] 1..1
* component[cytogenetic-location].value[x] ^short = "Example: 1q21.1"
* component[reference-sequence-assembly] ^short = "Human Reference Sequence Assembly"
* component[reference-sequence-assembly] ^definition = "The reference genome/assembly used in this analysis."
* component[reference-sequence-assembly].code = LNC#62374-4
* component[reference-sequence-assembly].code ^short = "62374-4"
* component[reference-sequence-assembly].value[x] only CodeableConcept
* component[reference-sequence-assembly].value[x] 1..1
* component[reference-sequence-assembly].value[x] ^short = "GRCh37 | GRCh38 | ..."
* component[reference-sequence-assembly].value[x] from http://loinc.org/vs/LL1040-6 (extensible)

Profile:        TMB
Parent:         GenomicsBase
Id:             tmb
Title:          "Tumor Mutation Burden"
Description:    """
The total number of mutations (changes) found in the DNA of cancer cells. Knowing the tumor mutational burden may help plan the best treatment. For example, tumors that have a high number of mutations appear to be more likely to respond to certain types of immunotherapy. Tumor mutational burden is being used as a type of biomarker.
"""
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* . ^short = "Tumor Mutation Burden"
* code = LNC#94076-7
* code ^short = "94076-7"
* valueQuantity = UCUM#1/1000000{Base}
* valueQuantity.unit = "Mutations/Megabase"
* interpretation from HighLowCodesVS

Profile:        Variant
Parent:         GenomicFinding
Id:             variant
Title:          "Variant"
Description:    "Details about a set of changes in the tested sample compared to a reference sequence."
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* . ^short = "Variant"
* code = LNC#69548-6
* code ^short = "69548-6"
* method from http://loinc.org/vs/LL4048-6 (extensible)
* method ^short = "Sequencing | SNP array | PCR | Computational analysis | ..."
* valueCodeableConcept from http://loinc.org/vs/LL1971-2 (required)
* valueCodeableConcept ^short = "Indeterminate | No call | Present | Absent."
* valueCodeableConcept ^definition = "The presence or absence of the variant described in the components. If not searching for specific variations and merely reporting what's found, the profile's value should be set to 'Present'."
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
* component contains
    coding-hgvs 0..1 and
    genomic-hgvs 0..1 and
    cytogenomic-nomenclature 0..1 and
    
    genomic-ref-seq 0..1 and
    transcript-ref-seq 0..1 and
    exact-start-end 0..1 and
    inner-start-end 0..1 and
    outer-start-end 0..1 and
    coordinate-system 0..1 and
    ref-allele 0..1 and
    alt-allele 0..1 and
    coding-change-type 0..1 and
    genomic-source-class 0..1 and
    sample-allelic-frequency 0..1 and
    allelic-read-depth 0..1 and
    allelic-state 0..1 and
    variant-inheritance 0..1 and
    
    variation-code 0..* and
    chromosome-identifier 0..* and

    protein-hgvs 0..1 and

    amino-acid-change-type 0..1 and
    molecular-consequence 0..1 and
    copy-number 0..1 and

    variant-confidence-status 0..1

* component[coding-hgvs].code = LNC#48004-6
* component[coding-hgvs].code ^short = "48004-6"
* component[coding-hgvs] ^short = "Coding (cDNA) Change - cHGVS"
* component[coding-hgvs] ^definition = "Description of the coding (cDNA) sequence change using a valid HGVS-formatted string."
* component[coding-hgvs].value[x] only CodeableConcept
* component[coding-hgvs].value[x] 1..1
* component[coding-hgvs].value[x] from HGVSVS (required) 
* component[coding-hgvs].value[x] ^short = "A valid HGVS-formatted 'c.' string, e.g. NM_005228.5:c.2369C>T."

* component[coding-change-type].code = LNC#48019-4
* component[coding-change-type].code ^short = "48019-4"
* component[coding-change-type] ^short = "Coding DNA Change Type"
* component[coding-change-type] ^definition = "Type of DNA change observed. Convenience property for variants with exact breakpoints, required otherwise."
* component[coding-change-type].value[x] only CodeableConcept
* component[coding-change-type].value[x] ^short = "deletion | insertion | delins | SNV | copy_number_gain | copy_number_loss | ... (many)"
* component[coding-change-type].value[x] 1..1
* component[coding-change-type].value[x] from DNAChangeTypeVS (extensible)
* component[coding-change-type].value[x] ^binding.description = "Concepts in sequence ontology under SO:0002072"

* component[molecular-consequence].code = TbdCodesCS#molecular-consequence
* component[molecular-consequence].code ^short = "molecular-consequence"
* component[molecular-consequence] ^short = "Molecular Consequence"
* component[molecular-consequence] ^definition = "The calculated or observed effect of a variant on its downstream transcript and, if applicable, ensuing protein sequence"
* component[molecular-consequence].value[x] only CodeableConcept
* component[molecular-consequence].value[x] ^short = "stop_lost | stop_gained | inframe_insertion | frameshift_variant | ... (many)"
* component[molecular-consequence].value[x] 1..1
* component[molecular-consequence].value[x] from MolecularConsequenceVS (extensible)
* component[molecular-consequence].value[x] ^binding.description = "Concepts in sequence ontology under SO:0001537."

* component[variation-code].code = LNC#81252-9
* component[variation-code].code ^short = "81252-9"
* component[variation-code] ^short = "Variation Code"
* component[variation-code] ^definition = "Accession number in a variant database such as ClinVar, given for cross-reference."
* component[variation-code].value[x] only CodeableConcept
* component[variation-code].value[x] ^binding.strength = #example
* component[variation-code].value[x] ^binding.description = "Multiple bindings acceptable"
* component[variation-code].value[x] 1..1
* component[variation-code].value[x] ^short = "ClinVar ID or similar"

* component[genomic-hgvs].code = LNC#81290-9
* component[genomic-hgvs].code ^short = "81290-9"
* component[genomic-hgvs] ^short = "Genomic (gDNA) Change - gHGVS"
* component[genomic-hgvs] ^definition = "Description of the genomic (gDNA) sequence change using a valid HGVS-formatted string."
* component[genomic-hgvs].value[x] only CodeableConcept
* component[genomic-hgvs].value[x] 1..1
* component[genomic-hgvs].value[x] ^short = "A valid HGVS-formatted 'g.' string, e.g. NC_000016.9:g.2124200_2138612dup"
* component[genomic-hgvs].value[x] from HGVSVS (required)

* component[genomic-source-class].code = LNC#48002-0
* component[genomic-source-class].code ^short = "48002-0"
* component[genomic-source-class] ^short = "Genomic Source Class"
* component[genomic-source-class] ^definition = "The genomic class of the specimen being analyzed: Germline for inherited genome, somatic for cancer genome, and prenatal for fetal genome."
* component[genomic-source-class].value[x] only CodeableConcept
* component[genomic-source-class].value[x] 1..1
* component[genomic-source-class].value[x] ^short = "Germline | Somatic | Fetal | Likely germline | Likely somatic | Likely fetal | Unknown genomic origin | De novo"
* component[genomic-source-class].value[x] from http://loinc.org/vs/LL378-1 (extensible)

* component[protein-hgvs].code = LNC#48005-3
* component[protein-hgvs].code ^short = "48005-3"
* component[protein-hgvs] ^short = "Protein (Amino Acid) Change - pHGVS"
* component[protein-hgvs] ^definition = "Description of the protein (amino acid) sequence change using a valid HGVS-formatted string. The description of the variant is surrounded in parentheses if it is calculated rather than directly observed."
* component[protein-hgvs].value[x] only CodeableConcept
* component[protein-hgvs].value[x] 1..1
* component[protein-hgvs].value[x] from HGVSVS (required)
* component[protein-hgvs].value[x] ^short = "A valid HGVS-formatted 'p.' string, e.g. NP_000050.2:p.(Asn1836Lys)"

* component[amino-acid-change-type].code = LNC#48006-1
* component[amino-acid-change-type].code ^short = "48006-1"
* component[amino-acid-change-type] ^short = "Amino Acid Change Type"
* component[amino-acid-change-type] ^definition = "Codified type for associated Amino Acid Marker, for convenience."
* component[amino-acid-change-type].value[x] only CodeableConcept
* component[amino-acid-change-type].value[x] 1..1
* component[amino-acid-change-type].value[x] from http://loinc.org/vs/LL380-7 (extensible)
* component[amino-acid-change-type].value[x] ^short = "Wild type | Deletion | Duplication | Frameshift | Initiating Methionine | Insertion | Insertion and Deletion | Missense | Nonsense | Silent"

* component[transcript-ref-seq].code = LNC#51958-7
* component[transcript-ref-seq].code ^short = "51958-7"
* component[transcript-ref-seq] ^short = "Reference Transcript"
* component[transcript-ref-seq] ^definition = "NCBI's RefSeq ('NM_...'), Ensembl ('ENST...'), and LRG ('LRG...' plus 't1' to indicate transcript)"
* component[transcript-ref-seq].value[x] only CodeableConcept
* component[transcript-ref-seq].value[x] ^binding.strength = #example
* component[transcript-ref-seq].value[x] ^binding.description = "Multiple bindings acceptable (NCBI or LRG)"
* component[transcript-ref-seq].value[x] 1..1
* component[transcript-ref-seq].value[x] ^short = "Versioned transcript reference sequence identifier"

* component[genomic-ref-seq].code = LNC#48013-7
* component[genomic-ref-seq].code ^short = "48013-7"
* component[genomic-ref-seq] ^short = "Genomic Reference Sequence"
* component[genomic-ref-seq] ^definition = "ID of the genomic reference sequence, which includes transcribed and non transcribed stretches"
* component[genomic-ref-seq].value[x] only CodeableConcept
* component[genomic-ref-seq].value[x] ^short = "Versioned genomic reference sequence identifier"
* component[genomic-ref-seq].value[x] ^binding.strength = #example
* component[genomic-ref-seq].value[x] ^binding.description = "Multiple bindings acceptable (NCBI or LRG)"
* component[genomic-ref-seq].value[x] 1..1

* component[sample-allelic-frequency].code = LNC#81258-6
* component[sample-allelic-frequency].code ^short = "81258-6"
* component[sample-allelic-frequency] ^short = "Sample Allelic Frequency"
* component[sample-allelic-frequency] ^definition = "The relative frequency of the allele at a given locus in the sample."
* component[sample-allelic-frequency].value[x] only Quantity
* component[sample-allelic-frequency].value[x].system = UCUM
* component[sample-allelic-frequency].value[x] ^short = "Relative frequency in the sample"

* component[allelic-read-depth].code = LNC#82121-5
* component[allelic-read-depth].code ^short = "82121-5"
* component[allelic-read-depth] ^short = "Allelic Read Depth"
* component[allelic-read-depth] ^definition = "Specifies the number of reads that identified the allele in question whether it consists of one or a small sequence of contiguous nucleotides. Different methods and purposes require different numbers of reads to be acceptable. Often >400, sometimes as few as 2-4."
* component[allelic-read-depth].value[x] only Quantity
* component[allelic-read-depth].value[x] ^short = "Unfiltered count of supporting reads"

* component[allelic-state].code = LNC#53034-5
* component[allelic-state].code ^short = "53034-5"
* component[allelic-state] ^short = "Allelic State"
* component[allelic-state] ^definition = "The observed level of occurrence of the variant in the set of chromosomes."
* component[allelic-state].value[x] only CodeableConcept
* component[allelic-state].value[x] 1..1
* component[allelic-state].value[x] ^short = "Heteroplasmic | Homoplasmic | Homozygous | Heterozygous | Hemizygous"
* component[allelic-state].value[x] from http://loinc.org/vs/LL381-5 (extensible)

* component[copy-number].code = LNC#82155-3
* component[copy-number].code ^short = "82155-3"
* component[copy-number] ^short = "Genomic Structural Variant Copy Number"
* component[copy-number] ^definition = "The copy number of the large variant. In HGVS, this is the numeric value following the “X”. It is a unit-less value. Note that a copy number of 1 can imply a deletion."
* component[copy-number].value[x] only Quantity
* component[copy-number].value[x] obeys cnt-3  // MLT: adjust to conform to cnt-3 which is an invariant for Quantity specialization, Count.

* component[ref-allele].code = LNC#69547-8
* component[ref-allele].code ^short = "69547-8"
* component[ref-allele] ^short = "Genomic Ref Allele"
* component[ref-allele] ^definition = "Reference values ('normal') examined within the Reference Sequence."
* component[ref-allele].value[x] only string
* component[ref-allele].value[x] ^short = "Normalized string per the VCF format."

* component[alt-allele].code = LNC#69551-0
* component[alt-allele].code ^short = "69551-0"
* component[alt-allele] ^short = "Genomic Alt Allele"
* component[alt-allele] ^definition = "The genomic alternate allele is the contiguous segment of DNA in the test sample that differs from the reference allele at the same location and thus defines a variant."
* component[alt-allele].value[x] only string
* component[alt-allele].value[x] ^short = "Normalized string per the VCF format."

* component[coordinate-system].code = LNC#92822-6
* component[coordinate-system].code ^short = "92822-6"
* component[coordinate-system] ^short = "Coordinate System"
* component[coordinate-system] ^definition = "These are different ways of identifying nucleotides or amino acids within a sequence. In the 1-based system, the first unit of the polymer (e.g. the first nucleotide) is counted as number 1. In the 0-based system, the number 0 designates the location before the first nucleotide. Different databases and file types may use different systems."
* component[coordinate-system].value[x] only CodeableConcept
* component[coordinate-system].value[x] 1..1
* component[coordinate-system].value[x] ^short = "0-based interval counting | 0-based character counting | 1-based character counting"
* component[coordinate-system].value[x] from http://loinc.org/vs/LL5323-2 (extensible)

* component[exact-start-end].code = LNC#81254-5
* component[exact-start-end].code ^short = "81254-5"
* component[exact-start-end] ^short = "Exact Start-End"
* component[exact-start-end] ^definition = "The exact integer-based genomic coordinates of the start and end of the variant region."
* component[exact-start-end].value[x] only Range
* component[exact-start-end].value[x] ^short = "Range in question. 'High' can be omitted for single nucleotide variants."

* component[outer-start-end].code = LNC#81301-4
* component[outer-start-end].code ^short = "81301-4"
* component[outer-start-end] ^short = "Outer Start-End"
* component[outer-start-end] ^definition = "The genomic coordinates of the widest genomic range in which the variant might reside. Used when the exact boundaries of the variant are not clear."
* component[outer-start-end].value[x] only Range
* component[outer-start-end].value[x] ^short = "Imprecise variant outer-bounding range"

* component[inner-start-end].code = LNC#81302-2
* component[inner-start-end].code ^short = "81302-2"
* component[inner-start-end] ^short = "Inner Start-End"
* component[inner-start-end] ^definition = "The genomic coordinates of the narrowest genomic range in which the variant might reside. Used when the exact boundaries of the variant are not clear."
* component[inner-start-end].value[x] only Range
* component[inner-start-end].value[x] ^short = "Imprecise variant inner-bounding range"

* component[cytogenomic-nomenclature].code = LNC#81291-7
* component[cytogenomic-nomenclature].code ^short = "81291-7"
* component[cytogenomic-nomenclature] ^short = "Cytogenomic Nomenclature (ISCN)"
* component[cytogenomic-nomenclature] ^definition = "Fully describes a variant with a single code. Typically a large variant such as a mosaic, abnormal chromosome numbers, etc."
* component[cytogenomic-nomenclature].value[x] only CodeableConcept
* component[cytogenomic-nomenclature].value[x] ^binding.strength = #example
* component[cytogenomic-nomenclature].value[x] ^binding.description = "Binding not yet defined"
* component[cytogenomic-nomenclature].value[x] 1..1

* component[variant-inheritance].code = TbdCodesCS#variant-inheritance
* component[variant-inheritance].code ^short = "variant-inheritance"
* component[variant-inheritance] ^short = "Variant Inheritance"
* component[variant-inheritance] ^definition = "By which parent the variant was inherited in the patient, if known."
* component[variant-inheritance].value[x] only CodeableConcept
* component[variant-inheritance].value[x] 1..1
* component[variant-inheritance].value[x] ^short = "Maternal | Paternal | Unknown"
* component[variant-inheritance].value[x] from VariantInheritanceVS (extensible)

* component[chromosome-identifier].code = LNC#48000-4
* component[chromosome-identifier].code ^short = "48000-4"
* component[chromosome-identifier] ^short = "Chromosome Identifier"
* component[chromosome-identifier] ^definition = "An indicator, enumerated in humans by numbers 1-22, X, and Y, representing the chromosome on which the variant is located."
* component[chromosome-identifier].value[x] only CodeableConcept
* component[chromosome-identifier].value[x] 1..1
* component[chromosome-identifier].value[x] ^short = "Chromosome 1 | Chromosome 2 | ... | Chromosome 22 | Chromosome X | Chromosome Y"
* component[chromosome-identifier].value[x] from http://loinc.org/vs/LL2938-0 (required)

* component[variant-confidence-status].code = TbdCodesCS#variant-confidence-status
* component[variant-confidence-status].code ^short = "variant-confidence-status"
* component[variant-confidence-status] ^short = "Variant Confidence Status"
* component[variant-confidence-status] ^definition = "A code that represents the confidence of a true positive variant call."
* component[variant-confidence-status].value[x] only CodeableConcept
* component[variant-confidence-status].value[x] 1..1
* component[variant-confidence-status].value[x] ^short = "High | Intermediate | Low"
* component[variant-confidence-status].value[x] from VariantConfidenceStatusVS (required)

Profile:        RegionStudied
Parent:         GenomicsBase
Id:             region-studied
Title:          "Region Studied"
Description:    "The Region Studied profile is used to assert actual regions studied for the performed test(s). Intended coverage areas may differ from actual coverage areas (e.g. due to technical limitations during test performance)."
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* . ^short = "Region Studied"
* code = LNC#53041-0
* code ^short = "53041-0"
* value[x] 0..0
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
* component contains
    gene-studied 0..1 and 
    gene-mutations 0..1 and
    region-description 0..1 and
    region-coverage 0..1 and
    ranges-examined 0..* and
    coordinate-system 0..1 and 
    genomic-ref-seq 0..1 and
    uncallable-regions 0..*
* component[gene-studied] ^short = "Gene Studied"
* component[gene-studied] ^definition = "The gene(s) on which the variant is located."
* component[gene-studied].code = LNC#48018-6
* component[gene-studied].code ^short = "48018-6"
* component[gene-studied].value[x] only CodeableConcept
* component[gene-studied].value[x] ^short = "The HGNC gene symbol is to be used as display text and the HGNC gene ID used as the code. If no HGNC code issued for this gene yet, NCBI gene IDs SHALL be used."
* component[gene-studied].value[x] 1..1
* component[gene-studied].value[x] from HGNCVS (extensible)

* component[gene-mutations] ^short = "Gene Mutations ID"
* component[gene-mutations] ^definition = "Gene mutations that were tested for."
* component[gene-mutations].code = LNC#36908-2
* component[gene-mutations].code ^short = "36908-2"
* component[gene-mutations].value[x] only CodeableConcept
* component[gene-mutations].value[x] 1..1
* component[gene-mutations].value[x] from HGVSVS (required)

* component[region-description] ^short = "Region Description"
* component[region-description] ^definition = "Description of region examined."
* component[region-description].code = LNC#81293-3
* component[region-description].code ^short = "81293-3"
* component[region-description].value[x] only string

* component[region-coverage] ^short = "Region Coverage"
* component[region-coverage] ^definition = "When sequencing, what % of the region was covered."
* component[region-coverage].code = TbdCodesCS#region-coverage
* component[region-coverage].code ^short = "region-coverage"
* component[region-coverage].value[x] only Quantity

* component[ranges-examined] ^short = "Range(s) of DNA sequence examined"
* component[ranges-examined] ^definition = "This term is used to report the region(s) of interest for sequencing studies as one or more numeric ranges that identify the parts of the reference sequence that are sequenced. These can be recorded as one or more HL7 numeric ranges using repeat delimiters to seperate multiple such ranges."
* component[ranges-examined].code = LNC#51959-5
* component[ranges-examined].code ^short = "51959-5"
* component[ranges-examined].value[x] only Range

* component[coordinate-system].code = LNC#92822-6
* component[coordinate-system].code ^short = "92822-6"
* component[coordinate-system] ^short = "Coordinate System"
* component[coordinate-system] ^definition = "These are different ways of identifying nucleotides or amino acids within a sequence. In the 1-based system, the first unit of the polymer (e.g. the first nucleotide) is counted as number 1. In the 0-based system, the number 0 designates the location before the first nucleotide. Different databases and file types may use different systems."
* component[coordinate-system].value[x] only CodeableConcept
* component[coordinate-system].value[x] 1..1
* component[coordinate-system].value[x] ^short = "0-based interval counting | 0-based character counting | 1-based character counting"
* component[coordinate-system].value[x] from http://loinc.org/vs/LL5323-2 (extensible)

* component[genomic-ref-seq].code = LNC#48013-7
* component[genomic-ref-seq].code ^short = "48013-7"
* component[genomic-ref-seq] ^short = "Genomic Reference Sequence"
* component[genomic-ref-seq] ^definition = "ID of the genomic reference sequence, which includes transcribed and non transcribed stretches."
* component[genomic-ref-seq].value[x] only CodeableConcept
* component[genomic-ref-seq].value[x] ^short = "Versioned genomic reference sequence identifier."
* component[genomic-ref-seq].value[x] ^binding.strength = #example
* component[genomic-ref-seq].value[x] ^binding.description = "Multiple bindings acceptable (NCBI or LRG)"
* component[genomic-ref-seq].value[x] 1..1

* component[uncallable-regions] ^short = "Uncallable Sub-regions"
* component[uncallable-regions] ^definition = "Contiguous region(s) where a call was not made."
* component[uncallable-regions].code = TbdCodesCS#uncallable-regions
* component[uncallable-regions].code ^short = "uncallable-regions"
* component[uncallable-regions].value[x] only Range
* component[uncallable-regions].value[x] ^short = "Must be inside the range given by 'ranges examined' in the given reference sequence and coordinate system."

Profile:        MSI
Parent:         GenomicsBase
Id:             msi
Title:          "Microsatellite Instability"
Description:    "Microsatellite Instability (MSI) is the condition of genetic hypermutability (predisposition to mutation) that results from impaired DNA mismatch repair (MMR)."
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* . ^short = "Microsatellite Instability"
* code = LNC#81695-9 // Mutations/Megabase [# Ratio] in Tumor
* code ^short = "81695-9"
* valueCodeableConcept from http://loinc.org/vs/LL3994-2 (extensible)
* valueCodeableConcept ^short = "Stable | MSI-L | MSI-H | Indeterminate"

Profile:        Haplotype
Parent:         GenomicFinding
Id:             haplotype
Title:          "Haplotype"
Description:    "Assertion of a particular haplotype on the basis of one or more variants."
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* . ^short = "Haplotype"
* code = LNC#84414-2
* code ^short = "84414-2"
* value[x] only CodeableConcept
* value[x] ^binding.strength = #example
* value[x] ^binding.description = "Binding not yet standardized"
* value[x] 1..1
* value[x] ^short = "Haplotype name"
* method from http://loinc.org/vs/LL4050-2 (extensible)
* method ^short = "Directly measured | Family DNA | Family history | Inferred from population data"
* derivedFrom ^slicing.discriminator.type = #profile
* derivedFrom ^slicing.discriminator.path = "resolve()"
* derivedFrom ^slicing.rules = #open
* derivedFrom ^slicing.description = "Slice based on the reference profile pattern"
* derivedFrom contains Haplotype 0..* and 
    Variant 0..*
* derivedFrom[Haplotype] only Reference(Haplotype)
* derivedFrom[Haplotype] ^short = "Haplotype this haplotype is derived from"
* derivedFrom[Variant] only Reference(Variant)
* derivedFrom[Variant] ^short = "Variant this haplotype is derived from"

Profile:        Genotype
Parent:         GenomicFinding
Id:             genotype
Title:          "Genotype"
Description:    "Assertion of a particular genotype on the basis of one or more variants or haplotypes."
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* . ^short = "Genotype"
* code = LNC#84413-4 // Genotype name
* code ^short = "84413-4"
* value[x] only CodeableConcept
* value[x] ^binding.strength = #example
* value[x] ^binding.description = "Binding not yet defined"
* value[x] 1..1
* value[x] ^short = "Genotype name"
* derivedFrom ^slicing.discriminator.type = #profile
* derivedFrom ^slicing.discriminator.path = "resolve()"
* derivedFrom ^slicing.rules = #open
* derivedFrom ^slicing.description = "Slice based on the reference profile pattern"
* derivedFrom contains Haplotype 0..* and 
    Variant 0..*
* derivedFrom[Haplotype] only Reference(Haplotype)
* derivedFrom[Haplotype] ^short = "Haplotype this genotype is derived from"
* derivedFrom[Variant] only Reference(Variant)
* derivedFrom[Variant] ^short = "Variant this genotype is derived from"
