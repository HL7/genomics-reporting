### Molecular Consequence Use Case
  
A given variant can have multiple transcript-specific predicted molecular consequences. Clinical applications such as rare disease variant discovery, clinical trial matching, and the determination of therapeutic options for cancer patients may need to examine each predicted consequence as part of a variant filtration and prioritization process.

### Detailed Example

In this example, a variant in a gene with multiple transcripts is annotated with multiple transcript-specific molecular consequence predictions. This figure shows multiple transcripts of the ODF2L gene.

<div style="text-align: left; margin: 20px 0; clear: both; overflow: hidden;">
<img src="molecularConsequences2.png" alt="Multiple transcripts of ODF2L gene" style="max-width: 100%; display: block; margin: 0; float: none;" />
</div>

This next figure shows a VCF row. A variant in the ODF2L gene has been annotated with the [snpEff/snpSIFT variant prediction tool](http://example.org/pcingola.github.io/SnpEff/). Things to note include:

- The example here prefixes the URI with http://example.org as is the standard approach in HL7 guides when a code system is not an official terminology
- snpEff predicts a molecular consequence for each known transcript
- Each molecular consequence has one or more 'effects' (drawn from Sequence Ontology), and an 'impact category' (HIGH, MODERATE, LOW, MODIFIER)
- Note how variants occurring outside of exons in certain transcripts (e.g. intron_variant) do not have an associated pHGVS
- snpEff may assign an overall 'LOF' (Loss of Function) prediction. (In these examples, we include the 'LOF' where effect=HIGH)
- This example uses snpSIFT with [gnomAD](https://gnomad.broadinstitute.org/) to annotate a population allele frequency
- In some cases, snpEff will assign more than one molecular consequence to a given transcript (e.g. splice_donor_variant&intron_variant)

<div style="text-align: left; margin: 20px 0; clear: both; overflow: hidden;">
<img src="molecularConsequences3.png" alt="Predicted ODF2L molecular consequences" style="max-width: 100%; display: block; margin: 0; float: none;" />
</div>

These following examples correspond to the annotated VCF row.

- [Variant](Observation-variant-with-molec-consequences.html) (includes population allele frequency)
- [Molecular consequence 1](Observation-molec-conseq1.html) (includes LOF prediction)
- [Molecular consequence 2](Observation-molec-conseq2.html)
- [Molecular consequence 3](Observation-molec-conseq3.html)
- [Molecular consequence 4](Observation-molec-conseq4.html)### evidence-level versus clinical-significance
	
See [Genomic Implication](StructureDefinition-implication.html#evidence-level-versus-clinical-significance) for guidance.

### Differentiating AND vs OR
	
There are several cases where it is necessary to differentiate 'AND' conditions (e.g. a consequence of a DNA variant is both X and Y, as in the first example above where a consequence is both a 'splice_donor_variation' AND a 'intron_variant') vs. 'OR' conditions (e.g. a consequence of a DNA variant may be X or may by Y, as in the example above where a consequence might be 'synonymous variant' OR 'intron_variant'). This situation is not unique to molecular consequences, and arises elsewhere within FHIR (e.g. [FHIR Search](https://www.hl7.org/fhir/search.html#combining)) and outside of FHIR (e.g. [Clinvar submission API](https://www.ncbi.nlm.nih.gov/clinvar/docs/api_http/) condition set). To be consistent with other precedents, where molecular consequences have fields with cardinality >1, the inclusion of multiple values within a field shall indicate an 'AND' condition. An 'OR' condition is represented by multiple observation instances.

See [Genomic Implication](StructureDefinition-implication.html#differentiating-and-vs-or) for additional information. Implication fields affected by this guidance include: derivedFrom, evidence-level, feature-consequence.
