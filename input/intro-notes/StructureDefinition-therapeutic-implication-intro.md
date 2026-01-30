This section provides guidance for genomic reporting about the implication of a patient's genetics on the behavior of one or more medications or other therapeutic alternatives (such as clinical trials).
    
This portion of the implementation guide relies on the content in the [General Genomic Reporting](general.html) and [Variant Reporting](sequencing.html) portions of this implementation guide. Pharmacogenomic reports supplement this information with a set of pharmacogenomic-specific implication profiles. Implementers of pharmacogenomic reporting may also be interested in the [Somatic Reporting](somatics.html) section of this implementation guide.

### Communicating disease or tumor context
  
In general, treatments and medications have a set of indications for use which are not explicitly stated. However, if a pharmacogenomics statement has a specific context of a disease or a tumor use the component `phenotypic-treatment-context` to indicate the disease.

### Pharmacogenomic-specific Genomic Implications
  
<div style="text-align: left; margin: 20px 0; clear: both; overflow: hidden;">
<img src="4-pharmacogenomics-fig1-implications.png" alt="Diagram showing the 3 medication implication profiles and the associated Medication Recommendation task" style="max-width: 100%; display: block; margin: 0; float: none;" />
</div>
  
**Figure 1: Pharmacogenomic Implications**

(Profile links:
    [Genomic Implication](StructureDefinition-implication.html),
    [ Therapeutic Implication](StructureDefinition-therapeutic-implication.html),
    [ Medication Recommendadtion](StructureDefinition-medication-recommendation.html))

There are two ways to communicate details about a medication whose implication is being described. The profile component `medication-assessed` is the place to communicate a simple code for the medication. If more detail about the medication is to be shared, use the extension named `medication-assessed-reference`. The extension can refer to a [Medication]({{site.data.fhir.path}}medication.html) or [MedicationKnowledge]({{site.data.fhir.path}}medicationknowledge.html) resource. This might be used to share specific [classification details]({{site.data.fhir.path}}medicationknowledge-definitions.html#MedicationKnowledge.medicineClassification) if they are important as part of the implication being described. It is important to note that since there two ways to do this, implementers SHALL ensure consistent usage. If both the extension and component are used at the same time, they SHALL deliver the same medication. Because this is an international profile, no guidance is provided on drug coding systems.

It is important to note there are also two ways to communicate details about non-medication therapies (e.g. altered diet, radiation therapy, surgery, etc.). The profile component `therapy-assessed` is the place to communicate a simple code for the therapy. If more detail about the therapy is to be shared, use the extension named `therapy-assessed-reference`. The extension can refer to a [CarePlan]({{site.data.fhir.path}}careplan.html), [ResearchStudy]({{site.data.fhir.path}}researchstudy.html), or [PlanDefinition]({{site.data.fhir.path}}plandefinition.html) resource. It is important to note that since there two ways to do this, implementers SHALL ensure consistent usage. If both the extension and component are used at the same time, they SHALL deliver the same therapy. Because this is an international profile, no guidance is provided on therapy coding systems.

The component `therapeutic-implication` lists one or more ramifications based on the presence of associated molecular finding(s), which may include:

- Alterations in drug metabolism (or pharmacokinetics) that determine the concentration of the drug, prodrug, and/or break-down products over time;
- Alterations in drug efficacy (or pharmacodynamics) that determine how effective a drug is at a given concentration;
- Alterations that alter the risk of adverse drug events, or other types of implications that indicate altered responsiveness to other types of therapies or eligibility for clinical trials;
- Other pharmacogenomic statements as necessary, by extending the valueSet.

### Including Pharmacogenomic recommended actions
  
To associate a therapeutic implication instance with a recommendation (e.g. discontinuing a medication, altering dosage, choose alternative medication) use [Medication Recommendation](StructureDefinition-medication-recommendation.html), [Followup Recommendation](StructureDefinition-followup-recommendation.html), along with current medication if appropriate. Use the [Related Artifact]({{site.data.fhir.ver.hl7ext}}/StructureDefinition-workflow-relatedArtifact.html) extension for supporting documents such as CPIC guidelines.

Medication Recommendation tasks link to therapeutic implications through `reasonReference` and are included in the report using the [recommended-action](StructureDefinition-genomic-report-definitions.html#DiagnosticReport.extension:recommended-action) extension. The therapeutic implications do not have a link to medication recommendations, so the [revinclude]({{site.data.fhir.path}}search.html#revinclude) search parameter can be used to find the therapeutic implication statements relevant to the recommendations.

Note: If multiple medications are used in medication assessed, the usage implication should describe the combined effect.

Note 2: Implementers may also be interested in the [Somatic Reporting](somatics.html) and [Pharmacogenomics Reporting](pharmacogenomics.html) sections of this implementation guide.

### evidence-level versus clinical-significance
	
See [Genomic Implication](StructureDefinition-implication.html#evidence-level-versus-clinical-significance) for guidance.

### Differentiating AND vs OR
	
See [Genomic Implication](StructureDefinition-implication.html#differentiating-and-vs-or) for guidance. Implication fields affected by this guidance include: derivedFrom, evidence-level, therapeutic-implication, phenotypic-treatment-context, medication-assessed, therapy-assessed.
