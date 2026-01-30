Genomic observations can be organized and grouped together in a wide variety of ways. This page is a brief guidance on how observations might be grouped. Generally, grouping is used to provide a visualization which may be helpful to a developer. An exception is grouping a panel, where the appropriate panel code is used (e.g., a specific Panel LOINC code in an observation used to tie all the variants of the panel together). Implementers should pay close attention to the considerations in [Associated Observations]({{site.data.fhir.path}}diagnosticreport.html#10.3.5.3) and [Observation Grouping]({{site.data.fhir.path}}observation.html#obsgrouping) describing proper usage of the relationships "diagnosticReport.result", "Observation.hasMember", and "Observation.derivedFrom". With any form of grouping or Panels, a system consuming a Genomic Diagnostic Report MUST navigate through all `hasMember` relations and navigate through `derivedFrom` relationships, to ensure that all clinically relevant information is seen.

### Overview with examples {#grouper}

Observations are the core representation of structured genomic information. Result observations profiles are typically referenced directly in a Diagnostic Report (e.g., the [genomic report](StructureDefinition-genomic-report.html)). The genetic findings and implication profiles all contain links to computably define which profiles go together (e.g., the variant observation is referenced within the implication profile using `derivedFrom`). That is, the relationships define a semantic grouping, a composite relationship between implication, haplotype, or genotype observations and the appropriate variant observation(s).

However, sometimes it is desired to group observations with a grouping observation. In this version of the specification, no guidance is provided on where or if a grouping observation should be used (the HL7 Orders and Observation work group owns the Observation resource and may issue guidance in the future). This is left up to the discretion of the reporting lab. Currently, observations might be organized for visualization purposes on the basis of subject, specimen, chromosome, gene, condition/disease, medication, etc. The recursive `hasMember` relationship on observation supports a nested tree-structure of observations if appropriate, though more than two levels of grouping observations is likely excessive. This [example](Bundle-bundle-oncologyexamples-r4-withGrouping.html) uses grouping to separately reference variants and other Observations as results of the report. For a version of the same report without grouping see this example [without grouping](Bundle-bundle-oncologyexamples-r4.html). In the grouping examples, the NCI Metathesaurus code C43359 (for 'Group' or 'Panel') is used for the grouping `Observation.code` field. Genomic panels that have specific codes, such as a specific LOINC code, could also be used if the grouping observation contains all the elements typically reported by the specific panel.

Click on the images to enlarge them.

#### Example 1: No Grouping Observation

**Example showing diagnostic report directly referencing the resultant genomic observations without grouping** (similar to [this oncology example without grouping](Bundle-bundle-oncologyexamples-r4.html) and [this pharmacogenomics example based on EMERGE](DiagnosticReport-PGxGenomicReportEMERGE.html)):

<div style="text-align: left; margin: 20px 0; clear: both; overflow: hidden;">
<a href="./diagnostic-report-no-grouping.png">
<img src="diagnostic-report-no-grouping.png" alt="Example not using a grouping observation" style="max-width: 100%; display: block; margin: 0; float: none;" />
</a>
</div>

#### Example 2: Grouping by Type of Genomic Observation

**Example of grouping on the basis of type of genomic observation**, similar to [the oncology example above](Bundle-bundle-oncologyexamples-r4-withGrouping.html) and [the pharmacogenomics example based on EMERGE](DiagnosticReport-PGxGenomicReportEMERGE-withGrouping.html):

<div style="text-align: left; margin: 20px 0; clear: both; overflow: hidden;">
<a href="./diagnostic-report-groupingObservations.png">
<img src="diagnostic-report-groupingObservations.png" alt="Example of use of a grouping observation" style="max-width: 100%; display: block; margin: 0; float: none;" />
</a>
</div>

#### Example 3: Mixed Use of Grouping

**Example layout of how a mixed use of group could appear.** This is an exaggeration but is meant to give an impression of the mixture grouping observations could allow. Note, there are some genomics observation profiles directly referenced as results and some that are not.

<div style="text-align: left; margin: 20px 0; clear: both; overflow: hidden;">
<a href="./diagnostic-report-MixedUseOfGrouper.png">
<img src="diagnostic-report-MixedUseOfGrouper.png" alt="Mixture of grouping" style="max-width: 100%; display: block; margin: 0; float: none;" />
</a>
</div>

Due to the possibility that a lab may only reference grouping observations as results, consumers of Genomic Diagnostic Reports MUST follow `hasMember` relationships iteratively and `derivedFrom` recursively to ensure that all clinically relevant information is seen. This will ensure complete processing of the `DiagnosticReport` results.

For questions on FHIR querying look here: [query guidance](usecases.html).

Final caveat, any organization of observations into groups or sub-groups is purely for navigation and presentation purposes. It carries no additional "meaning." Each observation can be interpreted on its own without knowing the associated group or sub-group and must be able to stand alone as a resource and be independently valuable. The organization of observations in groups does not assert any relationship between observations.