This section provides guidance for reporting of miscellaneous genomic annotations. Several types of annotations (e.g. population allele frequency) are important for clinical decision making, but are neither [ Therapeutic Implications](StructureDefinition-therapeutic-implication.html), [ Diagnostic Implications](StructureDefinition-diagnostic-implication.html), nor [ Molecular Consequences](StructureDefinition-molecular-consequence.html). The intent of this profile is to provide a 'catch-all' mechanism for communicating existing or evolving annotations that don't fit nicely into other specific implication profiles.

Where the HL7 Clinical Genomics committee has identified specific use cases (e.g. for population allele frequency), this profile contains elements and/or extensions, along with examples, that enable a semantically consistent representation. For other use cases, one can apply new observation components and/or extensions as needed. In no case should one use this  profile for use cases met by the DxImplication, TxImplication, or MolecularConsequence profiles.

### General usage notes

The genomic annotation profile can be used to annotate variants, haplotypes, genotypes, or molecular biomarkers 
with miscellaneous associations. For example, this profile can be used to assert the population allele frequency of a given variant.

Useful components include those that are broadly applicable to a number of annotations (e.g. component:knowledge-base), and those that are specific to a given type of annotation (e.g. component:population-allele-frequency):

- **component:evidence-level**: The amount of observed support for the association between an implication and a variant / haplotype / genotype / biomarker. (See the discussion of [evidence-level vs. clinical significance](StructureDefinition-implication.html#evidence-level-versus-clinical-significance) for additional guidance).
- **component:knowledge-base**: indicates the database from which the annotation is derived. Annotations are obtained from different knowledge bases (e.g. [Clinvar](https://www.ncbi.nlm.nih.gov/clinvar/), [gnomAD](https://gnomad.broadinstitute.org/), [1000 Genomes](https://www.internationalgenome.org/)). Knowledge bases continue to evolve, with new ones being developed, and existing ones being updated/revised.
- **component:annotation-pipeline**: indicates the name of the data pipeline that processed the genomic data file.
- **component:population-allele-frequency**: a specific type of annotation that indicates the prevalence of an allele in a population. This component can use the [knowledgebase-ancestry-group](StructureDefinition-knowledgebase-ancestry-group.html) extension to further characterize the applicable population.
- **component:conservation-score**: a specific type of annotation that indicates how much a specific DNA sequence or protein residue has remained unchanged across the evolutionary history of different species. High conservation scores indicate that a region is likely under strong selective pressure, meaning mutations in that region are detrimental to the organism's survival and reproduction. This component can use the [knowledgebase-ancestry-group](StructureDefinition-knowledgebase-ancestry-group.html) extension to further characterize the applicable population.
- **extension:knowledgebase-ancestry-group**: The [knowledgebase-ancestry-group](StructureDefinition-knowledgebase-ancestry-group.html) extension can be used to characterize the ancestry of the population from which a given annotation was derived. The extension is optional, and is considered unknown if not included. To indicate that an annotation is based on all assessed individuals, one can populate the extension with "ALL".

As with all implications, the explicit reference to the variant(s)/haplotype(s)/genotype(s)/molecular biomarker(s) being annotated must be provided in the Observation.derivedFrom field.

### evidence-level versus clinical-significance
	
See [Genomic Implication](StructureDefinition-implication.html#evidence-level-versus-clinical-significance) for guidance.

### Differentiating AND vs OR
	
See [Genomic Implication](StructureDefinition-implication.html#differentiating-and-vs-or) for guidance. Implication fields affected by this guidance include: derivedFrom, evidence-level, predicted-phenotype, genomic-risk-assessment.
