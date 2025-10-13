This section deals with reporting observations related to cancer genomics. This includes reporting variants found in a tumor specimen, germ-line variants with known links to somatic events such as increasing risk for developing particular cancers, molecular biomarker observations that affect cancer care, and more. Beyond reporting variants and biomarkers, we also provide "implication" profiles to communicate observed links between variants and relevant knowledge bases such as professional guidelines and publications, for diagnostic and therapeutic implications, for predicted oncogenicity, etc. This sort of reporting is particularly prominent when dealing with cancer-related specimens, but can also include transplanted tissue and other forms of mosaicism.

### General guidance {#GeneralGuidance}

At the heart of a typical somatic report are findings ([variants](StructureDefinition-variant.html), [haplotypes](StructureDefinition-haplotype.html), [genotypes](StructureDefinition-genotype.html), [biomarkers](StructureDefinition-molecular-biomarker.html)) and annotations derived from those findings ([diagnostic implications](StructureDefinition-diagnostic-implication.html), [therapeutic implications](StructureDefinition-therapeutic-implication.html), [predicted molecular consequences](StructureDefinition-molecular-consequence.html), [other genomic annotations](StructureDefinition-genomic-annotation.html)), as shown in the following figure:

<div style="text-align: left; margin: 20px 0; clear: both; overflow: hidden;">
<img src="Somatic_General_Guidance.svg" alt="generalGuidance" style="max-width: 100%; display: block; margin: 0; float: none;" />
</div>

<!-- 
These constructs are assembled within the broader context of the [Genomics Report](StructureDefinition-genomic-report.html), which generally contains information about the [specimen(s)](http://hl7.org/fhir/R4/specimen.html) and providers and organizations involved in the ordering and testing process. The report may also contain details about the [genomic study](StructureDefinition-genomic-study.html) analyses used to obtain the findings, as shown in the following figure:
-->
> **ToDo Note:** GenomicStudy details tbd
>
> These constructs are assembled within the broader context of the [Genomics Report](StructureDefinition-genomic-report.html), which generally contains information about the [specimen(s)]({{site.data.fhir.path}}specimen.html) and providers and organizations involved in the ordering and testing process. The report may also contain details about the [genomic study]({{site.data.fhir.path}}genomicstudy.html) analyses used to obtain the findings, as shown in the following figure:

<div style="text-align: left; margin: 20px 0; clear: both; overflow: hidden;">
<img src="Somatic_Report_Overview.svg" alt="Somatic report overview" style="max-width: 100%; display: block; margin: 0; float: none;" />
</div>

### Building a Somatic Report: An Example {#SampleReportBuilding}

This section provides a walk-through of mapping from an example somatic report to FHIR using the structure definitions and guidance defined in this IG. A somatic report focuses on the implications of a patient's genetics (generally the therapeutic implications of somatic variants). The somatic report is represented as a Genomics Report. The related observations and other resources are referenced by the report. The intention of this section is to provide a "User Guide", based on a specific report example, highlighting how the defined profiles can be used together to encode important relations in somatic reporting.

The following four images are pages 1-4 of a synthetic somatic report that is designed to illustrate a wide range of findings and implications.

<div style="text-align: left; margin: 20px 0; clear: both; overflow: hidden;">
<img src="Report_Page1.svg" alt="report page 1" style="max-width: 100%; display: block; margin: 0; float: none;" /> 
<img src="Report_Page2.svg" alt="report page 2" style="max-width: 100%; display: block; margin: 0; float: none;" />
<img src="Report_Page3.svg" alt="report page 3" style="max-width: 100%; display: block; margin: 0; float: none;" />
<img src="Report_Page4.svg" alt="report page 4" style="max-width: 100%; display: block; margin: 0; float: none;" />
</div>

### Example FHIR Genomics instances {#ExampleSnippets}

<!--The entire bundle containing all FHIR Genomics instances for this detailed somatic example is [here](Bundle-bundle-somaticReportPDFdraftExamples.html).--> The somatic GenomicsReport which connects to all the FHIR Genomics instances for this detailed somatic example is [here](DiagnosticReport-somaticReport.html). A mapping spreadsheet is provided [here](https://chat.fhir.org/user_uploads/10155/-05xEKSs8tWp4qE3bCcA_Fvz/Somatic_Report_Only.xlsx). Alternatively, look in the table below for just those profiles of interest. (The numbers in the 'Label' column correspond to the numbers in the figures up above).

> **ToDo Note:** GenomicStudy details tbd.

| Label | Resource / Profile | Description of somatic usage | Example(s) | Example Notes |
|-------|-------------------|------------------------------|------------|---------------|
| 1 | [Genomics Report](StructureDefinition-genomic-report.html) | Primary container of the overall report, including a report conclusion. | [somaticReport](DiagnosticReport-somaticReport.html) | |
| 2 | [Patient]({{site.data.fhir.path}}patient.html) | The genomics report references the subject of the report, usually the patient. | [somaticPatient](Patient-somaticPatient.html) | |
| 3 | [Specimen]({{site.data.fhir.path}}specimen.html) | The genomics report references specimens that this report is based on. | [tumorSpecimen](Specimen-tumorSpecimen.html), [normalSpecimen](Specimen-normalSpecimen.html) | |
| 4 | [Service Request]({{site.data.fhir.path}}servicerequest.html) | The genomics report can reference orders that lead to the testing being reported. | [somaticServiceRequest](ServiceRequest-somaticServiceRequest.html) | |
| 6 | [Organization]({{site.data.fhir.path}}organization.html) | The genomics report is referring to the organization that performed the reported test. | [performingOrganization](Organization-performingOrganization.html) | |
| 6 | [Practitioner]({{site.data.fhir.path}}practitioner.html) | The genomics report can reference providers in various roles, such as the provider that ordered the test (indirect referencing through the service request), or the providers that perform or supervise the lab testing. | [orderingPractitioner](Practitioner-orderingPractitioner.html), [pathologistPractitioner](Practitioner-pathologistPractitioner.html), [supervisorPractitioner](Practitioner-supervisorPractitioner.html) | |
| 8 | [Variant](StructureDefinition-variant.html) | The genomics report can reference variants and other findings identified via testing. | [NOTCH1-uncertain-var](Observation-NOTCH1-uncertain-var.html), [ZFHX3-uncertain-var](Observation-ZFHX3-uncertain-var.html), [MSH2-del-var](Observation-MSH2-del-var.html), [NTHL1-snv-var](Observation-NTHL1-snv-var.html), [STAG2-insertion-var](Observation-STAG2-insertion-var.html), [ATR-insertion-var](Observation-ATR-insertion-var.html), [EGFR-L858R-var](Observation-EGFR-L858R-var.html), [ROS1-Fusion-var](Observation-ROS1-Fusion-var.html) | |
| 9 | [Diagnostic Implication](StructureDefinition-diagnostic-implication.html) | The genomics report can include various types of genomic annotations such as diagnostic implications related to identified variants / haplotypes / genotypes / biomarkers. | [NOTCH1-significance](Observation-NOTCH1-significance.html), [ZFHX3-significance](Observation-ZFHX3-significance.html), [MSH2-del-disease](Observation-MSH2-del-disease.html), [NTHL1-snv-disease](Observation-NTHL1-snv-disease.html), [STAG2-insertion-significance](Observation-STAG2-insertion-significance.html), [ATR-insertion-significance](Observation-ATR-insertion-significance.html), [EGFR-L858R-significance](Observation-EGFR-L858R-significance.html), [ROS1-Fusion-disease](Observation-ROS1-Fusion-disease.html) | Variant annotation knowledgebases generally differ in the types of annotations they supply. Different labs can potentially report different annotations. Annotations supplied by a lab can become out of date as genomics knowledge advances. |
| 10 | [Therapeutic Implication](StructureDefinition-therapeutic-implication.html) | The genomics report can include various types of genomic annotations such as therapeutic implications related to identified variants / haplotypes / genotypes / biomarkers. | [ROS1-Fusion-therapuTrial](Observation-ROS1-Fusion-therapuTrial.html), [ROS1-Fusion-therapuDrug](Observation-ROS1-Fusion-therapuDrug.html), [EGFR-L858R-therapuDrug1](Observation-EGFR-L858R-therapuDrug1.html), [EGFR-L858R-therapuDrug2](Observation-EGFR-L858R-therapuDrug2.html), [TMB-therapuDrug](Observation-TMB-therapuDrug.html) | |
| 11 | [Molecular Consequences](StructureDefinition-molecular-consequence.html) | The genomics report can include various types of genomic annotations such as molecular consequences related to identified variants / haplotypes / genotypes / biomarkers. | [NOTCH1-uncertain-molc](Observation-NOTCH1-uncertain-molc.html), [ZFHX3-uncertain-molc](Observation-ZFHX3-uncertain-molc.html), [MSH2-del-molc](Observation-MSH2-del-molc.html), [NTHL1-snv-molc](Observation-NTHL1-snv-molc.html), [STAG2-insertion-molc](Observation-STAG2-insertion-molc.html), [ATR-insertion-molc](Observation-ATR-insertion-molc.html), [EGFR-L858R-molc](Observation-EGFR-L858R-molc.html), [ROS1-Fusion](Observation-ROS1-Fusion.html) | |
| 12 | [Molecular Biomarker](StructureDefinition-molecular-biomarker.html) | The genomics report can reference molecular biomarkers and other findings identified via testing. | [TMBExample](Observation-TMBExample.html), [MSIExample](Observation-MSIExample.html), [PDL1Example](Observation-PDL1Example.html) | |
| 13 | [Haplotype](StructureDefinition-haplotype.html) | The genomics report can reference haplotypes and other findings identified via testing. | [HLA-A-haplotype1](Observation-HLA-A-haplotype1.html), [HLA-A-haplotype2](Observation-HLA-A-haplotype2.html), [HLA-B-haplotype1](Observation-HLA-B-haplotype1.html), [HLA-B-haplotype2](Observation-HLA-B-haplotype2.html), [HLA-C-haplotype1](Observation-HLA-C-haplotype1.html), [HLA-C-haplotype2](Observation-HLA-C-haplotype2.html) | |
<!-- 
| 14 | [Genomic Study](StructureDefinition-genomic-study.html) | The genomics report can reference details of the genomic study/studies that were performed in order to identify variants / haplotypes / genotypes / biomarkers. | [somaticStudy](Procedure-somaticStudy.html) | Genomic study is optional, and provides a means of conveying detailed aspects of the performed procedure(s). |
| 14 | [Genomic Study Analysis](StructureDefinition-genomic-study-analysis.html) | Each referenced genomic study can be comprised of one or more genomic study analyses that detail the testing procedures performed. | [analysisTumorNormalDNA](Procedure-analysisTumorNormalDNA.html), [analysisTumorRNA](Procedure-analysisTumorRNA.html) | |
-->
| 14 | [GenomicStudy]({{site.data.fhir.path}}genomicstudy.html) | The genomics report can reference details of the genomic study/studies that were performed in order to identify variants / haplotypes / genotypes / biomarkers. Each referenced genomic study can be comprised of one or more genomic study analyses that detail the testing procedures performed. | ... | Genomic study is optional, and provides a means of conveying detailed aspects of the performed procedure(s). |
| 14 | [Genomics Data File](StructureDefinition-genomic-data-file.html) | Genomic study data can include explicit pointers to raw data files used or generated by the analyses. | [WES-UncallableRegions-GRCh38 (BED file)](DocumentReference-WES-UncallableRegions-GRCh38.html), [somaticVCFfile (VCF file)](DocumentReference-somaticVCFfile.html), [FullGenome-GRCh38 (BED file)](DocumentReference-FullGenome-GRCh38.html) | Raw genomic data files such as VCF generally contain far more data than that communicated in the report. BED files can precisely define regions of the genome that were studied or deemed uncallable. |

### Additional somatic-specific examples {#additionalExamples}

- [Full transaction bundle](Bundle-bundle-oncologyexamples-r4.html) containing a Genomics DiagnosticReport referencing, Patient, Practitioner, Specimen, with Tumor Mutational Burden and MSI Status Observations, Variant Observations for JAK2/KDR/ERBB4 SNV analyses, and 4 derived Therapeutic Implication Observations.
- [Multiple Oncology Variant Report Example](Bundle-bundle-oncology-report-example.html) Oncology Example Report with 12 reported somatic variants
- [Melanoma implication](Bundle-bundle-oncology-diagnostic.html) Small example report with 1 reported variant and diagnostic implication.