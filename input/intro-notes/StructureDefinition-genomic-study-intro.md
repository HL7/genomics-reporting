The details of a performed genomic study are captured as genomic study analysis instances, referenced via the genomic study's genomic-study-analysis-ext extension.

> **STU Note:** Genomic Study and Genomic Study Analysis profiles are backported from the [FHIR R5 GenomicStudy resource](https://hl7.org/fhir/R5/genomicstudy.html).
{:.stu-note}

### Scope and Usage

A genomic study instance aims at delineating relevant information of a performed genomic study. A genomic study might comprise one or more analyses, each serving a specific purpose. These analyses may vary in method (e.g., karyotyping, CNV, or SNV detection), performer, software, devices used, or regions studied.

A genomic study instance describes relevant information including the reasons, purpose, and performers of the study. It also provides technical endpoints to access these data. It serves as a logical aggregator for complex genomic analyses.

A genomic study instance might be based on one or more service requests or care plans. The reasons for performing a genomic study might be driven by specific Conditions or Observations. Although the genomic study subject is the focus of the study, the analysis-level focus could be used to specify other relevant subjects or specimens. For example, trio testing may involve three subjects: the proband, and both parents. The proband would be the subject listed directly under the genomic study, while each of the analyses could represent proband, mother, and father genomic analyses.

In clinical use, the study interpreters use all the results of these various analyses to provide diagnostic and therapeutic insights for the patient, where performers are listed according to their participation in each genomic analysis. Each analysis may be based on a set of defined protocols that may differ from the performed protocols.

Detailed information about the results of the analyses may be represented by Observations and gathered in a [Genomic Report](StructureDefinition-genomic-report.html). Both resources may refer back to the originating genomic study to allow navigation.

#### Example Walkthrough

The following figure is based on the [Procedure/lungMass](Procedure-lungMass.html) example. Some things to note:

* A genomics report can reference 0..* genomic studies.
* A genomic study's code codifies the overall test that was performed.
* A genomic study can reference genomic study analyses.
* A genomic study analysis' method characterizes the technique(s) used to perform the particular analysis.
* A genomic study analysis' change type characterizes the type(s) of molecular alterations detectable by the analysis.
* A genomic study analysis can reference BED files that provide precise sequencing coverage regions.
* A genomic study analysis can reference a VCF file generated via the analysis.
* Variant and other observations can explicitly reference the genomic study from which the observation was derived.

<div style="text-align: left; margin: 20px 0; clear: both; overflow: hidden;">
<img src="genomicStudy.png" alt="genomic study" style="max-width: 100%; display: block; margin: 0; float: none;" />
</div>
