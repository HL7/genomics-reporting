Profile:        GenomicFinding
Parent:         GenomicBase
Id:             finding
Title:          "Genomic Finding"
Description:    "Properties common to genetic findings whose results are expressed as computable discrete elements (e.g. genotypes, haplotypes, variants, etc.)."
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* ^abstract = true
// * component ^slicing.discriminator.type = #value
// * component ^slicing.discriminator.path = "code"
// * component ^slicing.rules = #open
// * component ^slicing.description = "Slice based on the component.code pattern"
* component contains gene-studied 0..* and 
    cytogenetic-location 0..* and 
    reference-sequence-assembly 0..* and
    chromosome-identifier 0..*

* component[gene-studied] ^short = "Gene Studied"
* component[gene-studied] ^definition = "The gene(s) on which the variant is located."
* component[gene-studied].code = $LNC#48018-6
* component[gene-studied].code ^short = "48018-6"
* component[gene-studied].value[x] only CodeableConcept
* component[gene-studied].value[x] ^short = "The HGNC gene symbol is to be used as display text and the HGNC gene ID used as the code. If no HGNC code issued for this gene yet, NCBI gene IDs SHALL be used."
* component[gene-studied].value[x] 1..1
* component[gene-studied].value[x] from HGNCVS (extensible)

* component[cytogenetic-location] ^short = "Cytogenetic (Chromosome) Location"
* component[cytogenetic-location] ^definition = "The relevant chromosomal region. The combination of numbers and letters provide a genetic 'address'."
* component[cytogenetic-location].code = $LNC#48001-2
* component[cytogenetic-location].code ^short = "48001-2"
* component[cytogenetic-location].value[x] only CodeableConcept
* component[cytogenetic-location].value[x] 1..1
* component[cytogenetic-location].value[x] ^short = "Example: 1q21.1"

* component[reference-sequence-assembly] ^short = "Human Reference Sequence Assembly"
* component[reference-sequence-assembly] ^definition = "The reference genome/assembly used in this analysis."
* component[reference-sequence-assembly].code = $LNC#62374-4
* component[reference-sequence-assembly].code ^short = "62374-4"
* component[reference-sequence-assembly].value[x] only CodeableConcept
* component[reference-sequence-assembly].value[x] 1..1
* component[reference-sequence-assembly].value[x] ^short = "GRCh37 | GRCh38 | ..."
* component[reference-sequence-assembly].value[x] from http://loinc.org/vs/LL1040-6 (extensible)

* component[chromosome-identifier].code = $LNC#48000-4
* component[chromosome-identifier].code ^short = "48000-4"
* component[chromosome-identifier] ^short = "Chromosome Identifier"
* component[chromosome-identifier] ^definition = "An indicator, enumerated in humans by numbers 1-22, X, and Y, representing the chromosome on which the finding is located."
* component[chromosome-identifier].value[x] only CodeableConcept
* component[chromosome-identifier].value[x] 1..1
* component[chromosome-identifier].value[x] ^short = "Chromosome 1 | Chromosome 2 | ... | Chromosome 22 | Chromosome X | Chromosome Y"
* component[chromosome-identifier].value[x] from http://loinc.org/vs/LL2938-0 (required)

Profile:        Variant
Parent:         GenomicFinding
Id:             variant
Title:          "Variant"
Description:    "Details about a set of changes in the tested sample compared to a reference sequence."
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* . ^short = "Variant"
* code = $LNC#69548-6
* code ^short = "69548-6"
* method from http://loinc.org/vs/LL4048-6 (extensible)
* method ^short = "Sequencing | SNP array | PCR | Computational analysis | ..."
* valueCodeableConcept from http://loinc.org/vs/LL1971-2 (required)
* valueCodeableConcept ^short = "Indeterminate | No call | Present | Absent."
* valueCodeableConcept ^definition = "The presence or absence of the variant described in the components. If not searching for specific variations and merely reporting what's found, the profile's value should be set to 'Present'."
* valueCodeableConcept ^comment = "See [here](sequencing.html#variant-assessment) for usage guidance."
// * component ^slicing.discriminator.type = #value
// * component ^slicing.discriminator.path = "code"
// * component ^slicing.rules = #open
// * component ^slicing.description = "Slice based on the component.code pattern"
* component contains
    representative-coding-hgvs 0..1 and
    genomic-hgvs 0..1 and
    cytogenomic-nomenclature 0..1 and
    genomic-ref-seq 0..1 and
    representative-protein-ref-seq 0..1 and
    representative-transcript-ref-seq 0..1 and
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
    variant-inheritance-basis 0..1 and
    variation-code 0..* and
    representative-protein-hgvs 0..1 and
//  amino-acid-change-type 0..1 and
//  molecular-consequence 0..1 and
    copy-number 0..1 and
    variant-confidence-status 0..1 and
    repeat-motif 0..* and
    repeat-number 0..*

* component[representative-coding-hgvs].code = $LNC#48004-6
* component[representative-coding-hgvs].code ^short = "48004-6"
* component[representative-coding-hgvs] ^short = "DNA change (c.HGVS)"
* component[representative-coding-hgvs] ^definition = "Human Genome Variation Society (HGVS) nomenclature for a single DNA marker. The use of the nomenclature must be extended to describe non-variations (aka. wild types) see samples for wild type examples."
* component[representative-coding-hgvs].value[x] only CodeableConcept
* component[representative-coding-hgvs].value[x] 1..1
* component[representative-coding-hgvs].value[x] from HGVSVS (required) 
* component[representative-coding-hgvs].value[x] ^short = "A valid HGVS-formatted 'c.' string, e.g. NM_005228.5:c.2369C>T."

* component[coding-change-type].code = $LNC#48019-4
* component[coding-change-type].code ^short = "48019-4"
* component[coding-change-type] ^short = "Coding DNA Change Type"
* component[coding-change-type] ^definition = "Type of DNA change observed. Convenience property for variants with exact breakpoints, required otherwise."
* component[coding-change-type].value[x] only CodeableConcept
* component[coding-change-type].value[x] ^short = "deletion | insertion | delins | SNV | copy_number_gain | copy_number_loss | ... (many)"
* component[coding-change-type].value[x] 1..1
* component[coding-change-type].value[x] from DNAChangeTypeVS (extensible)
* component[coding-change-type].value[x] ^binding.description = "Concepts in sequence ontology under SO:0002072"

* component[variation-code].code = $LNC#81252-9
* component[variation-code].code ^short = "81252-9"
* component[variation-code] ^short = "Variation Code"
* component[variation-code] ^definition = "Accession number in a variant database such as ClinVar, given for cross-reference."
* component[variation-code].value[x] only CodeableConcept
* component[variation-code].value[x] ^binding.strength = #example
* component[variation-code].value[x] ^binding.description = "Multiple bindings acceptable"
* component[variation-code].value[x] 1..1
* component[variation-code].value[x] ^short = "ClinVar ID or similar"

* component[genomic-hgvs].code = $LNC#81290-9
* component[genomic-hgvs].code ^short = "81290-9"
* component[genomic-hgvs] ^short = "Genomic (gDNA) Change - gHGVS"
* component[genomic-hgvs] ^definition = "Description of the genomic (gDNA) sequence change using a valid HGVS-formatted string."
* component[genomic-hgvs].value[x] only CodeableConcept
* component[genomic-hgvs].value[x] 1..1
* component[genomic-hgvs].value[x] ^short = "A valid HGVS-formatted 'g.' string, e.g. NC_000016.9:g.2124200_2138612dup"
* component[genomic-hgvs].value[x] from HGVSVS (required)

* component[genomic-source-class].code = $LNC#48002-0
* component[genomic-source-class].code ^short = "48002-0"
* component[genomic-source-class] ^short = "Genomic Source Class"
* component[genomic-source-class] ^definition = "The genomic class of the specimen being analyzed: Germline for inherited genome, somatic for cancer genome, and prenatal for fetal genome."
* component[genomic-source-class].value[x] only CodeableConcept
* component[genomic-source-class].value[x] 1..1
* component[genomic-source-class].value[x] ^short = "Germline | Somatic | Fetal | Likely germline | Likely somatic | Likely fetal | Unknown genomic origin | De novo"
* component[genomic-source-class].value[x] from http://loinc.org/vs/LL378-1 (extensible)

* component[genomic-ref-seq].code = $LNC#48013-7
* component[genomic-ref-seq].code ^short = "48013-7"
* component[genomic-ref-seq] ^short = "Genomic Reference Sequence"
* component[genomic-ref-seq] ^definition = "ID of the genomic reference sequence, which includes transcribed and non transcribed stretches"
* component[genomic-ref-seq].value[x] only CodeableConcept
* component[genomic-ref-seq].value[x] ^short = "Versioned genomic reference sequence identifier"
* component[genomic-ref-seq].value[x] ^binding.strength = #example
* component[genomic-ref-seq].value[x] ^binding.description = "Multiple bindings acceptable (NCBI or LRG)"
* component[genomic-ref-seq].value[x] 1..1

* component[representative-protein-ref-seq].code = TbdCodesCS#protein-ref-seq
* component[representative-protein-ref-seq].code ^short = "protein-ref-seq"
* component[representative-protein-ref-seq] ^short = "Protein Reference Sequence"
* component[representative-protein-ref-seq] ^definition = "ID of the protein reference sequence, which includes transcribed and non transcribed stretches. It covers the entire protein described."
* component[representative-protein-ref-seq].value[x] only CodeableConcept
* component[representative-protein-ref-seq].value[x] ^short = "Versioned protein reference sequence identifier"
* component[representative-protein-ref-seq].value[x] ^binding.strength = #example
* component[representative-protein-ref-seq].value[x] ^binding.description = "Multiple bindings acceptable (NCBI or LRG)"
* component[representative-protein-ref-seq].value[x] 1..1

* component[representative-transcript-ref-seq].code = $LNC#51958-7
* component[representative-transcript-ref-seq].code ^short = "51958-7"
* component[representative-transcript-ref-seq] ^short = "Reference Transcript"
* component[representative-transcript-ref-seq] ^definition = "NCBI's RefSeq ('NM_...'), Ensembl ('ENST...'), and LRG ('LRG...' plus 't1' to indicate transcript)"
* component[representative-transcript-ref-seq].value[x] only CodeableConcept
* component[representative-transcript-ref-seq].value[x] ^binding.strength = #example
* component[representative-transcript-ref-seq].value[x] ^binding.description = "Multiple bindings acceptable (NCBI or LRG)"
* component[representative-transcript-ref-seq].value[x] 1..1
* component[representative-transcript-ref-seq].value[x] ^short = "Versioned transcript reference sequence identifier"

* component[sample-allelic-frequency].code = $LNC#81258-6
* component[sample-allelic-frequency].code ^short = "81258-6"
* component[sample-allelic-frequency] ^short = "Sample Allelic Frequency"
* component[sample-allelic-frequency] ^definition = "The relative frequency of the allele at a given locus in the sample."
* component[sample-allelic-frequency].value[x] only Quantity
* component[sample-allelic-frequency].value[x].system = $UCUM
* component[sample-allelic-frequency].value[x] ^short = "Relative frequency in the sample"

* component[allelic-read-depth].code = $LNC#82121-5
* component[allelic-read-depth].code ^short = "82121-5"
* component[allelic-read-depth] ^short = "Allelic Read Depth"
* component[allelic-read-depth] ^definition = "Specifies the number of reads that identified the allele in question whether it consists of one or a small sequence of contiguous nucleotides. Different methods and purposes require different numbers of reads to be acceptable. Often >400, sometimes as few as 2-4."
* component[allelic-read-depth] ^comment = "See [here](sequencing.html#variant-assessment) for usage guidance."
* component[allelic-read-depth].value[x] only Quantity
* component[allelic-read-depth].value[x] ^short = "Unfiltered count of supporting reads"

* component[allelic-state].code = $LNC#53034-5
* component[allelic-state].code ^short = "53034-5"
* component[allelic-state] ^short = "Allelic State"
* component[allelic-state] ^definition = "The observed level of occurrence of the variant in the set of chromosomes."
* component[allelic-state].value[x] only CodeableConcept
* component[allelic-state].value[x] 1..1
* component[allelic-state].value[x] ^short = "Heteroplasmic | Homoplasmic | Homozygous | Heterozygous | Hemizygous"
* component[allelic-state].value[x] from http://loinc.org/vs/LL381-5 (extensible)

* component[copy-number].code = $LNC#82155-3
* component[copy-number].code ^short = "82155-3"
* component[copy-number] ^short = "Genomic Structural Variant Copy Number"
* component[copy-number] ^definition = "The copy number of the large variant. In HGVS, this is the numeric value following the “X”. It is a unit-less value. If the value determined by the assay is not a whole number, a range or decimal number can be specified. Note that a copy number of 1 can imply a deletion."
* component[copy-number] ^requirements = "There SHALL be a code with a value of '1' if there is a value. If system is present, it SHALL be UCUM."
* component[copy-number] ^comment = """
Copy number variants are often described with a single copy number value. However, due to the nature of assays, such as qPCR and microarray, it can be difficult to assign an exact copy number. Therefore, labs sometimes report a range instead of an exact copy number. They may alternatively choose to report decimal numbers, even if whole numbers are biologically correct.

In general, it can be difficult to estimate a copy number from measurements taken on a heterogenous population of cells, such as a tumor. As indicated in the ISCN 2020 specifications, it is appropriate to express the measurements using a range. Furthermore, regardless of cell population, many assays use fluorescent probes to detect copy number. These testing methodologies do not always provide an exact, discrete value for this data point.
"""
* component[copy-number].value[x] only Quantity or Range

* component[ref-allele].code = $LNC#69547-8
* component[ref-allele].code ^short = "69547-8"
* component[ref-allele] ^short = "Genomic Ref Allele"
* component[ref-allele] ^definition = "Reference values ('normal') examined within the Reference Sequence."
* component[ref-allele].value[x] only string
* component[ref-allele].value[x] ^short = "Normalized string per the VCF format."

* component[alt-allele].code = $LNC#69551-0
* component[alt-allele].code ^short = "69551-0"
* component[alt-allele] ^short = "Genomic Alt Allele"
* component[alt-allele] ^definition = "The genomic alternate allele is the contiguous segment of DNA in the test sample that differs from the reference allele at the same location and thus defines a variant."
* component[alt-allele].value[x] only string
* component[alt-allele].value[x] ^short = "Normalized string per the VCF format."

* component[coordinate-system].code = $LNC#92822-6
* component[coordinate-system].code ^short = "92822-6"
* component[coordinate-system] ^short = "Coordinate System"
* component[coordinate-system] ^definition = "These are different ways of identifying nucleotides or amino acids within a sequence. In the 1-based system, the first unit of the polymer (e.g. the first nucleotide) is counted as number 1. In the 0-based system, the number 0 designates the location before the first nucleotide. Different databases and file types may use different systems."
* component[coordinate-system].value[x] only CodeableConcept
* component[coordinate-system].value[x] 1..1
* component[coordinate-system].value[x] ^short = "0-based interval counting | 0-based character counting | 1-based character counting"
* component[coordinate-system].value[x] from http://loinc.org/vs/LL5323-2 (extensible)

* component[exact-start-end].code = $LNC#81254-5
* component[exact-start-end].code ^short = "81254-5"
* component[exact-start-end] ^short = "Exact Start-End"
* component[exact-start-end] ^definition = "The exact integer-based genomic coordinates of the start and end of the variant region."
* component[exact-start-end].value[x] only Range
* component[exact-start-end].value[x] ^short = "Range in question. 'High' can be omitted for single nucleotide variants."

* component[outer-start-end].code = $LNC#81301-4
* component[outer-start-end].code ^short = "81301-4"
* component[outer-start-end] ^short = "Outer Start-End"
* component[outer-start-end] ^definition = "The genomic coordinates of the widest genomic range in which the variant might reside. Used when the exact boundaries of the variant are not clear."
* component[outer-start-end].value[x] only Range
* component[outer-start-end].value[x] ^short = "Imprecise variant outer-bounding range"

* component[inner-start-end].code = $LNC#81302-2
* component[inner-start-end].code ^short = "81302-2"
* component[inner-start-end] ^short = "Inner Start-End"
* component[inner-start-end] ^definition = "The genomic coordinates of the narrowest genomic range in which the variant might reside. Used when the exact boundaries of the variant are not clear."
* component[inner-start-end].value[x] only Range
* component[inner-start-end].value[x] ^short = "Imprecise variant inner-bounding range"

* component[cytogenomic-nomenclature].code = $LNC#81291-7
* component[cytogenomic-nomenclature].code ^short = "81291-7"
* component[cytogenomic-nomenclature] ^short = "Cytogenomic Nomenclature (ISCN)"
* component[cytogenomic-nomenclature] ^definition = "Fully describes a variant with a single code. Typically a large variant such as a mosaic, abnormal chromosome numbers, etc."
* component[cytogenomic-nomenclature].value[x] only CodeableConcept
* component[cytogenomic-nomenclature].value[x] ^binding.strength = #example
* component[cytogenomic-nomenclature].value[x] ^binding.description = "Binding not yet defined"
* component[cytogenomic-nomenclature].value[x] 1..1

* component[variant-inheritance].code = $LNC#94186-4
* component[variant-inheritance].code ^short = "94186-4"
* component[variant-inheritance] ^short = "Origin of germline genetic variant"
* component[variant-inheritance] ^definition = "The source or inheritance of a specific germline variation found in an individual patient."
* component[variant-inheritance].value[x] only CodeableConcept
* component[variant-inheritance].value[x] 1..1
* component[variant-inheritance].value[x] ^short = "Maternal | Paternal | Unknown"
* component[variant-inheritance].value[x] from http://loinc.org/vs/LL5489-1 (extensible)

* component[variant-inheritance-basis].code = $LNC#82309-6
* component[variant-inheritance-basis].code ^short = "Basis for allelic phase"
* component[variant-inheritance-basis] ^short = "Evidential basis for variant inheritance"
* component[variant-inheritance-basis] ^definition = "The method by which the variant inheritance is determined."
* component[variant-inheritance-basis].value[x] only CodeableConcept
* component[variant-inheritance-basis].value[x] 1..1
* component[variant-inheritance-basis].value[x] ^short = "Directly measured | Family DNA | Family history | Inferred from population data"
* component[variant-inheritance-basis].value[x] from http://loinc.org/vs/LL4050-2 (extensible)

* component[representative-protein-hgvs].code = $LNC#48005-3
* component[representative-protein-hgvs].code ^short = "48005-3"
* component[representative-protein-hgvs] ^short = "Protein (Amino Acid) Change - pHGVS"
* component[representative-protein-hgvs] ^definition = "Description of the protein (amino acid) sequence change using a valid HGVS-formatted string. The description of the variant is surrounded in parentheses if it is calculated rather than directly observed."
* component[representative-protein-hgvs].value[x] only CodeableConcept
* component[representative-protein-hgvs].value[x] 1..1
* component[representative-protein-hgvs].value[x] from HGVSVS (required)
* component[representative-protein-hgvs].value[x] ^short = "A valid HGVS-formatted 'p.' string, e.g. NP_000050.2:p.(Asn1836Lys)"

* component[variant-confidence-status].code = TbdCodesCS#variant-confidence-status
* component[variant-confidence-status].code ^short = "variant-confidence-status"
* component[variant-confidence-status] ^short = "Variant Confidence Status"
* component[variant-confidence-status] ^definition = "A code that represents the confidence of a true positive variant call."
* component[variant-confidence-status] ^comment = "See [here](sequencing.html#variant-assessment) for usage guidance."
* component[variant-confidence-status].value[x] only CodeableConcept
* component[variant-confidence-status].value[x] 1..1
* component[variant-confidence-status].value[x] ^short = "High | Intermediate | Low"
* component[variant-confidence-status].value[x] from VariantConfidenceStatusVS (required)

* component[repeat-motif].code = TbdCodesCS#repeat-motif
* component[repeat-motif].code ^short = "repeat-motif"
* component[repeat-motif] ^short = "Repeat Motif"
* component[repeat-motif] ^definition = "Nucleotides of a repeat expansion motif."
* component[repeat-motif].value[x] only string
* component[repeat-motif].value[x] 1..1
* component[repeat-motif].value[x] ^short = "CAG"
* component[repeat-motif].extension contains RepeatMotifOrder named repeat-motif-order 0..1 
* component[repeat-motif].extension[RepeatMotifOrder] ^requirements = "The value must be a natural number starting from 1 and increasing sequentially"
* component[repeat-motif].extension[RepeatMotifOrder] ^comment = "If there are multiple repeat expansion pairs, this must be used both to indicate the sequence position of a given repeat-motif and repeat-number pair and to group the related components together. Components with the same extension value describe the same motif."

* component[repeat-number].code = TbdCodesCS#repeat-number
* component[repeat-number].code ^short = "repeat-number"
* component[repeat-number] ^short = "Repeat Number"
* component[repeat-number] ^definition = "Number of repeats of a repeat expansion."
* component[repeat-number].value[x] only Quantity
* component[repeat-number].value[x] 1..1
* component[repeat-number].value[x] ^short = "40"
* component[repeat-number].extension contains RepeatMotifOrder named repeat-motif-order 0..1
* component[repeat-number].extension[RepeatMotifOrder] ^requirements = "The value must be a natural number starting from 1 and increasing sequentially"
* component[repeat-number].extension[RepeatMotifOrder] ^comment = "If there are multiple repeat expansion pairs, this must be used both to indicate the sequence position of a given repeat-motif and repeat-number pair and to group the related components together. Components with the same extension value describe the same motif."

Profile:        Haplotype
Parent:         GenomicFinding
Id:             haplotype
Title:          "Haplotype"
Description:    "Assertion of a particular haplotype on the basis of one or more variants."
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* . ^short = "Haplotype"
* code = $LNC#84414-2
* code ^short = "84414-2"
* value[x] only CodeableConcept
* value[x] ^binding.strength = #example
* value[x] ^binding.description = "Binding not yet standardized"
* value[x] 1..1
* value[x] ^short = "Haplotype name"
* method from http://loinc.org/vs/LL4050-2 (extensible)
* method ^short = "Directly measured | Family DNA | Family history | Inferred from population data"
// * derivedFrom ^slicing.discriminator.type = #profile
// * derivedFrom ^slicing.discriminator.path = "resolve()"
// * derivedFrom ^slicing.rules = #open
// * derivedFrom ^slicing.description = "Slice based on the reference profile pattern"
* derivedFrom contains 
        haplotype 0..* 
    and variant 0..* 
    and molecular-sequence 0..*
* derivedFrom[haplotype] only Reference(Haplotype)
* derivedFrom[haplotype] ^short = "Haplotype this haplotype is derived from"
* derivedFrom[variant] only Reference(Variant)
* derivedFrom[variant] ^short = "Variant this haplotype is derived from"
* derivedFrom[molecular-sequence] only Reference(MolecularSequence)
* derivedFrom[molecular-sequence] ^short = "MolecularSequence this haplotype is derived from"

Profile:        Genotype
Parent:         GenomicFinding
Id:             genotype
Title:          "Genotype"
Description:    "Assertion of a particular genotype on the basis of one or more variants or haplotypes."
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* . ^short = "Genotype"
* code = $LNC#84413-4 // Genotype name
* code ^short = "84413-4"
* value[x] only CodeableConcept
* value[x] ^binding.strength = #example
* value[x] ^binding.description = "Binding not yet defined"
* value[x] 1..1
* value[x] ^short = "Genotype name"
// * derivedFrom ^slicing.discriminator.type = #profile
// * derivedFrom ^slicing.discriminator.path = "resolve()"
// * derivedFrom ^slicing.rules = #open
// * derivedFrom ^slicing.description = "Slice based on the reference profile pattern"
* derivedFrom contains 
        haplotype 0..* 
    and variant 0..*
    and molecular-sequence 0..*
* derivedFrom[haplotype] only Reference(Haplotype)
* derivedFrom[haplotype] ^short = "Haplotype this genotype is derived from"
* derivedFrom[variant] only Reference(Variant)
* derivedFrom[variant] ^short = "Variant this genotype is derived from"
* derivedFrom[molecular-sequence] only Reference(MolecularSequence)
* derivedFrom[molecular-sequence] ^short = "MolecularSequence this genotype is derived from"

Profile:        MolecularBiomarker
Parent:         Observation
Id:             molecular-biomarker
Title:          "Molecular Biomarker"
Description:    "This profile is used to represent laboratory measurements of human inherent substances such as gene products, antigens and antibodies, and complex chemicals that result from post-translational processing of multi-gene products."
* code from MolecularBiomarkerCodeVS (example)
* code ^short = "Code for the biomarker"
* code ^definition = "The code is used to represent the biomarker - laboratory measurements of human inherent substances such as gene products, antigens and antibodies, and complex chemicals that result from post-translational processing of multi-gene products."
* derivedFrom ^slicing.discriminator.type = #profile
* derivedFrom ^slicing.discriminator.path = "resolve()"
* derivedFrom ^slicing.rules = #open
* derivedFrom ^slicing.description = "Slice based on the reference profile pattern"
* derivedFrom 0..*
* derivedFrom contains variant 0..* and
    genotype 0..* and
    haplotype 0..*
* derivedFrom[variant] only Reference(Variant)
* derivedFrom[variant] ^short = "Variant the biomarker is derived from"
* derivedFrom[genotype] only Reference(Genotype)
* derivedFrom[genotype] ^short = "Genotype the biomarker is derived from"
* derivedFrom[haplotype] only Reference(Haplotype)
* derivedFrom[haplotype] ^short = "Haplotype the biomarker is derived from"
* category 2..*
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "coding"
* category ^slicing.rules = #open
* category ^slicing.description = "Slice based on the category.code pattern"
* category contains 
     labCategory 1..1 and
     mbCategory 1..1 and
     geCategory 0..1
* category[labCategory].coding 1..1
* category[labCategory].coding = $OBSCAT#laboratory
* category[mbCategory].coding 1..1
* category[mbCategory].coding = TbdCodesCS#biomarker-category
* category[geCategory].coding 0..1
* category[geCategory].coding = $DIAGNOSTICSERVICE#GE
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
* component contains 
    gene-studied 0..* and 
    biomarker-category 0..*
* component[gene-studied] ^short = "Gene Studied"
* component[gene-studied] ^definition = "The gene(s) directly or indirectly assessed by the biomarker."
* component[gene-studied].code = $LNC#48018-6
* component[gene-studied].code ^short = "48018-6"
* component[gene-studied].value[x] only CodeableConcept
* component[gene-studied].value[x] ^short = "The HGNC gene symbol is to be used as display text and the HGNC gene ID used as the code. If no HGNC code issued for this gene yet, NCBI gene IDs SHALL be used."
* component[gene-studied].value[x] 1..1
* component[gene-studied].value[x] from HGNCVS (extensible)

* component[biomarker-category] ^short = "Biomarker Category"
* component[biomarker-category] ^definition = "A categorization of a given biomarker observation."
* component[biomarker-category] ^comment = """
Component biomarker-category is an optional and repeating field that provides for a categorization of a given biomarker observation. The example 'molecular biomarker ontology' value set provides a categorization of biomarkers along several axes. A given lab test can be associated with more than one category within more than one axis. For example, LOINC code 85337-4 represents Estrogen receptor antigen in tissue by immune stain. It can be categorized by physiologic role of cell receptor and antigen; by molecule type of protein; and by method of immune stain.
"""
* component[biomarker-category].code = TbdCodesCS#biomarker-category
* component[biomarker-category].value[x] only CodeableConcept
* component[biomarker-category].value[x] 1..1
* component[biomarker-category].value[x] ^short = "cell receptor | antigen | protein | immune stain"
* component[biomarker-category].value[x] from MolecularBiomarkerCategoryVS (example)
