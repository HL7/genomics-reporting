This section covers additional guidelines related to genetic assessments related to the histocompatibility and immunogenetics, including matching of donor and recipient tissue for donation (e.g., bone marrow, organ, and other tissue donations) and cellular therapy. In particular, it covers additional guidance related to genotyping reports of HLA (Human Leukocyte Antigens).

### General guidance {#general}

While not specifically profiled in this version of the IG, some additional constraints will typically apply to somatic profiles. The Patient resource is often mandatory as transplant genomics is not relevant for environmental samples. Exceptions would include when de-identified samples are sent to a typing laboratory, and patient information is stored separately at an organization.

### HLA genotyping results {#diagnosticreport-hla-genotyping-results-profile}

Human leukocyte antigen (HLA) genotyping is fundamental for research and clinical practice in immunogenetics and histocompatibility. Pointers to external locations referring to registered methods, raw NGS reads, and reference standards can be conveyed in this profile.

The structure of the HLA typing report in this profile attempts to follow the principles outlined in the Minimum Information for Reporting Next-generation sequence Genotyping (MIRING). These principles were identified through a series of meetings with an international group of stakeholders in the application of Next Generation Sequencing (NGS) technology for genotyping the HLA and KIR genes as well as other immune-related genes (http://igdawg.org/ngs.html). MIRING describes eight principles, described in detail in [Human Immunology. 2015 Dec; 76(12):954-962](https://www.ncbi.nlm.nih.gov/pubmed/26319908). These include detailed metadata about:

1. MIRING Annotation
2. Reference Context
3. Full Genotype
4. Consensus Sequence
5. Novel Polymorphisms
6. Platform Documentation
7. Read Processing Documentation
8. Primary Data

These principles were implemented in a technical specification by extending an existing XML based format for exchanging histocompatibility and immunogenetic genotyping data called [Histoimmunogenetics Markup Language (HML)](https://bioinformatics.bethematchclinical.org/hla-resources/hml) to include results from NGS methodologies. The resulting schema may be found [here](https://schemas.nmdp.org). The National Marrow Donor Program (NMDP)/Be The Match uses this format for reporting HLA genotyping from potential donors and for patients needing stem cell transplants.

Both MIRING and HML were used to inform mapping data elements to FHIR resources profiled in this IG, such as Specimen, MolecularSequence, Genotype Observation, Haplotype Observation, and DiagnosticReport. Examples are found at the end of this page.

- Minimum information for reporting next generation sequence genotyping (MIRING): Guidelines for reporting HLA and KIR genotyping via next generation sequencing (see [here](https://www.ncbi.nlm.nih.gov/pubmed/26407912))
- Histoimmunogenetics Markup Language 1.0: Reporting Next Generation Sequencing-based HLA and KIR Genotyping (see [here](https://www.ncbi.nlm.nih.gov/pubmed/26319908))

#### HLA - Nomenclature and Allele Assignment {#hla-allele-nomenclature-assignment}

Once HLA is typed, perhaps using targeted probes, exon sequencing, or full gene sequencing, the results are analyzed and assigned to one or more of the [IMGT/HLA](https://www.ebi.ac.uk/ipd/imgt/hla) gene alleles using the [HLA nomenclature](http://hla.alleles.org/nomenclature/naming.html). While the actual results may be a haplotype of exons, the results are assigned to an allele from a known list. This allows results from different HLA genotyping methodologies to be compared, for example for donor/recipient transplant matching. However, reducing the results to HLA nomenclature may introduce ambiguity in the actual results. For example, an allele may be reported at only a two-field protein level (e.g., HLA-B*57:01) which represents any of over forty DNA variants, while the actual data may represent a single full gene (e.g., HLA-B*57:01:01:05). The nomenclature may also over represent the quality of the data. For example, when a full gene allele name is assigned to the results, it is unknown how the data was captured (probes, exon-only sequence, or full gene sequencing). Methodology is captured separately in the report. Also, this system cannot easily capture novel alleles as it represents a closed-world of possible alleles. Earlier scientific articles and data may reference HLA serotypes (e.g., HLA-B57), recognizable by the absence of an asterisk in the name, which does not capture any molecular information. The IMGT/HLA allele database is updated every three months to account for the discovery of new alleles, and the deletion or renaming of old alleles. This is why it is important to include the IMGT/HLA version when the HLA allele is assigned.

#### HLA - DiagnosticReport and Genotype {#hla-dg-genotype}

In a simple case, the [Genomic Report](StructureDefinition-genomic-report.html) (DiagnosticReport) refers to a [Genotype Observation](StructureDefinition-genotype.html) for each HLA gene. The HLA alleles found in the genotype are typically assigned to alleles found in the Immuno Polymorphism Database (IPD) through the international ImMunoGeneTics (IMGT) project (found [here](https://www.ebi.ac.uk/ipd/imgt/hla)) and preferably expressed as a [Genotype List String (GLString)](https://www.ncbi.nlm.nih.gov/pubmed/23849068) using a [GLString Code](https://glstring.org).

If it is necessary to report the molecular sequence that was used to derive the [Genotype Observation](StructureDefinition-genotype.html), one or more MolecularSequence resources can be used. This is shown in Fig 1.

<div style="text-align: left; margin: 20px 0; clear: both; overflow: hidden;">
<img src="histocompatibility-fig1-hla-a-genotype.png" alt="Genetic test report for HLA-A genotyping, with molecular sequence data used to derive the genotype." style="max-width: 100%; display: block; margin: 0; float: none;" />
</div> {#fig1}

**Figure 1**

#### HLA - Adding the individual alleles {#hla-alleles}

It is often desirable to identify sequence data that was used to assert or assign individual HLA alleles. This can be done by adding another Observation to capture this, shown in Figure 2.

<div style="text-align: left; margin: 20px 0; clear: both; overflow: hidden;">
<img src="histocompatibility-fig2-hla-a-genotype-allele.png" alt="Genetic test report for HLA-A genotyping, with molecular sequence data used to derive each allele." style="max-width: 100%; display: block; margin: 0; float: none;" />
</div> {#fig2}

**Figure 2**

The example in this figure is simplistic and the actual results often includes multiple sequences (e.g., exons 2 and 3). Allele assignment is a complex process and may result in ambiguous results (see [Reporting Ambiguity](#hla-ambiguity) below).

We use the [Haplotype Observation](StructureDefinition-haplotype.html) for Allele assignment. In domains other than HLA (e.g., Pharmacogenomics), it is common to consider gene-level alleles as named haplotypes of a set of smaller variants ([Variation Modelling Collaboration Data Model and Specification](https://docs.google.com/document/d/12E8WbQlvfZWk5NrxwLytmympPby6vsv60RxCeD5wc1E)). This is not how the HLA community considers Haplotype, which is typically used to describe a set of gene-level alleles from different HLA genes that are found on the same DNA molecule. To be able to represent this latter description, this IG allows the representation "haplotypes of haplotypes." (example not shown)

#### HLA - reporting multiple HLA genes {#hla-multiplealleles}

This pattern can be extended to multiple HLA genes in a single report. An example for HLA-A, HLA-B, and HLA-C is shown in Figure 3.

<div style="text-align: left; margin: 20px 0; clear: both; overflow: hidden;">
<img src="histocompatibility-fig3-hla-abc-genotype.png" alt="Genetic test report for HLA-A, -B, and -C genotyping, with molecular sequence data used to derive each genotype." style="max-width: 100%; display: block; margin: 0; float: none;" />
</div> {#fig3}

**Figure 3**

And adding individual alleles...

<div style="text-align: left; margin: 20px 0; clear: both; overflow: hidden;">
<img src="histocompatibility-fig4-hla-abc-genotype-allele.png" alt="Genetic test report for HLA-A, -B, and -C genotyping, with molecular sequence data used to derive each genotype." style="max-width: 100%; display: block; margin: 0; float: none;" />
</div> {#fig4}

**Figure 4**

#### HLA - Reporting Ambiguity {#hla-ambiguity}

HLA allele assignment is often ambiguous. Genotype ambiguity results from an inability to establish chromosomal phase between identified polymorphisms. Allele ambiguity results when the polymorphisms that distinguish alleles fall outside of the regions assessed by the genotyping system.

Allele ambiguity is often captured using [NMDP Multiple Allele Codes](https://bioinformatics.bethematchclinical.org/hla-resources/allele-codes). Because of limitations of this system, including introducing further ambiguity into the report, the [GL String](https://www.ncbi.nlm.nih.gov/pubmed/23849068) is preferred. This format uses a hierarchical set of operators to describe the relationships between alleles, lists of possible alleles, phased alleles, genotypes, lists of possible genotypes, and multilocus unphased genotypes, without losing typing information or increasing typing ambiguity. To use this format, the [GL String Code](https://glstring.org/) system can be used, which embeds this GL String into a format containing the gene system, and version of the nomenclature used within the GL String.

For example, this valueCodeableConcept would be used to describe a genotype for HLA-B, based on the 3.31.0 release of the IMGT-IPD/HLA database, that is ambiguous for one of the alleles in the genotype (HLA-B*07:02:01:01/HLA-B*07:02:01:03), and unambiguous for the other (HLA-B*13:02:01:01).

```xml
<valueCodeableConcept>
    <coding>
        <system value="http://glstring.org"/>
        <code value="hla#3.31.0#HLA-B*07:02:01:01/HLA-B*07:02:01:03+HLA-B*13:02:01:01"/>
    </coding>
</valueCodeableConcept>
```

#### HLA - LOINC and additional codings {#hla-loinc}

The Observations used in this IG require specific codes. For example, the [Genotype Observation](StructureDefinition-genotype.html) requires a `code.coding` using a LOINC code that represents "Genotype display name". To indicate that this genotype is for HLA-A, we use the `component` for Gene Studied. Together this `code.coding` and the `component` indicate that this Observation is a Genotype for HLA-A. This 'post-coordination' of the Observation `code` allows for reporting for any genotype and gene name combination.

```xml
<code>
    <coding>
        <system value="http://loinc.org"/>
        <code value="84413-4"/>
        <display value="Genotype display name"/>
    </coding>
</code>
...
<component>
    <code>
        <coding>
            <system value="http://loinc.org"/>
            <code value="48018-6"/>
            <display value="Gene studied [ID]"/>
        </coding>
    </code>
    <valueCodeableConcept>
        <coding>
            <system value="http://www.genenames.org"/>
            <code value="HGNC:4931"/>
            <display value="HLA-A"/>
        </coding>
    </valueCodeableConcept>
</component>
```

Often a lab will use another LOINC code to represent this, or use a local code system. This can be included as an additional `coding`. For example, at the time of this writing, there are ten different LOINC codes related to typing of HLA-A. As long as the alternative coding is conceptual the same or is subsumed by the other, an additional `code.coding` can be included if the lab or healthcare system uses it in their current system. In the following example, the LOINC code `13298-5` representing "HLA-A [Type]" is added as an additional `code.coding` that is subsumed by the more general "Genotype Display Name"".

```xml
<code>
    <coding>
        <system value="http://loinc.org"/>
        <code value="84413-4"/>
        <display value="Genotype display name"/>
    </coding>
    <coding>
        <system value="http://loinc.org"/>
        <code value="13298-5"/>
        <display value="HLA-A [Type]"/>
    </coding>
</code>
...
<component>
    <code>
        <coding>
            <system value="http://loinc.org"/>
            <code value="48018-6"/>
            <display value="Gene studied [ID]"/>
        </coding>
    </code>
    <valueCodeableConcept>
        <coding>
            <system value="http://www.genenames.org"/>
            <code value="HGNC:4931"/>
            <display value="HLA-A"/>
        </coding>
    </valueCodeableConcept>
</component>
```

#### HLA - Examples {#hla-examples}

- [DiagnosticReport for HLA-A, HLA-B, HLA-C](DiagnosticReport-diagnosticreport-hla-glstring-r4.html)
- [Genotype Observation for HLA-A](Observation-genotype-hla-a-glstring-r4.html)
- [Allele Observation for HLA-A (name Haplotype Observation)](Observation-haplotype-hla-a-1-r4.html)
- [Full transaction bundle](Bundle-bundle-CG-IG-HLA-FullBundle-01.html) containing Patient, Organization, Specimen, ServiceRequest, DiagnosticReport, Genotype Observation, Haplotype Observation, MolecularSequence

### KIR genotyping results {#diagnosticreport-kir-genotyping-results-profile}

TBD: Considerations for reporting Killer-cell immunoglobin like receptor (KIR) genes.