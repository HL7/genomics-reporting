### Description

Retrieve count or list of patients having diagnostic implications. More specifically, this operation retrieves the count +/- list of patients that have diagnostic implications involving specific conditions, derived from specific variants/haplotypes/genotypes.

A patient meets numerator criteria if they have at least one diagnostic implication matching the query parameters.

As shown in the following picture, this operation can return previously instantiated implications and/or dynamically computed implications. Specific implementations can indicate their capabilities using a [FHIR Capability Statement](https://www.hl7.org/fhir/capabilitystatement.html). Rules around the retention of dynamically computed implications are outside the scope of this operation, but a server could potentially instantiate those results based on the [Therapeutic Implication](StructureDefinition-therapeutic-implication.html), [Diagnostic Implication](StructureDefinition-diagnostic-implication.html), or [Molecular Consequence](StructureDefinition-molecular-consequence.html) FHIR profiles.

<div style="text-align: left; margin: 20px 0; clear: both; overflow: hidden;">
<img src="implications.png" alt="Instantiated vs Dynamically Computed Implications" style="max-width: 100%; display: block; margin: 0; float: none;" />
</div>

Population queries are designed to return a **count** of patients that match each item sought, with or without a **list** of patients matching the item(s) sought.
