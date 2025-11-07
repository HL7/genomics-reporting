### Scope and Usage
  
This profile allows a full description of the variant found using properties from a variety of testing approaches and allowing for a variety of descriptive mechanisms.  Labs are encouraged to populate what properties they know. In future versions of this implementation guide, HL7 may provide additional guidance on what properties should be sent in which situations and may subdivide *Variant* into multiple sub-profiles with more specific purpose.

### Other Guidance
  
See [Variant Reporting](sequencing.html) for details on use.

A variety of annotations (see [variant implications](StructureDefinition-implication.html)) can be applied to identified variants, such as: (1) predicted molecular consequences (e.g. a prediction that a variant leads to loss of gene function); (2) diagnostic implications (e.g. presence of a variant indicates increased risk for breast cancer); (3) therapeutic implications (e.g. presence of a somatic variant is associated with sensitivity to a particular drug or eligibility into a clinical trial).

Most human genes are transcribed into multiple transcripts. The molecular consequences profile can be used to indicate transcript-specific predicted consequences, for one or more transcripts. In the Variant instance itself, one can also indicate a representative transcript-level HGVS and/or protein HGVS.

If implementers have additional variant annotations, the Variant profile is defined to allow flexibility. See the section on [flexibility](general.html#flexibility) for additional guidance, especially the guidance for the Open Slicing allowed on `Observation.component`.

#### Note on Molecular Consequence in STU2

The [STU2 Variant](https://hl7.org/fhir/uv/genomics-reporting/STU2/StructureDefinition-variant.html) profile contained the component slice `molecular-consequence`, which is no longer present in this profile. The functionality to communicate predicted molecular consequences has been moved to the [ Molecular Consequence](StructureDefinition-molecular-consequence.html) profile. For those that have already implemented the STU2 solution and are in a transition, [open slicing](general.html#open-slicing) allows components above and beyond those specified in the Implementation Guide and therefore the STU2 method of communicating molecular consequence will not cause conformance errors. This approach should be used carefully and only during a transition period to ensure full compatibility with other systems that implement the full features of this guide.
