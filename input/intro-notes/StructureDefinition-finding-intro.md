### Scope and Usage

The primary focus of genomic testing is making Genomic Findings. These are the fine and/or coarse-grained descriptions of a specimen's genomic characteristics. This profile is the base profile for all other finding profiles, defining a set of constraints that are applicable across all findings.

<div style="text-align: left; margin: 20px 0; clear: both; overflow: hidden;">
<img src="general-genomic-findings.png" alt="Class diagram showing relationship of genomic findings as well as genotypes, haplotypes, variants and sequences." style="max-width: 100%; display: block; margin: 0; float: none;" />
</div>
  
**Genomic Findings**

[Genomic Finding](StructureDefinition-finding.html),
[Genotype](StructureDefinition-genotype.html),
[Haplotype](StructureDefinition-haplotype.html),
[Variant](StructureDefinition-variant.html) (or see [Variant Reporting](sequencing.html)),
[Sequence Phase Relationship](StructureDefinition-sequence-phase-relationship.html)

#### Types of Findings

- [Genotypes](StructureDefinition-genotype.html) describe combinations of genomic variations that together are associated with a particular phenotype - i.e., a specific physical, behavioral, or risk-associated difference associated with the organism whose specimen was tested.
- [Haplotypes](StructureDefinition-haplotype.html) describe a set of genomic variations that appear on a single strand of DNA - and which are therefore typically inherited together
- Variants are specific differences or combinations of differences between parts of one or more specimen sequences and the equivalent portions of the reference sequence(s) for that organism. The [Variant Reporting](sequencing.html) section deals with all types of variants detected by formal sequencing, including simple/discrete variants, structural variants and complex variants detected by direct sequencing, shotgun-based sequencing, and array-based testing for specific variants.
- [Sequence Phase Relationships](StructureDefinition-sequence-phase-relationship.html) describe the CIS or TRANS relationship of findings.
  
These categories of observations have relationships. Haplotypes can be identified based on the presence of variants. Genotypes can be identified based on the presence of haplotypes and/or variants. All three can be expressed as a combination of one or more sequences.

#### Common Elements

- `reference-sequence-assembly (component)` represents reference sequence used when determining this finding
- `chromosome-identifier (component)` represents the chromosome for the finding
- `cytogenetic-location (component)` represents the chromosome, arm, and band (can be multiple) for the finding
- `gene-studied (component)` represents the gene(s) for the finding.
