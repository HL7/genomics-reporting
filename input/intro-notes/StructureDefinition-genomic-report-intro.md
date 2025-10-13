### Scope and Usage
  
The [genomic report](StructureDefinition-genomic-report.html) is the focus of all genomic reporting. It conveys metadata about the overall report (what kind of report it was, when it was written, who wrote it, final vs. draft, etc.). It also typically includes a rendered version for review by a clinician. It also groups together all relevant information found as part of the genomic analysis (Rules for relevancy will depend on the type of testing ordered, the reason for testing and the policies of the lab). Most of the structured genomic information is expressed as FHIR [Observations]({{site.data.fhir.path}}observation.html). Any recommendations that come with the report are expressed as FHIR [Tasks]({{site.data.fhir.path}}task.html). The report can be organized into sub-reports using core DiagnosticReport extensions like [extends]({{site.data.fhir.ver.hl7ext}}/StructureDefinition-diagnosticReport-extends.html) or [summaryOf]({{site.data.fhir.ver.hl7ext}}/StructureDefinition-diagnosticReport-summaryOf.html), which is especially useful for later analysis steps. Additionally, an observation can be used to [group](groupingguidance.html) content for viewing purposes or to indicate a higher-level panel (with a specific LOINC panel code in the `Observation.code` for example).

<div style="text-align: left; margin: 20px 0; clear: both; overflow: hidden;">
<img src="general-report-overview.png" alt="Class diagram showing the high-level categories of the component parts in a genomic diagnostic report" style="max-width: 100%; display: block; margin: 0; float: none;" />
</div>
  
**Genomic Report Overview**
