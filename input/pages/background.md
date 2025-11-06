### Scope

This section introduces some of the key genomics terms and relationships that should be understood by those implementing this specification. Throughout this guide, the terms "genetic" and "genomic" will be used interchangeably. For more detailed information on the identified code and value CodeableConcepts, see [Appendix H: Glossary](glossary.html) for more information.

### Overview

Genomic reporting involves reporting information about the genomic characteristics of a sample. In humans and animals, the sample might be from "normal" tissue, transplanted tissue, reproductive tissue (egg or sperm) or abnormal tissue such as a tumor, or other body fluids such as blood, cerebrospinal fluid, or urine.

Reporting is typically done on the specimen's DNA (chromosomal or occasionally mitochondrial DNA), however it can also be done on RNA and proteins.

**Sequence** is a term that indicates a connected series of joined base molecules - a polymer of subunits. For DNA and RNA the bases (or monomeric subunits) are nucleotides. For proteins the units of analysis are amino acids. In the cell, the polymers that comprise DNA or RNA or proteins exist in many discrete molecules. DNA polymers are further organized into structures called chromosomes.

Because DNA, RNA and even amino acid sequences can be exceptionally long - and are virtually the same for long stretches within a given species - reporting is typically done on the basis of differences between the sequence observed in the tested specimen and the sequence in a **reference sequence**. Such differences are called **variations**. They are not usually reported as a complete enumeration of the whole sequence of interest. This approach is also used because clinical relevance of genomic tests is based on the presence of divergence from the norm. Note that a sequence might still be relevant even if it is unchanged from the reference.

Observed genomic findings (such as wild type, single variants, and co-occurring variants) can be collectively expressed as haplotypes and genotypes. Haplotypes describe a set of genomic findings that appear on a single DNA molecule. Genotypes describe combinations of haplotypes or variations at similar positions across both parental chromosomes. See [Variant Reporting](sequencing.html) for more information.

### Key Reporting Elements

Clinical laboratories worldwide offer genomic testing as part of their test menus to providers for the diagnosis, prognosis, and treatment of patients. In order to perform testing, both an order from a healthcare provider and a specimen collected from a patient are needed. Genomic testing is unique in that as the body of knowledge expands, genomic testing performed earlier on a patient specimen may be reanalyzed at a later point with this newer knowledge. In these cases, the data to be reanalyzed is often treated as a patient specimen, potentially with an order for the reanalysis.

When a laboratory decides to add a new test to their test menu for physicians to order, much is required even before the test order goes live and patient testing commences. The laboratory validates the test system, including its analytical sensitivity, specificity, and reporting.

The payload for a genomic report is carried by the **DiagnosticReport** resource. The report summarizes and packages all of the information produced by the genomic analysis and other related items such as the orders, the specimen, and others. It organizes it for consumption and provides a summary as well as a rendered view of the findings. It is the primary response to the **ServiceRequest** which is the "order" for genomic testing to occur.

In practice, there can be multiple ServiceRequests grouped together as part of a single requisition. This allows multiple tests to be ordered at one time and the results to be gathered as a group. A genomic report may also contain information gathered from multiple testing approaches. For example, a more general test might be followed up with more specific tests providing additional details.

As part of a report, key components to enumerate are: findings, interpretations, implications, and recommendations.

**Genomic Findings** are **observations** about the specimen's genomic characteristics. For example, a chromosomal abnormality (such as duplication of a chromosome), genotype, haplotype, or variant that was detected. **Genomic Implications** provide an elaboration of the effect of one or more genomic findings (i.e., an observed variant or genotype), such as 'poor response to medication X.' For the reported implications, **recommended** actions such as 'reduce dosage' may be included.

A Genomic **Interpretation** is an overall assessment of the result of the genomic testing in the context of one or more service requests, such as a statement that there is a positive or negative finding. An overall conclusion is reported when variant analysis (sequencing or targeted variants) is done. It provides a coarse interpretation of the results reported. More detailed interpretations are also associated with each distinct reported variant.

While any and all of this information may be communicated in the report, it is important to note the clinician has the total patient picture including radiology, patient history, etc, and ultimately assesses the findings.

See [pharmacogenomics](pharmacogenomics.html) and [somatics](somatics.html) for more guidance on implications and [General Genomic Reporting](general.html) for detailed information on genomic reports.

### Variant Detection and Reporting

DNA, RNA, and amino acid sequences can all be examined through a variety of mechanisms, ranging from direct sequencing, inference from microarrays, and mass spectrometry.

Variations are detected by comparing a patient's genomic sequence with a reference using a variety of techniques. Each of these techniques come with their own trade-offs in terms of applicability, cost, speed, availability, and precision. For example, some techniques can only be used for DNA but not RNA or amino acid sequences. Others can only detect certain types of changes.

While reporting variations from a reference covers many use cases, there are also genomic regions with so many variations found in a population there is no single 'normal' reference sequence. In those cases, often the full sequence is reported. A known version of that sequence can also be designated as a reference for comparison.

Variations can be described at different levels of granularity, ranging from chromosomal or poly-chromosomal abnormalities such as extra or missing chromosomes or large-scale differences (e.g., as seen in microsatellite instability) down to single changes in individual nucleotides (Single Nucleotide Polymorphisms/Variations, abbreviated SNP or SNV depending on the context).

"Known" variations are often assigned codes and cataloged into code systems. This allows easy linking of knowledge to information found in a particular specimen. Reports can simply specify the **code** and know that clinicians can look up relevant information associated with the code. However, sometimes variations are detected that do not (yet) have a standardized code. In these cases, a description of the variation and where it was located must be communicated. Often, even when a code is known, the details about the location and type of change are communicated.
