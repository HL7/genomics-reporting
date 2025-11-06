### Scope {#scope}

Genomics is a rapidly evolving area of healthcare that involves complex data structures. There is significant value in sharing this information in a way that is consistent, computable and that can accommodate ongoing evolution of medical science and practice. At present, this implementation guide focuses solely on data structures - what data should be/might be present and how it should be organized. It does not address workflows around how reports are requested, created, approved, routed, delivered, amended, etc.

This guide covers many aspects of genomic data reporting, including:

- Representation of simple discrete variants, structural variants including copy number variants, complex variants as well as gross variations such as extra or missing chromosomes
- Representation of both known variants as well as fully describing de novo variations
- Germline and somatic variations
- Relevance of identified variations from the perspective of disease pathology, pharmacogenomics, transplant suitability (e.g., HLA typing), etc.
- Full and partial DNA sequencing, including whole genome and exome studies

### How to Use this Guide {#how-to-use-this-guide}

This implementation guide is organized into a set of sections. All implementers intending to do clinical genomic reporting should read the [General Genomic Reporting](general.html) and the [Variant Reporting](sequencing.html) sections. To understand the key profiles in this IG, as well as their relationship to one another, start with the General Genomics Reporting section. Those new to FHIR should review the Understanding FHIR section below.

The remaining sections provide support for more specialized types of reporting. If your system is involved with genomic reports in a particular area, then read through that section of the implementation guide for further guidance.

| Section | Description |
|---------|-------------|
| [Background](background.html) | Introduces some of the key genomics terms and relationships that should be understood by those implementing this specification. |
| [General Genomic Reporting](general.html) | Overall guidance in using the profiles and transactions defined in this guide. Guidance and examples for the general structure of genomic reports, how to report overall interpretations and how to report genotypes, haplotypes, and different types of variants. |
| [Variant Reporting](sequencing.html) | Guidance on expressing information about variants gleaned from various sequencing approaches including direct sequencing, shotgun sequencing, array-based testing, etc. |
| [Pharmacogenomic Reporting](pharmacogenomics.html) | Guidance and examples related to genomic testing done for the purpose of assessing genomic variations' implication on the use of medications - both for oncology and for general patient treatment. |
| [Somatic Reporting](somatics.html) | Guidance related to genomic testing done on somatic (non-germline) tissues, including assessments of tumors. |
| [Histocompatibility Reporting](histocompatibility.html) | Guidance related to genomic testing done for histocompatibility and immunogenomics assessments, including HLA typing. |
{:.grid}

### Guiding principles {#principles}

This guide adheres to a set of design approaches:

- It is intended to be international in scope and only leverages terminologies which are freely available to all countries.
- It avoids pre-coordinating the type of variant, medication, or other information into the Observation.code as this makes it easier to leverage industry standard terminologies for genomic information (e.g., HGVS) and avoids needing to duplicate this information into observation coding systems such as LOINC.
- It maximizes the use of resources that are in common use by laboratory reporting systems for other clinical areas - specifically [Observation]({{site.data.fhir.path}}observation.html) and [DiagnosticReport]({{site.data.fhir.path}}diagnosticreport.html). This eases implementation and also reduces the chance of data being lost by systems that might not have been designed to specifically accommodate genomic-related information.
- It minimizes the use of FHIR extensions, also with an objective of reducing the risk of data loss when information is passed to systems that might not explicitly support this implementation guide.
- It uses separate observations for each independently useful assertion. This makes the data discoverable and queryable as seen in the [query guidance](usecases.html). Also review the guidance on the proper usage of [contained]({{site.data.fhir.path}}references.html#contained) resources.
- It tries to ensure that data is captured in a manner that's consistent regardless of the type of testing that was done to ensure data can be consistently queried even if captured differently (e.g., variations identified in assay tests are reported in the same manner as those identified through direct sequencing).
- The guide allows for variability in the amount of discrete information captured. Systems are encouraged to populate what discrete elements they can and allows for the possibility of systems populating additional elements as their technical capability and/or time and other resources allow.

Together, these principles should make adoption easier and allow systems to more easily adapt in a compatible way as genomic reporting continues to evolve.

### Previous Specifications {#previous}

FHIR STU3 included a set of profiles that provided guidance on how to convey genomic orders, results, and observations. Those profiles are superseded by this implementation guide. Guidance for converting from these older profiles is found [here](conversion.html).

### Understanding FHIR {#fhir}

This implementation guide is based on the HL7 [FHIR]({{site.data.fhir.path}}index.html) standard. It uses terminology, notations and design principles that are specific to FHIR. Before reading this implementation guide, it's important to be familiar with some of the basic principles of FHIR as well as general guidance on how to read FHIR specifications. Readers who are unfamiliar with FHIR are encouraged to read (or at least skim) the following prior to reading the rest of this implementation guide.

- [FHIR overview]({{site.data.fhir.path}}overview.html)
- [Developer's introduction]({{site.data.fhir.path}}overview-dev.html)
- (or [Clinical introduction]({{site.data.fhir.path}}overview-clinical.html))
- [FHIR data types]({{site.data.fhir.path}}datatypes.html)
- [Using codes]({{site.data.fhir.path}}terminologies.html)
- [References between resources]({{site.data.fhir.path}}references.html)
- [How to read resource & profile definitions]({{site.data.fhir.path}}formats.html)
- [Base resource]({{site.data.fhir.path}}resource.html)
- [FHIR Validation]({{site.data.fhir.path}}validation.html)

It is highly recommended that readers review [Diagnostics Module]({{site.data.fhir.path}}diagnostics-module.html) and review the resources that are used as part of this implementation guide, especially [Observation]({{site.data.fhir.path}}observation.html), [DiagnosticReport]({{site.data.fhir.path}}diagnosticreport.html), and [MolecularSequence]({{site.data.fhir.path}}molecularsequence.html).

Importantly, implementers should pay close attention to the considerations in [Associated Observations]({{site.data.fhir.path}}diagnosticreport.html#10.3.5.3) and [Observation Grouping]({{site.data.fhir.path}}observation.html#obsgrouping) describing proper usage of the relationships `DiagnosticReport.result`, `Observation.hasMember`, and `Observation.derivedFrom`. Consumers of **Genomic diagnostic reports** MUST navigate through all `hasMember` relations, and navigate through `derivedFrom` relationships in order to ensure all clinically relevant information is seen.

Many Observation profiles and components in this guide require sending codes from http://loinc.org. If necessary for implementation (e.g., to map to a local system), equivalent codes from other code systems may *also* be sent, following the [guidance]({{site.data.fhir.path}}observation.html#usingcodes) on observation.

Since this Implementation Guide is not targeting a specific country or region, other requirements may be needed for local reporting. Observation instances adhering to other profiles should be built to validate against one of this Implementation Guide's profiles wherever possible. Where incompatibilities may arise, it is most important to align with the codes and values for Observations and their components.

### Extending beyond this Guide {#flexibility}

Implementers should use this guide to structure genomics data in an interoperable way. The Clinical Genomics Working Group understands that this guide is not complete, and implementers might identify additional concepts and data elements. Please review this [guidance](general.html#flexibility) for ways to handle those use cases.

### Dependencies

{% include dependency-table.xhtml %}

### Global Profiles

{% include globals-table.xhtml %}

### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

### IP Statements

{% include ip-statements.xhtml %}

### Appendices {#appendices}

| Appendix | Description |
|----------|-------------|
| [Appendix A: Relation to v2 reporting](v2.html) | Links to v2 Genetic Variation Model Implementation Guide and v2 Cytogenomic Model Implementation Guide |
| [Appendix B: Clinical Genomics Apps](cgapps.html) | Introduction of the Clinical Genomics Applications (Genomics Advisor, etc) apply for this implementation guide |
| [Appendix C: Domain Analysis Model](domain.html) | A domain analysis model for various use cases in clinical genomics |
| [Appendix D: Query Guidance](usecases.html) | Query guidance based on use-cases from the Domain Analysis Document |
| [Appendix E: External Coding Systems](codings.html) | Reference for publicly available external coding systems |
| [Appendix F: Conversion from FHIR Core STU3](conversion.html) | Notes on since deprecated extensions defined in FHIR Core STU3 |
| [Appendix G: Molecular Sequence](molecularsequence.html) | Notes on the FHIR Resource for representing a Molecular Sequence |
| [Appendix H: Grouping observations](groupingguidance.html) | Guidance on the types of grouping that might be encountered |
| [Appendix I: Glossary](glossary.html) | Table of concepts referenced on Observation profiles |
{:.grid}

### Acknowledgments {#acknowledgments}

The Genomics Reporting Implementation Guide is a product of the [HL7 Clinical Genomics Work Group](https://confluence.hl7.org/display/CGW/WorkGroup+Home). The work group welcomes and actively encourages feedback on this guide. Whether you have questions regarding its usage, recommendations for improvement, or identify any issues requiring correction, please don't hesitate to reach out to us! You may propose a change (see link at the bottom of the page), reach out on [Zulip](https://chat.fhir.org/#narrow/stream/179197-genomics) to chat, or email the Work Group at [clingenomics@lists.hl7.org](mailto:clingenomics@lists.hl7.org).

The authors of this guide wish to recognize the following participants who contributed their time and expertise to the continued development of this guide:

| Name | Organization | Role |
|------|-------------|------|
| Srikar Chamala | Childrens Hospital of Los Angeles | CG Co-Chair |
| Willie Chang | Epic | Contributor |
| Bob Dolin | Elimu Informatics | Contributor |
| Bob Freimuth | Mayo Clinic | CG Co-Chair, IM Sub-Group Lead |
| Bret Heale | Intermountain | Contributor |
| Arthur Hermann | Kaiser Permanente | Contributor |
| Jamie Jones | Boston Children's Hospital | CG Co-Chair, Modeling Sub-Group Lead |
| Aly Khalifa | Mayo Clinic | Contributor |
| Anand Kulanthaivel | Clinical Architecture | Contributor |
| Lloyd McKenzie | Dogwood Consulting | Contributor |
| Mullai Murugan | Baylor College of Medicine | Contributor |
| JD Nolen | Children's Mercy Hospital | Contributor |
| Kevin Power | Children's Mercy Hospital | Contributor |
| Joel Schneider | NMDP/CIBMTR | Contributor |
| May Terry | MITRE Corporation | CG Co-Chair |
| Michael Watkins | University of Chicago | CG Co-Chair |
| Patrick Werner | MOLIT Institut | CG Co-Chair |