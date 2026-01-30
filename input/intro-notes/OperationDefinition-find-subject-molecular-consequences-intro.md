### Description
	
Retrieves molecular consequences of a DNA variant.

Generally, the operation will be called with 'subject' and 'ranges' parameters, which will return molecular consequences for patient variants in supplied ranges. Another common pattern is to call the operation with 'subject', 'ranges', and 'featureConsequences' parameters, which will limit the return to only those molecular consequences having supplied features. For other combinations of input parameters, the operation returns molecular consequences satisfying all parameters.

Where no variants, ranges, or featureConsequences are provided, the operation returns no consequences.

As shown in the following picture, this operation can return previously instantiated implications and/or dynamically computed implications. Specific implementations can indicate their capabilities using a [FHIR Capability Statement](https://www.hl7.org/fhir/capabilitystatement.html). Rules around the retention of dynamically computed implications are outside the scope of this operation, but a server could potentially instantiate those results based on the [Therapeutic Implication](StructureDefinition-therapeutic-implication.html), [Diagnostic Implication](StructureDefinition-diagnostic-implication.html), or [Molecular Consequence](StructureDefinition-molecular-consequence.html) FHIR profiles.

<div style="text-align: left; margin: 20px 0; clear: both; overflow: hidden;">
<img src="implications.png" alt="Instantiated vs Dynamically Computed Implications" style="max-width: 100%; display: block; margin: 0; float: none;" />
</div>
