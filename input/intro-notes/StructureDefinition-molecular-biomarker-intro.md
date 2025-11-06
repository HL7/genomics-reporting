### Scope and Usage
  
The term '**biomarker**' is broad, encompassing observable characteristics that indicate normal or abnormal biological processes and that are often used to assess prognosis or guide therapy. In the broad sense, many clinical and laboratory observations might be considered a 'biomarker'. '**Molecular biomarker**' is likewise broad, primarily encompassing laboratory measurements of human inherent substances such as gene products, antigens and antibodies, complex chemicals that result from post-translational processing of multi-gene products, etc. Molecular biomarkers include many different types of measurements, such as presence or absence of a chemical, or the level of a chemical. Here, we are primarily interested in those molecular biomarkers that have associated therapeutic implications, particularly in precision cancer care, including but not limited to: cell receptor levels (e.g. ER, PR, HER2); molecular sequence adjacent observations (e.g. microsatellite instability, tumor mutation burden, gene promoter methylation); cell receptor ligands (e.g. PD-L1); proteins, antigens, and antibodies (e.g. HLA type).

The `code` is bound to the [Molecular Biomarker Codes](ValueSet-molecular-biomarker-code-vs.html) ValueSet. It is *not* a comprehensive list of biomarkers and only provides representative examples drawn from LOINC and NCI Thesaurus.

Where the biomarker is a proxy or higher level abstraction for one or more underlying genetic observations, the `derivedFrom` attribute can be used to reference the source variant(s), haplotype(s) and/or genotype(s).

Component '`gene-studied`' is an optional and repeating field for representing the gene or genes from which the observed substance is derived.

Component '`biomarker-category`' is a repeating field that provides for a categorization of a given biomarker observation.

In the absence of a well defined and comprehensive value set for molecular biomarkers, we provide general guidance for the construction of a biomarker instance for an arbitrary biomarker. A typical use of this profile includes (1) identify the appropriate observation.code (e.g. drawing from LOINC, NCIt, etc); (2) add an observation.category of 'biomarker-category'; (3) populate component:gene-studied if applicable; (4) optionally populate component:biomarker-category; (5) populate other applicable observation fields similar to how you would populate them for regular lab observations (e.g. include observation.value, observation.effectiveDateTime, etc).

### Biomarker Ontology

The [Molecular Biomarker Ontology code system](CodeSystem-molecular-biomarker-ontology-cs.html) provides a categorization of biomarkers along several axes. A given lab test can be associated with more than one category within more than one axis. For example, LOINC code [85337-4](https://loinc.org/85337-4/) represents Estrogen receptor antigen in tissue by immune stain. It can be categorized by physiologic role of cell receptor and antigen; by molecule type of protein; and by method of immune stain.

#### Molecular Biomarker Ontology with examples
- Molecular biomarker categorized by physiologic role
- cell receptor: [ER](https://loinc.org/85337-4/), [HER2 by IA](https://loinc.org/72382-5/), [HLA class I](https://loinc.org/77637-7/), [PR](https://loinc.org/40557-1/)
- cell receptor ligand: [PD-L1](https://loinc.org/85147-7/)
- antibody: [Neutrophil Ab](https://loinc.org/59025-7/), [Lactoferrin Ab by immunoassay](https://loinc.org/59003-4/)
- antigen: [ER](https://loinc.org/85337-4/), [HLA class I](https://loinc.org/77637-7/), [Insulin](https://loinc.org/10495-0/), [PR](https://loinc.org/40557-1/)

#### Molecular biomarker categorized by molecule type
- carbohydrate: [Urine carbohydrates](https://loinc.org/16550-6/)
- lipid: [Serum lipids](https://loinc.org/2569-2/)
- protein: [ER](https://loinc.org/85337-4/), [HER2 by IA](https://loinc.org/72382-5/), [Hgb A2](https://loinc.org/4551-8/), [HLA class I](https://loinc.org/77637-7/), [Neutrophil Ab](https://loinc.org/59025-7/), [PR](https://loinc.org/40557-1/), [PSA](https://loinc.org/19195-7/), [Insulin](https://loinc.org/10495-0/), [Lactoferrin Ab by immunoassay](https://loinc.org/59003-4/)
- nucleic acid: [MGMT gene methylation](https://loinc.org/64083-9/)

#### Molecular biomarker categorized by method
- Enzyme assay: [Lactoferrin Ab by immunoassay](https://loinc.org/59003-4/)
- Flow cytometry: [Neutrophil Ab](https://loinc.org/59025-7/)
- Immune stain: [ER](https://loinc.org/85337-4/), [Insulin](https://loinc.org/10495-0/), [MSI by immune stain](https://loinc.org/62862-8/), [PD-L1](https://loinc.org/85147-7/), [PR](https://loinc.org/40557-1/)
- Immunoassay: [HER2 by IA](https://loinc.org/72382-5/), [HLA class I](https://loinc.org/77637-7/), [Lactoferrin Ab by immunoassay](https://loinc.org/59003-4/)
- Methylation analysis: [MGMT gene methylation](https://loinc.org/64083-9/)
- Molgen: [MSI](https://loinc.org/81704-9/), [TMB](https://loinc.org/94077-5/)

#### Biomarker Categories

Biomarker categories can be associated with LOINC value sets to facilitate retrieval, as shown in this non-normative example table.

| Biomarker Category | Example LOINC codes |
|--------------------|---------------------|
| cell receptor | [ER](https://loinc.org/85337-4/), [HER2 by IA](https://loinc.org/72382-5/), [HLA class I](https://loinc.org/77637-7/), [PR](https://loinc.org/40557-1/) |
| protein | [ER](https://loinc.org/85337-4/), [HER2 by IA](https://loinc.org/72382-5/), [Hgb A2](https://loinc.org/4551-8/), [HLA class I](https://loinc.org/77637-7/), [Neutrophil Ab](https://loinc.org/59025-7/), [PR](https://loinc.org/40557-1/), [PSA](https://loinc.org/19195-7/), [Insulin](https://loinc.org/10495-0/), [Lactoferrin Ab by immunoassay](https://loinc.org/59003-4/) |
| immune stain | [ER](https://loinc.org/85337-4/), [Insulin](https://loinc.org/10495-0/), [MSI by immune stain](https://loinc.org/62862-8/), [PD-L1](https://loinc.org/85147-7/), [PR](https://loinc.org/40557-1/) |
{:.grid}

### Other Guidance
  
If implementers have additional annotations for biomarkers, the Molecular Biomarker profile is defined to allow flexibility. See the section on [flexibility](general.html#flexibility) for additional guidance, especially the guidance for the Open Slicing allowed on `Observation.component`.
