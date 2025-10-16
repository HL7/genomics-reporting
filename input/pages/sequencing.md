This guide introduces Observation profiles to report results of tests that involve sequencing the DNA, RNA or amino acid chains of specimens. This includes direct sequencing, shotgun sequencing, array-based variant testing, and other mechanisms. See the [scope](index.html) and [overview](background.html) sections for more details.

Currently, there is one profile used to model most variant information: [Variant](StructureDefinition-variant.html). In future versions of this implementation guide, HL7 may subdivide Variant into multiple sub-profiles with more specific purpose.

### Variant Profile Scope {#VariantOverview}

The purpose of the [Variant](StructureDefinition-variant.html) Observation profile is to capture genomic data elements fulfilling the following three purposes:

1. To **define** a variant of interest, which could be a simple, well understood change from a reference sequence, or one of several types of structural variations with uncertain endpoints.
2. To **contextualize** the observation of the defined variant (e.g., presence or absence in the sample and determinations of state or inheritance).
3. To terminologically **annotate** the variant according to the type or location of the change (generally optional, but needed to define certain types of structural variations).

It is NOT intended to support other Observations that are clinically relevant on their own and have separate profiles defined in this guide, including:

1. Statements of pathogenicity or of correlations with conditions or therapeutic interactions (see [pharmacogenomics](pharmacogenomics.html), [somatic reporting](somatics.html), [Therapeutic Implication](StructureDefinition-therapeutic-implication.html), [Diagnostic Implication](StructureDefinition-diagnostic-implication.html), [Molecular Consequence](StructureDefinition-molecular-consequence.html), [Genomic Annotation](StructureDefinition-genomic-annotation.html)). Note that these statement observations will often use `Observation.derivedFrom` to point to one or more variants. This approach allows those statements to be reevaluated and updated or created downstream as the underlying knowledge bases and guidelines are updated.
2. Presence statements of whole haplotypes, genotypes, or phasing data (see [Haplotype](StructureDefinition-haplotype.html), [Genotype](StructureDefinition-genotype.html), and [Sequence Phase Relationship](StructureDefinition-sequence-phase-relationship.html));

### Defining Variants {#DefiningVariants}

This Implementation Guide supports two reporting patterns for defining variants:

1. By describing the change using HGVS or ISCN nomenclature. [Example HGVS-styled variant](Observation-VariantExample1.html).
2. By providing multiple component details similar to VCF columns. [Example VCF-styled variant](Observation-VariantExample2.html).

For each variant reporting pattern, different components MUST be used to properly define the variant where possible. Other components MAY be used to provide additional information for cross referencing external sources or increasing human readability of the instance.

Additional resources that implementers may want to leverage when reporting variant information include NCBI's [ClinVar](https://www.ncbi.nlm.nih.gov/clinvar/), a freely accessible public archive of reports of the relationships among human variations and phenotypes, and [NCBI's Variation Services](https://api.ncbi.nlm.nih.gov/variation/v0/) that relies on a common data model described as Sequence Position Deletion Insertion ([SPDI](https://www.ncbi.nlm.nih.gov/variation/notation/)).

#### Variants Defined by a Nomenclature Statement {#NomenclatureVariants}

This pattern describes the observed nucleotide sequence or configuration using HGVS or ISCN statement strings. Care should be taken to follow nomenclature guidelines and properly distinguish variants with the degree of precision needed for clinical use. Note that synonyms may arise within these nomenclatures so downstream validation and normalization may be required.

| Defining Component | Example Value | Note |
|-------------------|---------------|------|
| genomic-hgvs (LOINC 81290-9) OR representative-coding-hgvs (LOINC 48004-6) | `{ "system" : "http://varnomen.hgvs.org", "code" : "NM_022787.3:c.769G>A" }` | Proper usage of HGVS contains the reference sequence identifier followed by ':g.' for genomic or ':c.' for a coding sequence. In HGVS notation, the "=" (equals) is used to indicate a sequence was tested but found unchanged [[ref]](https://varnomen.hgvs.org/recommendations/general/). |
| cyogenomic-nomenclature (LOINC 81291-7) | `{"system" : "https://iscn.karger.com", "code" : "46,XX,t(9;22)(q34;q4)"}` | more information on formatting structural variations below. |
{:.grid}

#### Variants defined by multiple components (VCF-like) {#ComponentwiseVariants}

This representation leverages multiple component slices to communicate an allele within the context of a specific location on a reference sequence. It is the most accurate definitional representation in FHIR, but is limited to variations with known breakpoints, and alleles should be normalized per VCF specifications. Note that VCF representations often specify genome build and chromosome identifiers rather than explicit reference sequences. Build and chromosome identifier may optionally be included for cross reference.

| Defining Component | Example Value | Note |
|-------------------|---------------|------|
| genomic-ref-seq (LOINC 48013-7) | `{"system" : "http://www.ncbi.nlm.nih.gov/refseq","code" : "NC_000010.10"}` | must send at least this or representative transcript refseq |
| representative-transcript-ref-seq (LOINC 51958-7) | `{"system" : "http://www.ncbi.nlm.nih.gov/refseq","code" : "NM_000044.3"}` | must send at least this or genomic refseq |
| coordinate-system (LOINC 92822-6) | `{"system" : "http://loinc.org","code" : "LA30102-0","display" : "1-based character counting"}` | Common coordinate systems are described by LOINC. |
| exact-start-end (LOINC 81254-5) | `{"valueRange" : {"low" : {"value" : 96527334}}}` | Interpretation of this number requires the reference sequence and coordinate system. |
| ref-allele (LOINC 69547-8) | "valueString" : "C" | This string should be normalized per the VCF standard. |
| alt-allele (LOINC 69551-0) | "valueString" : "A" | If the reference allele is tested and found unchanged, this string should be equal to the REF allele string. |
{:.grid}

#### Defining Repeat Expansion Variants {#RepeatExpansionVariants}

When reporting a repeat expansion variant (also known as trinucleotide repeat or tandem repeat), additional details are required to fully define the variant. Implementers should use as many of the elements in the section above (VCF-like) to describe the location of the repeat expansion, then use both the components from this section to state the observed repeat expansion. If the change is described as multiple contiguous repeat expansions, the extension in this section can be used to link the component pairs as in [this example](Observation-MultipleRepeatExpansions.html).

| Defining Element | Example Value | Note |
|------------------|---------------|------|
| Component: repeat-motif (TBD code repeat-motif) | `{"valueString" : "GGC"}` | the nucleotides of the repeat expansion motif |
| Component: repeat-number (TBD code repeat-number) | `{"valueQuantity" : {"value" : 11}}` | the number of repeats of the repeat expansion |
| Extension: repeat-motif-order | `{"extension" : [{"url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/repeat-motif-order","valuePositiveInt" : 1}]}` | If there are multiple repeat expansion pairs, this extension is used both to indicate the sequence position of a given motif-number pair and to group the related components together. Related components with the same repeat-motif-order extension describe the same motif. This extension is optional when a single repeat expansion pair is used, but is required when multiple are used. |
{:.grid}

### Variant Assessment {#variantassessment}

Data producers SHALL include an assessment for each variant that is shared. This assessment indicates if the defined variant is present in the sample or not, or if there was an issue in calling the variant. It is structured in `Observation.valueCodeableConcept`, and is bound to the answer list [LL1917-2 Variant Assess](https://loinc.org/LL1971-2/).

See below for additional guidance on each answer from this value set.

| Answer | Usage Notes |
|--------|-------------|
| Present | The defined variant is present in the sample. |
| Absent | The defined variant was NOT found in the sample. This can be used to structure a 'Pertinent Negative', or a variant whose absence is deemed important enough to share, even though the defined variant is not present. |
| No call | The defined variant could not be called by the analysis, but the variant was deemed important enough to share. This usage of this value SHALL be constrained to coverage issues with the variant's region (i.e. the locus was sequenced but the coverage was insufficient to support calling the presence or absence of the variant). |
| Indeterminate | The defined variant could not be called by the analysis, but the variant was deemed important enough to share. This value SHALL be used for any issues with the sample or analysis that are not related to the coverage of the locus for the variant. Additional details about the call MAY be shared in `Observation.note`. |
{:.grid}

These variant assessments are supplemented by other indicators of the analysis like quality and coverage. These other indicators include:

| Indicator | Usage Notes |
|-----------|-------------|
| [Variant Confidence Status](StructureDefinition-variant-definitions.html#diff_Observation.component:variant-confidence-status) | Provides a way to indicate the reporting organization's confidence that the variant is truly positive. Noting the confidence level may be important in the overall interpretation of the variant and related implications. Confidence is noted as High, Intermediate or Low. The following example shows how to express a high variant confidence: `{"system": "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/variant-confidence-status-cs","code" : "high","display" : "High"}` It is important to note that variant confidence status is not a required component. If the reporting organization's confidence levels are not structured in a way that it can be reported using this standard coding system, implementers must determine other ways to ensure that confidence in a variant call is understood. For example, a laboratory might only send structured variants when the confidence is 'high' that they are truly positive. |
| [Allelic Read Depth](StructureDefinition-variant-definitions.html#diff_Observation.component:allelic-read-depth) | Specifies the number of reads that identifies the allele in question whether it consists of one or a small sequence of contiguous nucleotides. Different methods and purposes require different numbers of reads to be acceptable. Often >400, sometimes as few as 2-4. |
> **ToDo Note:** GenomicStudy details tbd.
> Metrics and Regions
{:.modified-content}
<!--
| [Genomic Study Analysis: Metrics](StructureDefinition-genomic-study-analysis-metrics.html) | This extension on the Genomic Study Analysis profile is used to structure high level metrics like read depth and coverage. |
| [Genomic Study Analysis: Regions](StructureDefinition-genomic-study-analysis-regions.html) | This extension on the Genomic Study Analysis profile is used to assert genes or regions that were studied in analysis, genes or regions called, and genes or regions that were deemed uncallable. |
{:.grid}

### Contextualizing Variants {#ContextualComponents}

Clinical context for observing the variant are often important in understanding the variant. Often, multiple tests are done to determine the values for these elements.

Note that many other properties associated with contextualizing the observed variant are stored in other FHIR resources. For example, ethnicity/race/biological sex are on the Patient resource (referenced by Observation.subject) and the tissue/tumor type are on Observation.specimen.

| Contextual Attribute or Component | Example Value | Note |
|-----------------------------------|---------------|------|
| Observation.value | `{ "system" : "http://loinc.org","code" : "LA9633-4","display" : "Present"}` | If not searching for specific variations and merely reporting what's found, the Observation's value should be set to "Present". Details about the specific variant in consideration must be populated using one of the above patterns of components. |
| Observation.method | `{ "system" : "http://loinc.org","code" : "LA26398-0","display" : "Sequencing"}` | Indicates the method of variant analysis. The bound list is currently extensible, allowing for codification of other method types here at varying degrees of granularity. The work group is considering additional approaches to modeling testing methods and is requesting implementer feedback at this time. |
| component[allelic-read-depth] (LOINC 82121-5) | `{ "valueQuantity" : {"value" : 120,"unit" : "reads per base pair","system" : "http://unitsofmeasure.org","code" : "[1]"}}` | Specifies the number of reads that identifies the allele in question, whether it consists of one or more contiguous nucleotides. Different methods and purposes require different numbers of reads to be acceptable. Often >400, sometimes as few as 2-4. |
| component[allelic-state] (LOINC 53034-5) | `{ "system" : "http://loinc.org","code" : "LA6705-3","display" : "homozygous"}` | |
| component[sample-allelic-frequency] (LOINC 81258-6) | 0.44 | |
| component[genomic-source-class] (LOINC 48002-0) | `{ "system" : "http://loinc.org","code" : "LA6684-0","display" : "Somatic"}` | |
| component[variant-inheritance] (LOINC 94186-4) | Maternal \| Paternal \| Unknown | |
| component[variant-inheritance-basis] (LOINC 82309-6) | Directly measured \| Family DNA \| Family history \| Inferred from population data | |
| component[confidence] | high \| intermediate \| low | |
{:.grid}

### Annotating Variants {#AnnotationComponents}

This implementation guide defines several components on [Variant](StructureDefinition-variant.html) that can be used to provide helpful cross references and low-level annotations - annotations completely determined by the molecular change and calculable for example by NCBI.

| Annotational Component | Example Value | Note |
|------------------------|---------------|------|
| cytogenetic-location (LOINC 48001-2) | | derivable from refseq |
| variation-code (LOINC 81252-9) | `{ "system": "http://www.ncbi.nlm.nih.gov/clinvar", "code":"619728", "display" : "NC_000019.8:g.1171707G>A" }` | Optional to include. Multiple database code systems are used across specialties and carry different levels of information. |
| chromosome-identifier (LOINC 48000-4), reference-sequence-assembly (LOINC 62374-4) | (eg Chr2, b38) | Optional to include. Commonly used in VCF as shorthand but can introduce ambiguity without a fully versioned reference sequence. |
| gene-studied (LOINC 48018-6) | `{ "system": "http://www.genenames.org","code" : "HGNC:644","display" : "AR"}` | derivable from reference sequence |
| coding-change-type (LOINC 48019-4) | `{"system" : "http://www.sequenceontology.org","code" : "SO:1000002","display" : "substitution"}` | may be required for certain types of structural variants. See below. |
| representative-protein-hgvs (LOINC 48005-3) | `{"system": "http://varnomen.hgvs.org","code" : "NP_006209.2:p.(His1047Arg)","display" : "p.H1047R"}` | Proper usage of HGVS contains the reference sequence and usage of parenthesis to denote the amino acid change is calculated rather than directly observed. |
{:.grid}

### Representing Structural Variants {#StructuralVariants}

The [Variant](StructureDefinition-variant.html) profile is capable of representing a subset of structural variants (e.g. copy number variants), whereas more complex structural variants such as translocations will require additional model development. We provide guidance here on how the Variant profile can be used to communicate common structural variants. (The cytogenomic-nomenclature component can also be used to communicate more complex structural variants, in ISCN notation).

While sources vary in how they differentiate simple vs. structural variants, here we differentiate based on end point precision and by variant length. **All variants with imprecise end points are treated as structural variants.** Variant length is more arbitrary - consider for example, a precisely located deletion of one base pair, of one thousand base pairs, of one hundred thousand base pairs. As variant length increases, it can become onerous to include REF and ALT alleles. Therefore, where end points of a variant are precisely known, users can decide whether to represent the variant as a simple or a structural variant, although a variant length of 50 bases is often used as a cutoff.

Suggested minimal representations of common structural variants are shown in the table. Data originating from NGS or DNA Chip testing will (and data originating from FISH testing will not) generally be amenable to these recommendations. HGVS representations, and any other components in the Variant profile not mentioned, can also be communicated where appropriate.

| Structural Variant Component | CNV | DUP | DEL | INV | INS |
|------------------------------|-----|-----|-----|-----|-----|
| [1..1] component: coding-change-type (LOINC 48019-4) | SO:0001019 \| copy_number_variation \| http://www.sequenceontology.org | SO:1000035 \| duplication \| http://www.sequenceontology.org | SO:0000159 \| deletion \| http://www.sequenceontology.org | SO:1000036 \| inversion \| http://www.sequenceontology.org | SO:0000667 \| insertion \| http://www.sequenceontology.org |
| [1..1] component: genomic-ref-seq (LOINC 48013-7) | Should be populated with chromosome-level reference sequence (e.g. NCBI RefSeq "NC_000001.10") ||||
| genomic-source-class (LOINC 48002-0) | should be populated ||||
| [0..1] component: allelic-state (LOINC 53034-5) | not used | should be populated where genomic-source-class is germline | should be populated where genomic-source-class is germline | should be populated where genomic-source-class is germline | should be populated where genomic-source-class is germline |
| [0..1] component: sample-allelic-frequency (LOINC 81258-6) | not used | often not used, optional if genomic-source-class is somatic | often not used, optional if genomic-source-class is somatic | not used | not used |
| [0..1] component: copy-number (LOINC 82155-3) | should be populated (see [guidance](StructureDefinition-variant-definitions.html#diff_Observation.component:copy-number).) | optional | optional | not used | not used |
| [1..1] component: ref-allele (LOINC 69547-8) | Generally not used or useful due to the length of the change. In some cases, a ref allele may be reported for a deletion. ||||
| [0..1] component: alt-allele (LOINC 69551-0) | Generally, structural variants will not report Alt Alleles. In some cases, an Alt Allele may be reported for an Insertion. ||||
| [1..1] component: coordinate-system (LOINC 92822-6) | Should be populated ||||
| [0..1] component: outer-start-end (LOINC 81301-4) and [0..1] component: inner-start-end (LOINC 81302-2) | Outer and/or inner start should be populated, as well as outer and/or inner end. ||||
{:.grid}

#### Notes {#SNVnotes}

- While a DEL is conceptually the same as a CNV with decreased copy number, and a DUP is conceptually the same as a CNV with increased copy number, in practice, different variant callers will call different structural variant types. For instance, DEL and DUP claims are generally made by breakpoint-based callers (e.g. Delly) whereas CNV claims are generally made by abundance-based callers (e.g. CNVnator). Furthermore, breakpoint-based callers generally report allelic state and/or allelic frequency whereas abundance-based callers generally report copy number.
- All structural variant positions are represented with outer-start-end and inner-start-end components, and not exact-start-end.

#### Examples {#Example-Structural-Variants}

- [Germline CNV](Observation-ExampleGermlineCNV.html)
- [Germline DEL](Observation-ExampleGermlineDEL.html)
- [Germline INV](Observation-ExampleGermlineINV.html)
- [Somatic CNV](Observation-ExampleSomaticCNV.html)
- [Somatic DEL](Observation-ExampleSomaticDEL.html)
- [Somatic INV](Observation-ExampleSomaticINV.html)

### Representing compound heterozygotes {#Compound-Heterozygote}

Compound heterozygosity is the presence of two different heterozygous mutations in a gene, one on each chromosome of a pair.

While a single HGVS expression within a single Variant observation can be used to represent a compound heterozygous state (e.g. 'LRG_199t1:c.[2376G>C];[3103del]'), we recommend that compound heterozygotes be represented using two Variant observations, each showing one of the heterozygous variants.

The special case where the two different variants are at the same base pair location can also be represented by two Variant observations. For example:

- Variant Observation 1
  - allelic-state: heterozygous
  - ref-allele: G
  - alt-allele: A
  - exact-start-end: 1234567
- Variant Observation 2
  - allelic-state: heterozygous
  - ref-allele: G
  - alt-allele: C
  - exact-start-end: 1234567

It is important to note in this example that the Variant observation indicates the presence or absence of a variant with the given ALT allele, and does not indicate presence of the REF allele on the other chromosome of the pair. Even though it is almost always the case for heterozygous variants that one chromosome has the variant and the other chromosome has the reference allele, one should not assume this is the case from a single heterozygous Variant without separate knowledge that no other variants were detected at that position.

If there is a need to be explicit about both alleles at a given location, one can use the [Genotype](StructureDefinition-genotype.html) observation profile. Here is a [bundle](Bundle-bundle-complexVariant-nonHGVS.html) showing a compound heterozygous example with two Variant instances grouped together by one Genotype instance.

### Additional variant attributes {#flexibility}

If implementers have additional variant annotations, the Variant profile is defined to allow flexibility. See the section on [flexibility](general.html#flexibility) for additional guidance, especially the guidance for the Open Slicing allowed on `Observation.component`.

### Higher-Level Variant Categorization {#HighLevelCategory}

It can be beneficial to provide a higher-level categorization of a variant. For instance, the LOINC [Variant category](https://loinc.org/83005-9) offers 'simple' or 'structural' codes. While the component `coding-change-type (LOINC 48019-4)` provides a coarse description of the change, an implementer could also include a higher-level code as an additional `coding`. Other codes may be included as long as they adhere to the rules for additional `coding` described [here]({{site.data.fhir.path}}datatypes.html#CodeableConcept).

This is an example of the `coding-change-type` component showing three entries:

- Code from the ValueSet in the binding (from SequenceOntology)
- Code from the Variant Category ValueSet (from LOINC)
- Code from a lab defined ValueSet

```json
"valueCodeableConcept": {
  "coding": [
    {
      "system" : "http://www.sequenceontology.org",
      "code" : "SO:0000694",
      "display" : "SNP"
    },
    {
      "system" : "http://loinc.org",
      "code" : "LA26801-3",
      "display" : "Simple variant"
    },
    {
      "system" : "http://example.org/labX-variant-category",
      "code" : "substitution",
      "display" : "Substitution"
    }
  ]
}
```

Moreover, the [Molecular Consequence](StructureDefinition-molecular-consequence.html) profile includes a component `feature-consequence`, which categorizes the structural implications of a variant. The codes in the [ValueSet](ValueSet-molecular-consequence-vs.html) could be used, and a higher-level concept could be included as well.