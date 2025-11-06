This section provides guidance for genomic reporting of patient genetic implications regarding specific conditions (sometimes referred to as phenotypes). This portion of the implementation guide relies on the content in the [General Genomic Reporting](general.html) and [Variant Reporting](sequencing.html) portions of this implementation guide.

### General usage notes

The diagnostic implication profile can be used to annotate variants, haplotypes, genotypes, or molecular biomarkers with phenotype associations. For example, this profile can be used to assert that the presence of a variant is associated with an increased risk of breast cancer.

Useful components include:

- **component:conclusion-string**: Concise and clinically contextualized summary conclusion (interpretation/impression) of the observation
- **component:evidence-level**: The amount of observed support for the association between an implication and a variant / haplotype / genotype / biomarker. (See the discussion of [evidence-level vs. clinical significance](StructureDefinition-implication.html#evidence-level-versus-clinical-significance) for additional guidance.)
- **component:clinical-significance**: The clinical impact of an implication on a person's health. (See the discussion of [evidence-level vs. clinical significance](StructureDefinition-implication.html#evidence-level-versus-clinical-significance) for additional guidance.)
- **component:predicted-phenotype**: An observable characteristic (e.g., condition, disease, physical finding) of an individual
- **component:mode-of-inheritance**: The transmission pattern of the condition/phenotype in a pedigree.

As with all implications, the explicit reference to the variant(s)/haplotype(s)/genotype(s)/molecular biomarker(s) being annotated must be provided in the Observation.derivedFrom field.

### evidence-level versus clinical-significance
	
See [Genomic Implication](StructureDefinition-implication.html#evidence-level-versus-clinical-significance) for guidance.

### Differentiating AND vs OR
	
See [Genomic Implication](StructureDefinition-implication.html#differentiating-and-vs-or) for guidance. Implication fields affected by this guidance include: derivedFrom, evidence-level, predicted-phenotype, genomic-risk-assessment.
