### Description
	
Retrieves genetic therapeutic implications for variants/haplotypes/genotypes.

Therapeutic implications cover a wide range of scenarios - from pharmacogenomics (e.g. a patient's genotype may be associated with altered metabolism of a specific drug) to cancer care (e.g. a patient's somatic variant may be associated with response to a specific drug and/or with eligibility for a specific clinical trial).

For pharmacogenomics, generally the operation will be called with 'subject' and 'haplotypes' parameters, which will return implications reflecting those drugs whose efficacy or safety are altered based on the patient haplotypes. Including the 'treatments' parameter will limit the return to implications for the supplied drugs. For cancer care, generally the operation will be called with 'subject' and 'ranges' parameters, which will return therapeutic implications for patient variants in supplied ranges. Including the 'conditions' parameter will limit the return to implications specific to the supplied conditions. Including the 'treatments' parameter will limit the return to implications for the supplied drugs. These parameter combinations enable, for instance, queries that check to see if a patient has any therapeutic options for somatic variants, specifically for their tumor type. For other combinations of input parameters, the operation returns therapeutic implications satisfying all parameters.

Where no variants, ranges, haplotypes, treatments, or conditions are provided, the operation returns no implications.

As shown in the following picture, this operation can return previously instantiated implications and/or dynamically computed implications. Specific implementations can indicate their capabilities using a [FHIR Capability Statement](https://www.hl7.org/fhir/capabilitystatement.html). Rules around the retention of dynamically computed implications are outside the scope of this operation, but a server could potentially instantiate those results based on the [Therapeutic Implication](StructureDefinition-therapeutic-implication.html), [Diagnostic Implication](StructureDefinition-diagnostic-implication.html), or [Molecular Consequence](StructureDefinition-molecular-consequence.html) FHIR profiles.

<div style="text-align: left; margin: 20px 0; clear: both; overflow: hidden;">
<img src="implications.png" alt="Instantiated vs Dynamically Computed Implications" style="max-width: 100%; display: block; margin: 0; float: none;" />
</div>

Dynamic computation of implications can return a large number of results (e.g. 'find therapeutic implications for cancer'). Results can be curtailed using additional operation parameters (e.g. 'find therapeutic implications for somatic variant NM_007294.4:c.5578del in breast cancer").
