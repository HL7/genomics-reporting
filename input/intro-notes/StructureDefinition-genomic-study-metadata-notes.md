#### Metrics and Region Details

> **ToDo Note:** GenomicStudy details todo - Need to evaluate changes for Metrics and Regions as called out below.
> Need to consider updates here after GenomicStudy is part of this IG as an Additional Resource.
{:.modified-content}

Since the release of R5 included the GenomicStudy resource, some concepts are being added and others are being slightly reframed. The Metrics extension is used to assert high level quality metrics. The Regions extension is used to assert details about the scope of the analysis. There are options to express detail about genes and regions in the analysis. These include:

* all genes or regions that were studied for analysis
* genes or regions that had sufficient quality and coverage and are deemed to be called
* genes or regions that were deemed uncallable, typically due to low coverage, but could be due to other quality issues

When expressing the each of those elements, there are two approaches to consider:

* genes may be listed as coded values (HGNC)
* region details may be shared via a BED file (the exact specification of the BED file is beyond the scope of this IG)

#### Attaching Genomic Files

> **STU Note:** The guidance below for file attachments needs to be carefully reviewed and considered. There are potential issues, and the Work Group welcomes feedback.
{:.stu-note}

While this implementation guide strives to provide structured genomic data via a variety of observations, there are use cases that warrant a deeper level of data than this guide allows. These use cases might be best served by sending commonly used files (VCF, BAM, CRAM, MAF, BED to name a few) with the genomic study. To promote a consistent approach to sharing these files, we provide the guidance in this section. Even with this guidance, note that best practices in exchanging these files along with the metadata necessary to make use of them through a FHIR API, remains a complicated and open issue. See [operations](operations.html) for a description of an experimental alternative workflow.

When sending these genomic files, implementers should first utilize this Genomic Study profile. Each study has one or more analyses, each of which can define `input` and `output` elements. From there, the [GenomicDataFile](StructureDefinition-genomic-data-file.html) can be used to send the file content along with meaningful metadata. This approach allows the files to have their own existence and enables queries to find them via the `DocumentReference` resource. To enable linking from the report to files, the <code>GenomicReport.study</code> attribute can be used to reference the study, corresponding analyses, and then the files. This can be helpful for those processing the report to easily identify the files that were sent along with the report.

When sending genomic files there are many considerations. For example, it is not unusual for files to be gigabytes in size. The `DocumentReference` resource has different options to evaluate for your use case. If embedded directly using `DocumentReference.content.attachment.data`, servers receiving the files may have size constraints per resource or per transaction which may limit your options. Instead of sending a large data file, the file can be referenced by a URL and title using the `DocumentReference.content.attachment.url` element. This can point to an online resource that hosts the file or from where the file can be accessed. For genomic files, the host is likely not the FHIR server providing the `DocumentReference` data instance. Be aware that use of `DocumentReference` to provide access to files through URLs introduces authorization requirements that are out of scope of this Implementation Guide. With either of these approaches, it is important to note the files might be compressed. Also, the mime types for these genomic files will vary, or possibly be missing. The senders of the data should include as much metadata as possible to enable the receiver to appropriately handle the files.

For receivers to make use of these files, many facets of the generation of the files will be needed, such as what pipelines, tools, and settings were used. The intended downstream use cases must be carefully evaluated to ensure appropriate file preparation. The <code>GenomicStudy.analysis</code> defines a number of attributes that can be used to better understand the file. Also, the `DocumentReference.description` might be helpful for a sending system to provide guidance on how the file was generated. A fully computable approach for this issue has yet to be defined.

It should be noted that this `GenomicStudy` profile is *not* an appropriate way to send a copy of the report (e.g., PDF or other document containing the written report). Instead, use [Genomic Report](StructureDefinition-genomic-report.html) and the `presentedForm` attribute.

A full, detailed implementation discussion is outside the scope of this IG. In a future release, this IG may include other profiles or artifacts along with more specific guidance.
