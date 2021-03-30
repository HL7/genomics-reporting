### Overview
This section provides an example mapping from a Pharmacogenomics genetic report to FHIR using the HL7 clinical genomics Implementation guide. This is useful for developing genomic reporting, based on the impacts of a patient's genetics on the behavior of medications, as well as recommended adjustments to medication based on these impacts. This type of testing and reporting are commonly referred to as Pharmacogenomics (PGx). The intention of this section is to provide a “User Guide”, based on a specific report example, with the goal of providing a clear “how to” guide for developing a PGx report.

Although this guide attempts to provide all of the information necessary to develop a PGx report, it relies on content in the ALL THE PORTIONS OF THE GUIDE  [General Genomic Reporting] and [Variant Reporting Genomic Implications] portions of the genomics implementation guide.

The User Guide incorporates work done by the eMERGE (Electronic Medical Records and Genomics) program, funded by the National Human Genome Research Institute (NHGRI). The Clinical Genomics Working Group has worked closely with the eMERGE program and we are grateful to them for allowing us to leverage their work in this PGx user guide. This guide is distinct from eMERGE’s implementation in important ways and will continue to evolve as the standard evolves. *see note

### HOW TO USE THIS GUIDE
The guide is composed of three figures. Figure 1 is an overview of the components of a PGx report, figure 2 is a schema the use of the components of the HL7 Clinical Genomics WG Implementation Guide, figure 3 is an example report with each element of the report mapped to the schema in figure 2. Use the numbers in each figure to find where the section/element goes. For example, #7 in figure 1 is information about the performing lab. In figure 2, #7 indicates an instance of the Organization Resource for the performer which would be a link through the performer element in the Genetics Diagnostic report. In figure 3, #7 indicates specific information about the performing lab found in the sample report. Thus, the specific performing lab information in figure 3 maps to an instance profile of Organization Resource linked to the Genetic Diagnostic report (#7 in figure 2).


### Ordering a Pharmacogenomic Report
In order to receive a PGx report, you must first order a PGx test. Genomic tests, like all laboratory tests, are ordered using the [Service Request Resource](http://hl7.org/fhir/servicerequest.html). In this case, the [Request for Genomics Test](StructureDefinition-servicerequest.html) should be used for ordering the PGx text. Please see the links for more information about these resources. An additional overview of the general relationships involved in ordering a report and receiving the results can be found [here]().

NOTE: INSERT SNIPPET OF CODE SHOWING THE ORDER/SERVICE REQUEST 

Show an XML and JSON snippet for a PGx ServiceRequest to “order” the PGx test in this example


### Overview: Return of Results for a PGx Report
The diagram below provides a color-coded/numbered “legend” for this PGx report example, shown as if it were a PDF. This diagram and the other related images, should provide you with a clear understanding of how the various FHIR PGx resources may be used when constructing a PGx report. 
 To make use 

Figure 1: Color-coded/Numbered “Legend” for PGx Report 

### Example Schema for PGx Reporting
The Schema below depicts a “decomposition” of the PGx FHIR resources used to construct the example report. The color coding and numbers in the schema are mapped via the legend (image above) to the detailed PGx report shown in Figure #3.

Figure 2: Example PGx Report Schema

This PGx report, like all genomic reporting, is based on our [diagnostic report](StructureDefinition-genomics-report.html) profile. It conveys metadata about the overall report and carries multiple “result”  [Observations](http://hl7.org/fhir/R4/observation.html).

All of the observations may “hang” directly off of the [Genomics Report](StructureDefinition-genomics-report.html). However, they can also be part of a [Genomics Grouper](StructureDefinition-grouper.html). The Grouper Profile is used in this example PGx report to group all PGx-specific content (Therapeutic Implications and their derived Variants and Genotypes) into one section for viewing purposes. Note that the grouping by this profile does not add additional meaning to its child Observations. It is used just for convenience of presentation. Other configurations of one or more Groupers would also be valid, as no pre-coordinated groupings are recommended in this IG.

All pharmacogenomic implications are intended to be communicated using components within the [Therapeutic Implication](StructureDefinition-therapeutic-implication.html) profile. The Medication-assessed component of this profile, is the place to communicate the medication whose implication is being described, including a place for the coded value of the medication. Because this is an international profile, no guidance is provided on the medication coding system to be used. Instead, the appropriate code system for the jurisdiction, can and should be used. 

To associate a Therapeutic-implication instance with a recommended action (e.g. discontinuing a medication, altering dosage, "choose alternative medication") use Medication Usage Implication, Recommended action and Current Medication. Use related artifact in Therapeutic-implication to supply additional or supporting information, such as CPIC guidelines.

In Figure 3 the recommendation is atypical of other reports, there is not a recommended action such as “discontinue use” or “raise dose.’’ Specific recommended actions for each medication would use the Medication Task Resource to accommodate dosing instructions. The use of the task resource for medication is exemplified in (LINK TO EXAMPLE FROM Kevin in the IG with medication task resource). Please refer to the medication guidance in FHIR core for the best format to deliver specific medication guidance. 

In this report example, the text which explains the methodology of the test, was modelled using the [PlanDefinition](https://www.hl7.org/fhir/plandefinition.html) resource (#5 in the schema). The clinical genomics work group has not yet determined the value of providing a profile on PlanDefinition, and requests community feedback on use of PlanDefinition vs Observation.method, relatedArtifact pointing out PDFs hosted on lab websites, etc for describing methodology details.

Figure 3: Detailed PGx Report Example - Mapped to Schema

### Creating the Example FHIR PGx Report
In the example used in this User Guide, the PGx results are based on diplotypes (star alleles), found in each relevant PGx gene that is covered by the PGx gene panel. These diplotypes are then used as a basis for relating PGx gene-drug knowledge implications. For this example,  these PGx implications or PGx phenotype interpretations fall into three classes which were “hard coded” into the report selection; metabolism, transporter, and efficacy. 

NOTE: Provide an “easy” to understand version of sample code (in both XML and JSON) by including an editing version which does code for the grouper, but then only the results for a single gene. Show formatted code as in examples below. 
	Brainstorm:
1. FSH resource that’s useful - Grouper maybe?
1. Can we provide link to complete code to create the report?
  * Link to a full example of the code on a separate page in the IG (format if possible, rather than just showing “raw” code) 


The following table contains the resources most commonly used when constructing PGx reports:


| Profile | Description of PGx usage | Example links | Additional Notes (code systems/etc) |
|:------- |:------------------------ |:------------- |:----------------------------------- |
| [Genomic Report](StructureDefinition-genomics-report-definitions.html) | Intended to capture a single report and is not suitable for use in displaying summary information that covers multiple reports | Jamie to Provide | |
| [Overall genomic Interpretation](StructureDefinition-overall-interpretation.html) |High-level observations of the result of the genomic testing | | |
| [Genotype](StructureDefinition-genotype.html) | | | Diplotype |
| [Variant](StructureDefinition-variant.html)  | | | Discrete data - for the cyp2c19 there will be derived from links in the top level instance of variant profile |
| [Grouper](StructureDefinition-grouper.html)  | Grouper can be leveraged to organize in a wide variety of ways | | |
| [Region Studied](StructureDefinition-region-studied.html) | The Region Studied profile is used to assert actual regions studied for the performed test(s). Intended coverage areas may differ from actual coverage areas (e.g. due to technical limitations during test performance). This Observation does not carry a value. | | |
| [Therapeutic Implication](StructureDefinition-therapeutic-implication.html) | All pharmacogenomic implications are intended to be communicated using components within the  Therapeutic Implication profile, which has properties for observations that convey the potential impact of genomic characteristics on a medication or non-medicinal therapy | <b>Component</b> <br/><b>code</b>: Genetic variation's effect on high-risk allele <br/><b>value</b>: High risk <br/><br/><br><b>Component</b></br><br/><b>code:</b> Medication assessed<br/><b>value</b>: Carbamazepine|1 medication per Observation<br/>Sometimes derives from multiple genotypes |
| [Medication Usage Implication](StructureDefinition-task-med-chg.html) | Task describing what sort of change (if any) should be made in a patient’s medication based on an identified finding | code: Consider alternative medication <br/>description: Patients positive for this allele should not be treated with CBZ unless the benefits clearly outweigh the risk. Therapy should be discontinued immediately if symptoms of SJS or TEN develop. | |
| [Recommended Action](StructureDefinition-task-rec-followup.html) |References a proposed action that is recommended based on the results of the diagnostic report | | |
| [Related Artifact](StructureDefinition-RelatedArtifact.html) | Captures citations, evidence and other supporting documentation for the observation or report | | |
| [Plan Definition](https://www.hl7.org/fhir/plandefinition.html) | A plan definition is a pre-defined group of actions to be taken in particular circumstances, often including conditional elements, options, and other decision points. The resource is flexible enough to be used to represent a variety of workflows, as well as clinical decision support and quality improvement assets, including order sets, protocols, and decision support rules | | |
{: .grid}

This Artifact List provides a comprehensive listing of the FHIR artifacts defined as part of the Genomics Implementation Guide and may be helpful when developing the PGx report. 

*For further information about the eMERGE Program, see: Pre-Print Journal Article: "Genomic Considerations for FHIR; eMERGE Implementation Lessons" and eMERGE Network Website
* Notable changes from the eMERGE docs include:
1. Extensions - 
1. RegionStudied
1. 

--------------------------------------------------------

IMPORTANT NOTE:

 We had decided that the current page for Pharmacogenomic Reporting (http://build.fhir.org/ig/HL7/genomics-reporting/pharmacogenomics.html) must be moved in front of the current detailed pages for Therapeutic Implication - WHO will ensure this is done? 

