The Genomic Implication profile is an abstract profile for therapeutic and diagnostic implications and molecular consequences. 
	Implications are relevant information which are derived from the presence of a haplotype, genotype, variant or molecular biomarker.
This portion of the implementation guide relies on the content in the [General Genomic Reporting](general.html) and [Variant Reporting](sequencing.html) portions of this implementation guide.

At the heart of many genomic reports are findings ([variants](StructureDefinition-variant.html), 
[haplotypes](StructureDefinition-haplotype.html), 
[genotypes](StructureDefinition-genotype.html), 
[biomarkers](StructureDefinition-molecular-biomarker.html)) and annotations derived from those findings ([diagnostic implications](StructureDefinition-diagnostic-implication.html), 
[therapeutic implications](StructureDefinition-therapeutic-implication.html), 
[predicted molecular consequences](StructureDefinition-molecular-consequence.html), [ other genomic annotations](StructureDefinition-genomic-annotation.html)), as shown in the following figure:

<div style="text-align: left; margin: 20px 0; clear: both; overflow: hidden;">
<img src="Somatic_General_Guidance.svg" alt="generalGuidance" style="max-width: 100%; display: block; margin: 0; float: none;" />
</div>

This profile defines a common set of elements for other Implications:

- `derivedFrom` is a required field that provides an explicit reference from an implication to the variant(s) / haplotype(s) / genotype(s) / molecular biomarker(s) from which the implication is derived.
- `workflow-relatedArtifact (base extension) (component)` supports conveying references to citations, supporting documentation and other information relevant to the asserted implication, such as documentation which applies to the full implication Observation or to the component level information specific to the component's code and value (such as documentation supporting a specific clinical significance or evidence level value).
- `evidence-level (component)` indicates the strength of the evidence behind the asserted implication.
- `clinical-significance (component)` indicates the clinical impact of an implication.
- `knowledge-base (component)` indicates the database from which the annotation is derived. Annotations are obtained from different knowledge bases (e.g. [Clinvar](https://www.ncbi.nlm.nih.gov/clinvar/), [gnomAD](https://gnomad.broadinstitute.org/), [1000 Genomes](https://www.internationalgenome.org/)). Knowledge bases continue to evolve, with new ones being developed, and existing ones being updated/revised.
- `annotation-pipeline (component)` indicates the name of the data pipeline that processed the genomic data file.

#### evidence-level versus clinical-significance

**evidence-level**: The amount of observed support for the association between an implication and a variant / haplotype / genotype / biomarker. There are dozens if not hundreds of evidence-level value sets, generally providing an ordinal range of codes from low evidence (e.g. 'predicted', 'case report', '1-star') to high evidence (e.g. 'professional society guideline', 'expert panel consensus', '1A').

**clinical-significance**: The clinical impact of an implication on a person's health. There are dozens if not hundreds of clinical-significance value sets, generally providing an ordinal range of codes from low significance (e.g. 'benign') to high significance (e.g. 'pathogenic', 'oncogenic','predictive of drug response').

While **evidence** and **significance** are orthogonal concepts, some codes conflate the two (e.g. 'expert panel consensus of strong efficacy', 'strong evidence refutes the clinical utility of this drug', 'case report evidence of pathogenicity'). In general, using discrete evidence and significance codes allow for a more precise characterization of an implication. Where an implementation is using a conflated code, we recommend communicating that code in the evidence-level field.

Examples of other code sets for evidence-level and clinical-significance:

- [ACMG_Level of evidence](https://loinc.org/LL5356-2/)
- [Oncokb levels](https://www.oncokb.org/levels#version=V2)
- US FDA levels
- AMP/ASCO/CAP levels
- Classification on ClinVar submitted records
- [Bioportal clinical variant interpretation](https://bioportal.bioontology.org/ontologies/NGBO/?p=classes&conceptid=http://purl.obolibrary.org/obo/ngbo.owl/NGBO_6000302)
- [CIViC Evidence](https://civic.readthedocs.io/en/latest/model/evidence/overview.html)
- [CIViC Significance](https://civic.readthedocs.io/en/latest/model/evidence/significance.html)

#### Differentiating AND vs OR

There are several cases where it is necessary to differentiate 'AND' conditions (e.g. both drug X AND drug Y, in combination, are indicated in the presence of a variant) vs. 'OR' conditions (e.g., either drug X OR drug Y are indicated in the presence of a variant).

This situation is not unique to genomic implications, and arises elsewhere within FHIR (e.g. [FHIR Search](https://www.hl7.org/fhir/search.html#combining)) and outside of FHIR (e.g., [ClinVar submission API](https://www.ncbi.nlm.nih.gov/clinvar/docs/api_http/) condition set). To be consistent with other precedents:

Where implications have fields with cardinality > 1, the inclusion of multiple values within a field SHALL indicate an 'AND' condition. An 'OR' condition SHALL be represented by multiple observation instances.

Implication fields affected by this guidance include:

[Molecular consequences](StructureDefinition-molecular-consequence.html): derivedFrom, evidence-level, feature-consequence.

[Therapeutic implications](StructureDefinition-therapeutic-implication.html): derivedFrom, evidence-level, therapeutic-implication, phenotypic-treatment-context, medication-assessed, therapy-assessed.

[Diagnostic implications](StructureDefinition-diagnostic-implication.html): derivedFrom, evidence-level, predicted-phenotype, genomic-risk-assessment.

[Genomic annotations](StructureDefinition-genomic-annotation.html): derivedFrom, evidence-level, population-allele-frequency, conservation-score.

Here are examples of these rules with DiagnosticImplication (but the principles would apply to any Implication):

#### Example 1: Variant X is pathogenic for Disease Y AND Disease Z (in combination)

**Implementation:** One DiagnosticImplication with two `predicted-phenotype` instances for Disease Y and Disease Z that is `derivedFrom` one Variant for VariantX

<div style="text-align: left; margin: 20px 0; clear: both; overflow: hidden;">
<img src="implication-and-or-ex1.jpg" alt="Example 1: AND combination for diseases" style="max-width: 100%; display: block; margin: 0; float: none;" />
</div>

#### Example 2: Variant X might be pathogenic for Disease Y alone, or Disease Z alone

**Implementation:** Two DiagnosticImplications, one with `predicted-phenotype` for DiseaseY, second with `predicted-phenotype` for DiseaseZ, and both are `derivedFrom` the same Variant for VariantX

<div style="text-align: left; margin: 20px 0; clear: both; overflow: hidden;">
<img src="implication-and-or-ex2.jpg" alt="Example 2: OR condition for diseases" style="max-width: 100%; display: block; margin: 0; float: none;" />
</div>

#### Example 3: Variant X AND Variant Y (in combination) are pathogenic for Disease Z

**Implementation:** One DiagnosticImplications with `predicted-phenotype` for DiseaseZ that is `derivedFrom` the two Variants (VariantX and VariantY)

<div style="text-align: left; margin: 20px 0; clear: both; overflow: hidden;">
<img src="implication-and-or-ex3.jpg" alt="Example 3: AND combination for variants" style="max-width: 100%; display: block; margin: 0; float: none;" />
</div>

#### Example 4: Variant X OR Variant Y might be pathogenic for Disease Z

**Implementation:** Two DiagnosticImplications, each with `predicted-phenotype` for DiseaseZ, one that is `derivedFrom` a Variant for VariantX, the other that is `derivedFrom` a Variant for VariantY

<div style="text-align: left; margin: 20px 0; clear: both; overflow: hidden;">
<img src="implication-and-or-ex4.jpg" alt="Example 4: OR condition for variants" style="max-width: 100%; display: block; margin: 0; float: none;" />
</div>
