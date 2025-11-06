[FHIR Operations](http://hl7.org/fhir/operations.html) are a supplement to standard queries, and are used to fulfill a number of purposes, such as where the server needs to play an active role in formulating the content of the response, where the intended purpose is to cause side effects such as the creation of new resources, and for data normalization to abstract away from variability in variant representation. This is particularly relevant in genomics, where a tremendous amount of raw data exists in non-FHIR formats, and where variability in variant representation is a known barrier to matching a patient's genetic profile against knowledge bases – for clinical trials matching, for precision medication selection, etc.

FHIR Genomics operations are based on the premise that genomic data, in FHIR format and/or some other format (e.g. [VCF format](https://samtools.github.io/hts-specs/VCFv4.3.pdf)), are stored in a repository, either in or alongside an EHR, possibly along with phenotype annotations. The FHIR Genomics operations essentially 'wrap' the repository, presenting a uniform interface to applications, regardless of internal repository data structures.

A common use case driving the operations is the notion of an application (e.g. a SMART-ON-FHIR clinical genomics App, a clinical decision support application, an EHR screen) needing specific genotype or phenotype information, for a patient or a population. Applications have diverse needs, such as matching a cancer patient to available clinical trials based on identified somatic variants; screening for actionable hereditary conditions; identifying a risk for adverse medication reactions based on pharmacogenomic variants; updating a patient's risk as knowledge of their variants evolves; and more. A goal for FHIR Genomics operations is to ultimately support any and all of these clinical scenarios.

In scope are clinical genomics operations. In the future, operations supporting genomics research, variant calling and annotation, and knowledge base lookups may be added. We further categorize clinical genomics operations along two orthogonal axes - subject vs. population, and genotype vs. phenotype. For example, the **'find-subject-variants'** operation retrieves genotype information for a single subject; whereas the **'find-population-tx-implications'** retrieves a count or list of patients having specific phenotypes (such as being intermediate metabolizers of clopidogrel).

### FHIR Genomics Operations {#OperationsList}

#### Summary of Operations {#OperationsSummary}

|  | Subject Operations | Population Operations |
|---|---|---|
| **Genotype Operations** |  |  |
| simple variants | [find-subject-variants](OperationDefinition-find-subject-variants.html); [find-subject-specific-variants](OperationDefinition-find-subject-specific-variants.html) | [find-population-specific-variants](OperationDefinition-find-population-specific-variants.html) |
| structural variants | [find-subject-structural-intersecting-variants](OperationDefinition-find-subject-structural-intersecting-variants.html); [find-subject-structural-subsuming-variants](OperationDefinition-find-subject-structural-subsuming-variants.html) | [find-population-structural-intersecting-variants](OperationDefinition-find-population-structural-intersecting-variants.html); [find-population-structural-subsuming-variants](OperationDefinition-find-population-structural-subsuming-variants.html) |
| haplotype/genotypes | [find-subject-haplotypes](OperationDefinition-find-subject-haplotypes.html); [find-subject-specific-haplotypes](OperationDefinition-find-subject-specific-haplotypes.html) | [find-population-specific-haplotypes](OperationDefinition-find-population-specific-haplotypes.html) |
| **Phenotype Operations** |  |  |
| therapeutic implications | [find-subject-tx-implications](OperationDefinition-find-subject-tx-implications.html) | [find-population-tx-implications](OperationDefinition-find-population-tx-implications.html) |
| diagnostic implications | [find-subject-dx-implications](OperationDefinition-find-subject-dx-implications.html) | [find-population-dx-implications](OperationDefinition-find-population-dx-implications.html) |
| molecular consequences | [find-subject-molecular-consequences](OperationDefinition-find-subject-molecular-consequences.html) | [find-population-molecular-consequences](OperationDefinition-find-population-molecular-consequences.html) |
| **Metadata Operations** |  |  |
| study metadata | [find-study-metadata](OperationDefinition-find-study-metadata.html) |  |

#### Operation Descriptions {#OperationDescriptions}

| Operation | Description |
|---|---|
| [find-subject-variants](OperationDefinition-find-subject-variants.html) | Determine if simple variants are present that overlap range(s). |
| [find-subject-specific-variants](OperationDefinition-find-subject-specific-variants.html) | Determine if specified simple variants are present. |
| [find-subject-structural-intersecting-variants](OperationDefinition-find-subject-structural-intersecting-variants.html) | Determine if structural variants are present that overlap range(s). |
| [find-subject-structural-subsuming-variants](OperationDefinition-find-subject-structural-subsuming-variants.html) | Determine if structural variants are present that fully subsume a range. |
| [find-subject-haplotypes](OperationDefinition-find-subject-haplotypes.html) | Retrieve haplotypes/genotypes for specified genes. |
| [find-subject-specific-haplotypes](OperationDefinition-find-subject-specific-haplotypes.html) | See if specified haplotypes/genotypes are present. |
| [find-subject-tx-implications](OperationDefinition-find-subject-tx-implications.html) | Retrieves genetic therapeutic implications for variants/haplotypes/genotypes. |
| [find-subject-dx-implications](OperationDefinition-find-subject-dx-implications.html) | Retrieves genetic diagnostic implications for variants. |
| [find-subject-molecular-consequences](OperationDefinition-find-subject-molecular-consequences.html) | Retrieves molecular consequences of a DNA variant. |
| [find-population-specific-variants](OperationDefinition-find-population-specific-variants.html) | Retrieve count or list of patients having specified variants. |
| [find-population-structural-intersecting-variants](OperationDefinition-find-population-structural-intersecting-variants.html) | Retrieve count or list of patients having structural intersecting variants in specified regions. |
| [find-population-structural-subsuming-variants](OperationDefinition-find-population-structural-subsuming-variants.html) | Retrieve count or list of patients having structural subsuming variants in specified regions. |
| [find-population-specific-haplotypes](OperationDefinition-find-population-specific-haplotypes.html) | Retrieve count or list of patients having specified genotypes/haplotypes. |
| [find-population-tx-implications](OperationDefinition-find-population-tx-implications.html) | Retrieve count or list of patients having therapeutic implications. |
| [find-population-molecular-consequences](OperationDefinition-find-population-molecular-consequences.html) | Retrieve count or list of patients having molecular consequences. |
| [find-population-dx-implications](OperationDefinition-find-population-dx-implications.html) | Retrieve count or list of patients having diagnostic implications. |
| [find-study-metadata](OperationDefinition-find-study-metadata.html) | Retrieve metadata about sequencing studies performed on a subject. |

### General Guidance for the use of these Operations {#Guidance}

Genomics is a complex and highly dynamic field. We provide general guidance applicable to all FHIR Genomics operations here.

#### Use of coded query parameters {#QueryByCode}

Many operations have coded elements as input parameters. In such cases, the description of the parameter will include 'must be in token or codesystem|code format'. A token is a string that should be used by the server to perform case-insensitive search through text, display, code, and/or codeSystem. Servers may optionally broaden the use of a token to also perform close to exact searching. If supplied parameter is in codeSystem|code format, server should only perform case-sensitive code- and codeSystem-specific retrieval.

#### Query filters {#QueryFilters}

Genomic data repositories will often contain the results of more than one test on a given patient. A patient with cancer may be sequenced repeatedly over time, e.g. at initial diagnosis and again if the tumor recurs; a patient with a diagnostic odyssey may have one test focused on the identification of simple variants and another test focused on structural variants; a patient with multiple metastases may have multiple tumor specimens that are sequenced; a patient may have both a germline sequencing test and a tumor sequencing test; etc.

In such cases, it is important that FHIR Genomics operations be able to specify query filters, so that only the clinically relevant subset of results are returned. Currently, operations support four filters, all of which are optional, and all of which can be determined using the **find-study-metadata** operation:

- **Test identifiers**: Only results originating from one of these tests will be returned.
- **Test date range**: Only results generated during this range will be returned
- **Specimen identifiers**: Only results derived from one of these specimens will be returned.
- **Source class**: Enables an App to limit results to those that are 'germline' or 'somatic'.

#### AND/OR logic in queries {#and-or-logic-in-queries}

[FHIR Search](http://hl7.org/fhir/r4/search.html) defines general AND/OR logic in FHIR queries: A logical 'AND' is achieved by repeating a query parameter (e.g. '/Patient?language=FR&language=NL') , whereas a logical 'OR' is achieved via a comma-separated list of values for a single query parameter (e.g. '/Patient?language=FR,NL'). Unless stated otherwise, all FHIR Genomics Operations support 'OR' logic, and only support 'AND' logic for date fields (e.g. '...&testDateRange=ge2020-06-01&testDateRange=le2020-08-01'). Parameters that have a cardinality greater than one can be populated with a comma-separated list of values that represent a logical 'OR'.

#### Simple vs. Structural variant operations {#simple-structural}

While sources vary in how they differentiate simple vs. structural variants, here we differentiate based on endpoint precision. Simple variant operations (find-subject-variants, find-subject-specific-variants) assume precise endpoints and return variants in a '[VCF-like](sequencing.html#variants-defined-by-multiple-components-vcf-like)' format, with 'exact-start-end' coordinates. Structural variant operations (find-subject-structural-intersecting-variants, find-subject-structural-subsuming-variants) assume imprecise endpoints and return variants per [structural variant reporting guidelines](sequencing.html#representing-structural-variants) with 'outer-start-end' and 'inner-start-end' coordinates.

#### Use of genomic regions {#genes-vs-regions}

As our understanding of genomics grows, we continue to recognize the clinical significance of variations not only within protein-coding gene exons, but also in introns and intergenic regions. To enable a consistent approach to query, whether for variants within or outside a gene, these operations are generally based on regions as parameters, and not gene names or identifiers. As a result, to query for variants within a specific gene, an application must determine the position of that gene, and supply the position as a parameter. For instance, assume an App wants to use the **'find-subject-variants'** operation to see if a subject has any variants in the APC gene. On human genome reference assembly GRCh38, the APC gene is located on chromosome 5 (reference sequence NC_000005.10), at position 112707497-112846239. Thus, the query would be for variants that overlap NC_000005.10:112707497-112846239. The definitive location of genes based on human genome resources at the NCBI can be found [here](https://www.ncbi.nlm.nih.gov/genome/guide/human/).

For all operations, positional coordinates are [zero-based](https://www.biostars.org/p/84686/). Some operations return variants that overlap a 0-based interval range of integers, whereas some operations return variants that subsume a range. In the following figure, variants 1-5 overlap or intersect with the X..Y range, whereas only variant 2 subsumes the X..Y range.

![Genes vs. Regions](find-variants-fig1.png)

A zero-based coordinate system has an inclusive start and an exclusive end. For example, in the following figure, bases GCT are in range 1..4, whereas base A is not in range 1..4. As a result, a variant at position X is considered to intersect the X..Y range, whereas a variant at position Y does not. (Note that an insertion that starts before X, regardless of length, would not overlap X..Y, and would therefore not be returned). Imprecise implementations are allowed, where results contain some records outside a requested range.

![Zero-based example](zero-based.png)

#### Expectation of normalized variant search {#normalization}

Optionality in the Variant profile allows for different implementations to represent variants in different ways. For instance, the following variant representations are synonymous:

- component:variation-code: ClinVar ID = 237860
- component:dna-chg: HGVS = NM_001195798.2:c.12G>A
- component:genomic-dna-chg: HGVS = NC_000019.9:g.11200236G>A
- component:genomic-dna-chg: HGVS = NC_000019.10:g.11089560G>A
- Multiple components:
  - component:genomic-ref-seq: NC_000019.10
  - component:ref-allele: G
  - component:alt-allele: A
  - component:coordinate-system: 0-based interval counting
  - component:exact-start-end: start = 11089559

Implicit in these FHIR Genomics operations is that variants in requested regions are returned regardless of how they are formatted/represented/stored in a server. While the specific implementation of an Operation is outside the scope of HL7, we do provide guidance on how the above representations might be normalized such that any would be found and returned in a request for variants overlapping, say, the region of the LDLR gene (NC_000019.10:11089362-11133830). There are likely other effective normalization strategies beyond what is described here.

One approach to normalization is to convert all representations to a canonical form, such as the [NCBI's Sequence Position Deletion Insertion (SPDI)](https://www.ncbi.nlm.nih.gov/variation/notation/) format. Variant queries then only need to query a single format.

'SPDI' is the NCBI's variation notation for variants with known breakpoints. The notation represents an observed variant sequence using deleted and inserted sequences at a given position in a reference sequence. SPDI notation uses four fields and is written out as four elements delimited by colons S:P:D:I, where S=SequenceId; P=Position, a 0-based coordinate for where the Deleted Sequence starts; D=DeletedSequence, and I=InsertedSequence. Variation Services only support variants where the coordinates of both the upstream and downstream breakpoints are known (e.g. single nucleotide change, deletions at precise coordinates). Such variants can be encoded precisely using the SPDI notation.

[NCBI Variation Services](https://api.ncbi.nlm.nih.gov/variation/v0/) provide a rich set of APIs that can be used to normalize variants from many formats (e.g. HGVS, VCF) into SPDI, and to normalize variants in SPDI into a canonical SPDI format. The variant above, in canonical SPDI format, resolves to this: NC_000019.10:11089559:G:A, where it can easily be determined that it overlaps the requested region (NC_000019.10:11,089,362-11,133,830).

#### Expectation of genomic 'liftover' {#liftover}

LiftOver is a process whereby a genome position is converted from one genome assembly to another genome assembly. It is the process that, among other things, allows us to determine that these two variants are the same:

- NC_000019.9:g.11200236G>A (build 37 representation)
- NC_000019.10:g.11089560G>A (build 38 representation)

Several groups have identified edge cases that pose genome assembly conversion challenges (e.g. see [PharmGKB's PharmCAT posting](https://github.com/PharmGKB/PharmCAT/wiki/Preparing-VCF-Files); [Biostars posting](https://www.biostars.org/p/14187/)). For example, [NC_000001.11:145923295:C:C](https://www.ncbi.nlm.nih.gov/clinvar/variation/212026/) (build 38 representation) does not convert to a corresponding build 37 representation using [NCBI Variation Services](https://api.ncbi.nlm.nih.gov/variation/v0/spdi/NC_000001.11%3A145923295%3AC%3AC/all_equivalent_contextual). As a result, there is no requirement that servers normalize all variants against a single build.

Rather, where a server is storing variants aligned to multiple builds (and hasn't normalized all variants against a single build), it will be necessary for the server to lift over the query region into corresponding regions in other builds. For example, a query for variants in NC_000001.11:145507556-145513536 (build 38 range) may also need to query for variants in NC_000001.10:145921556-145927537 (build 37 range) in order to gather variants expressed against build 38 and build 37, respectively.

Many efficient and open source liftover tools exist (e.g. many are listed [here](https://genviz.org/module-01-intro/0001/06/02/liftoverTools/)). As with variant liftover, translating a region between builds can also fail. For example, attempting to liftover NC_000001.11:145923295-145923296 (build 38 range) into a build 37 range with the [UCSD LiftOver tool](https://genome.ucsc.edu/cgi-bin/hgLiftOver) fails, because the region is partially deleted in build 37. In the (very uncommon) case of a failed lift over, a server can widen the query region as necessary in order to have a successful liftover. For example, the widened build 38 range NC_000001.11:145923285-145923306 will successfully translate into the build 37 range NC_000001.10:145511787-145511807. In the rare case where a server is storing variants aligned to multiple builds and the server is unable to liftover the query region, the server can return a response code of 422 "ERROR: Failed LiftOver", in which case the onus falls to the client to modify the query region.

### Reference Implementation {#referenceimplementations}

An open source reference implementation of the operations is provided [here](https://github.com/FHIR/genomics-operations).