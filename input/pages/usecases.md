1. As the CG IG heavily utilizes Observation.component querying Observations rely upon queries using [component-code](https://www.hl7.org/fhir/observation.html#search) and [component-value-concept](https://www.hl7.org/fhir/observation.html#search) search parameters.
2. More complex queries are also using the [_include](https://www.hl7.org/fhir/search.html#revinclude) search parameter.
3. The derived-from and has-member parameters are needed as the relationships are used heavily in the IG to link between different types of genomic observations. For example, Haplotypes use `derivedFrom` to link to underlying Variant findings.

### Specimen Identification {#specimenIdentification}

- Germline testing for biomarkers/mutations (usually inherited)
- Tumor testing for biomarkers/mutations (somatic / tumor specific)

#### Get references to all variants obtained where the analysis has been designated as germline. {#germline}

This query uses LOINC code 48002-0 for "Genomic Source Class," part of the variant profile of Observation variant. "component-code-value-concept" is a construct to use the code of a component and the code of a value for the component. The value in this case is "Germline" with LOINC code LA6683-2.

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET /Observation?component-code-value-concept=http://loinc.org|48002-0$http://loinc.org|LA6683-2
</pre>

48002-0: LOINC code for "Genomic Source Class"

LA6683-2: LOINC answer code for "Germline"

*Return a bundle of genetics Observation instances

#### Get references to all variants obtained where the analysis has been designated as somatic for a specific specimen. {#somatic}

This query uses LOINC code 48002-0 for "Genomic Source Class," part of the variant profile of Observation variant. "component-code-value-concept" is a construct to use the code of a component and the code of a value for the component. The value in this case is "Somatic" with LOINC code LA6684-0. Also, the query constrains to specimen with id 1234. ID in this case refers to a specific instance of specimen. The specimen id query queries the specimen linked to a specific instance of Observation variant.

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET /Observation?component-code-value-concept=http://loinc.org|48002-0$http://loinc.org|LA6684-0&specimen:Specimen=1234
</pre>

48002-0: LOINC code for "Genomic Source Class"

LA6684-0: LOINC answer code for "Somatic"

*Return a bundle of genetics Observation instances

#### Get references to somatic variants on a specific date {#cancerProfiling}

The goal of this profile methodology is to get references from all variants obtained from somatic analysis that were identified as having somatic origin. Changes in the population of cells with particular mutations will change overtime as well as in conjunction with events such as therapy. For instance, targeted chemotherapy may kill a specific population of cancer cells with specific mutations and other cancer cell populations may survive and continue to divide. Therefore, clearly annotating these specimens as somatic variants and capturing annotations related to a time relevant to a treatment timeline may be critical for analysis.

The following query retrieves all variants annotated as somatic which arrived on July 4, 2015. This query uses LOINC code 48002-0 for "Genomic Source Class," part of the variant profile of Observation variant. "component-code-value-concept" is a construct to use the code of a component and the code of a value for the component. The value in this case is "Somatic" with LOINC code LA6684-0. Additionally, the query constrains to those instances where the date field equals "2015-07-04."

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET /Observation?subject:Patient=123&component-code-value-concept=http://loinc.org|48002-0$http://loinc.org|LA6684-0&date=2015-07-04
</pre>

48002-0: LOINC code for "Genomic Source Class"

LA6684-0: LOINC answer code for "Somatic"

*Return a bundle of genetics Observation instances

#### Clinical Sequencing – Germline Testing {#clinicalSequencing}

##### Get all observed variants for a specific patient. {#allObsVariants}

The query below retrieves specifically the variants which are directly attributed to the patient. The Observation Variant profile uses LOINC code 69548-6 for the value of Observation.code. In this case the query is constrained by a Patient with id "123.

Note to the implementer: It is currently beyond this spec to follow specimen links to Patient ids. Some variants may be reported only with a link to a specimen. In this case a query must first be performed to find all specimens related to the patient and then the query for all variants related to the specimen can be run. Otherwise, one could devise a more complicated query which finds all variants for all specimens of a patient. This is currently left as an exercise, also there are questions about performance which are determinant on the data store layer underneath the server.

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET /Observation?subject:Patient=123&code=http://loinc.org|69548-6
</pre>

69548-6: LOINC code for "Genetic variant assessment"

##### Get all variants for a specific specimen. The Observation Variant profile uses LOINC code 69548-6 for the value of Observation.code. In this case constrained by a specimen with id "123."

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET /Observation?specimen:Specimen=123&code=http://loinc.org|69548-6
</pre>

69548-6: LOINC code for "Genetic variant assessment"

##### For a chart review, get references to all DNA sequences related to mutations with an interpretation "Unknown Significance" for a specific Patient.

The following query returns all the related haplotype, genotype and variant calls which have been annotated with "Unknown Significance." This query uses LOINC code 53037-8 for "Genetic disease sequence variant interpretation," part of the variant profile of Observation variant. "code-value-concept" is a construct to use the code of an observation and the code of a value for the Observation instance. The value in this case is "Unknown Significance" with LOINC code LA6682-4. Additionally, the "_include:iterate=Observation:derived-from" iteratively follows the Observation.derived-from link. "_include:iterate=Observation:derived-from" tells the FHIR API to look for variants that the annotation of "Unknown Significance" is derived from. The iterate modifier is needed as the direct target of a derived-from relationship can be a haplotype which has a derived-from relationship to a variant (note: haplotypes can have derived-from other haplotypes which makes the number of observations returned larger).

Note to the implementer: It is currently beyond this spec to follow specimen links to Patient ids. Some variants may be reported only with a link to a specimen. In this case a query must first be performed to find all specimens related to the patient and then a query for all variants related to each patient specimen can be run. Or, one could devise a more complicated query which finds all variants for all specimens of a patient. This is currently left as an exercise, also there are questions about performance which are determinant on the data store layer underneath the server.

It may be safer to perform both a subject and specimen query to ensure all reported variants for a patient are found.

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET /Observation?subject:Patient=123&code-value-concept=http://loinc.org|53037-8$http://loinc.org|LA26333-7&_include:iterate=Observation:derived-from
</pre>

53037-8: LOINC code for "Genetic disease sequence variant interpretation"

LA6682-4: LOINC answer code for "Unknown Significance".

"_include:iterate=Observation:derived-from" tells the FHIR API to look for variants that the annotation of "Unknown Significance" is derived from. The iterate modifier is needed as the direct target of a derived-from relationship can be a haplotype which has a derived-from relationship to a variant (note: haplotypes can have derived-from other haplotypes which makes the number of observations returned larger).

#### Decision Making Tools - Family History and Drug Dosage Calculators

Today clinicians translate (i.e., manually re-enter) genetic data into tools for decision making. This includes family history tools and drug dosage calculators. In the future, this data will automatically be incorporated into clinical decision-making tools.

This query returns all the reported variants with referenced medication implications and those implications.

This query uses LOINC code 53037-8 for "Genetic disease sequence variant interpretation," part of the variant profile of Observation variant. "component-code" is a construct to use the code of a component. The value in this case is "Medication Assessed" with LOINC code 51963-7. Additionally, the "_include:iterate=Observation:derived-from" iteratively follows the Observation.derived-from link. "_include:iterate=Observation:derived-from" tells the FHIR API to look for variants that the medication assessment is derived from. The iterate modifier is needed as the direct target of a derived-from relationship can be a haplotype which has a derived-from relationship to a variant (note: haplotypes can have derived-from other haplotypes which makes the number of observations returned larger).

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET /Observation?subject=123&Observation?component-code=http://loinc.org|51963-7&_include:iterate=Observation:derived-from
</pre>

51963-7: LOINC code for "Medication Assessed"

"_include:iterate=Observation:derived-from" tells the FHIR API to look for variants that the medication assessment is derived from. The iterate modifier is needed as the direct target of a derived-from relationship can be a haplotype which has a derived-from relationship to a variant (note: haplotypes can have derived-from other haplotypes which makes the number of observations returned larger).

#### Public Health

Today Registrars manually translate clinical data into public health reporting systems. This data is used to monitor and improve public health (e.g., surveillance and clinical research). In the future, this data will be extracted from the EHR in an automated (or semi-automated) fashion.

For a breast cancer clinical genomic study, get all genetic observations of patients where the variant is associated with breast cancer as a genetic risk. There is some heterogeneity in the codes which may be used to indicate phenotypes. Here we have used the NCI Metathesaurus code for Breast Cancer, "C9335," as a likely code to be used. The following query returns all variants that have an annotation of "Breast Cancer" using the NCI Metathesaurus code for Breast Cancer, "C9335."

"code-value-concept" is a construct to use the code of an Observation instance and the code of a value for the Observation. The Observation.code = 81259-4, "predicted phenotype," is used for the iG's "Inherited Disease Pathogenicity" profile. The value in this case is NCI Metathesaurus code for Breast Cancer, "C9335." Additionally, the "_include:iterate=Observation:derived-from" iteratively follows the Observation.derived-from link. "_include:iterate=Observation:derived-from" tells the FHIR API to look for variants that the annotation is derived from. The iterate modifier is needed as the direct target of a derived-from relationship can be a haplotype which has a derived-from relationship to a variant (note: haplotypes can have derived-from other haplotypes which makes the number of observations returned larger).

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET /Observation?subject:Patient=123&code-value-concept=http://loinc.org|81259-4$http://ncimeta.nci.nih.gov|C9335&_include:iterate=Observation:derived-from
</pre>

81259-4: LOINC code for "predicted phenotype"

http://ncimeta.nci.nih.gov|C9335: NCI Metathesaurus code for "Breast Cancer"

"_include:iterate=Observation:derived-from" tells the FHIR API to look for variants that the annotated phenotype of "Breast Cancer" is derived from. The iterate modifier is needed as the direct target of a derived-from relationship can be a haplotype which has a derived-from relationship to a variant (note: haplotypes can have derived-from other haplotypes which makes the number of observations returned larger).

### Clinical and Research Data Warehouse

Health data warehousing should persist data in its standardized formats, while allowing users to export subsets of the data in the warehouse into multiple 'data marts', optimized for specific use cases, analysis type or reporting needs.

#### Iterating through has-member and derived-from

This example is using a Genomics Diagnostic Resource as a base to demonstrate iteration through has-member and derived-from in the same query. Here a specific instance of diagnostic report is being queried for all the connected genomic observation profiles. If the DiagnosticReport.results are only grouping observations or panels, this query would ensure finding the leaf node observations

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET /DiagnosticReport?_id=16931&_include=DiagnosticReport:result&_include:iterate=Observation:has-member&_include:iterate=Observation:derived-from
</pre>

The ampersands will tell the server to 'include' everything through the result reference, and to include everything that can be found through `Observation.hasMember` or `Observation.derivedFrom` links (the iterate operator tells the server to iterate through the links).

#### Compound heterozygotic variant retrieval

This query returns compound heterozygous variant observations and the variant observations they are composed from. Adding a patient or specimen identifier would filter the result to a specific patient or specimen.

This query uses LOINC code 81263-6 for a component with code of "Complex variant type," part of the variant profile of Observation variant. "component-code-value-concept" is a construct to use the code of a component and the code of a value for the component. The value in this case is "Compound heterozygous" with LOINC code LA26217-2. Additionally, "_include:iterate=Observation:has-member" tells the FHIR API to look for variants that compose the complex variant. The iterate modifier is used as complex variants can have nested variants.

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET /Observation?component-code-value-concept=http://loinc.org|81263-6$http://loinc.org|LA26217-2&_include:iterate=Observation:has-member
</pre>

81263-6: LOINC code for "Complex variant type"

LA26217-2: LOINC answer code for "Compound heterozygous".

"_include:iterate=Observation:has-member" tells the FHIR API to look for variants that compose the complex variant. The iterate modifier is used as complex variants can have nested variants.

#### Search for variants with a given gene

This query uses the value of the "Gene studied ID (HGNC)" component, with LOINC code 48018-6, to find an instance of Observation Variant with the HGNC id for EGFR. "component-code-value-concept" is a construct to use the code of a component and the code of a value for the component. The value in this case is the HGNC gene id "HGNC:3236" for EGFR. Note to avoid errors, the gene id's from HGNC must be appended with "HGNC:"

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET /Observation?component-code-value-concept=http://loinc.org|48018-6$https://www.genenames.org/data/gene-symbol-report/#!/hgnc_id|HGNC:3236
</pre>

48018-6: LOINC code for "Gene studied ID (HGNC)"

https://www.genenames.org/data/gene-symbol-report/#!/hgnc_id|HGNC:3236 : HGNC id for EGFR

#### Variant ID based query

Find all patients with a set of variants identified by a variant id. In this case we are looking to see if there is an observation of ClinVar ID 182302. Which has HGVS of NM_000059.3:c.1-59_1-57delGAA.

This query uses the value of the "Discrete Genetic Variant" component, with LOINC code 81252-9, to find an instance of Observation Variant with a ClinVar id "182302." "component-code-value-concept" is a construct to use the code of a component and the code of a value for the component. The value in this case is ClinVar ID 182302.

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET /Observation?component-code-value-concept=http://loinc.org|81263-6$http://www.ncbi.nlm.nih.gov/clinvar|182302
</pre>

81252-9: LOINC code for "Discrete Genetic Variant"

http://www.ncbi.nlm.nih.gov/clinvar/variation|182302: ClinVar ID 182302

#### Get a Patient's Family members' genetics report

This example is proposed by Kevin Hughes. Family history is useful for clinicians to know more about the condition of the patient. This uses the FamilyMemberHistory extension to find the family history of patient "123."

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET /FamilyMemberHistory?patient=123
</pre>

### Other Genomics Use Case

During the development of the FHIR Genomics design, CGWG participants have commented on the earlier use cases and/or proposed new use cases. In this section, we describe new cases and demonstrate how the proposed design will address them.

#### Genomic Study

Users can query Genomic Study and Genomic Study Analysis instances. Use cases include identifying all genomic tests a patient has had, determining the scope of a genomic study (e.g. genes studied, types of molecular alterations detectable), identifying those tests that used a particular specimen or occurred within a given time frame, etc.

The FHIR R4 backport of the FHIR R5 GenomicStudy resource implements a number of R5 attributes as Procedure extensions. Thus, much of the semantic content of a FHIR R4 Genomic Study is conveyed as extension values. Searching against extension values is complex, and a full description is outside the scope of this IG, but in general entails two steps: (1) define a custom SearchParameter that searchs on the extension element in the way you wish; (2) all relevant servers must be manually changed (i.e. have code written) to support the new search parameter. An example custom SearchParameter is [here](https://hl7.org/fhir/us/core/SearchParameter-us-core-race.html). For STU3, no specific search paramaters for the extensions are defined, and implementers are free to implement their own and provide feedback.

To query for all genomic studies performed between Jan 1 and Mar 1 2023:

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET /Procedure?patient=44969753&date=ge2023-01-01&date=le2023-03-01
</pre>

#### Panel

This is an example using Observation to find a panel and iterate through to find all the clinical results. The query would ensure finding the leaf node observations. At the moment, we're not providing an example of searching for a DiagnosticReport containing the panel, this is more complex. One option would be to use "_revinclude" to go from the Panel Observation backwards to the DiagnosticReport. In the case below we are using a GTR encoded panel, but it should be noted that a LOINC code would most likely also be associated with the `Observation.code` value. Recall, if two codings are equivalent in meaning then they can be used simultaneously. The specific test here is a Panel of several genes. The assumption here is that a Panel was used to group the individual variants and their interpretations together.

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET /Observation?code=https://www.ncbi.nlm.nih.gov/gtr|GTR000593044.2&_include:iterate=Observation:has-member&_include:iterate=Observation:derived-from
</pre>

The ampersands will tell the server to 'include' everything through the result reference, and to include everything that can be found through `Observation.hasMember` or `Observation.derivedFrom` links (the iterate operator tells the server to iterate through the links).

#### Basic Queries

Find patients by condition and affected status

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET /Condition?component-code-value=http://snomed.info/sct|439401001
</pre>

Find patients based on mode of inheritance (genomic region, position, gene, SNP)

Search for patient by ID

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET /Patient?subject=123
</pre>

Search for patients based on genetic ancestry

#### Specimen-based Queries

Find specimens collected from specific specimen body sites

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET /Observation?component-code-value=http://snomed.info/sct|85151006
</pre>

Find specimens based on specimen status

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET /Specimen?status=available
</pre>

Find specimens based on technology platform

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET /Specimen?code=Information Technology
</pre>

Find specimens based on instrument identifier

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET /Specimen?container.identifier=48736-15394-75465
</pre>

#### Time-Based Queries

Find specimens collected within an absolute date range

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET /Specimen?receivedTime=2011-03-04T07:03:00Z
</pre>
