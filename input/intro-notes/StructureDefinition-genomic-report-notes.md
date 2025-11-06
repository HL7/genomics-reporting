#### Overall Interpretation and Conclusion
  
On the report, it is important to answer the question "Did you find anything when you did the test I asked you to do?" The data sender can use attributes of `conclusionCode` and `conclusion` to represent the summary result of the test (e.g., Positive, Negative, Unknown) and a textual summary. These are typically used when the genomic test was looking for a particular genomically-based disease. It allows indication of whether genomic results known to be associated with the disease were found or not.

#### Linking To Genomic Observations
  
Results observation profiles, like genomic observations, are typically referenced directly by a Genomic Report. The genetic findings and implication profiles all contain links to computably define their composite relationships (e.g., the variant observation is referenced within the implication profile using `derivedFrom`). However, observations could be organized into groups by other observations. See this [grouping guidance](groupingguidance.html) for an overview with examples and considerations for processing reports. Be aware that consumers of Genomic Diagnostic Report MUST navigate through all `hasMember` relations and navigate through `derivedFrom` relationships to ensure processing of all clinically relevant information.

#### Risk Assessments
  
In some cases, the lab or other reporting organization may generate risk assessments as part of their reports. These are referenced from a report or an observation from the [Genomic Risk](StructureDefinition-genomic-risk-assessment.html) extension.

#### Presented Form
  
When sending a copy of the report (e.g., PDF or other document containing the written report), use `presentedForm`. Note this is different from the [Related Artifact]({{site.data.fhir.ver.hl7ext}}/StructureDefinition-workflow-relatedArtifact.html) extension, which is used to reference citations, evidence and other supporting documentation for the observation or report. Another approach which should be avoided (at least for this current release) is the `DiagnosticReport.media` attribute. Its definition focuses on "Key images associated with this report" which does not align well with this use case.

#### Complex Reports
  
If needed, large or complex genomic reports may be broken down into sub-reports using core DiagnosticReport extensions like [extends]({{site.data.fhir.ver.hl7ext}}/StructureDefinition-diagnosticReport-extends.html) or [summaryOf]({{site.data.fhir.ver.hl7ext}}/StructureDefinition-diagnosticReport-summaryOf.html). This approach is particularly useful when different labs or services are performing later steps in the analysis, for example. Or a panel `Observation.code` can be used.
