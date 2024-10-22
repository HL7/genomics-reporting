### Version = STU3
- FHIR version: 4.0.1

#### Summary of updates
  
- Introduction of new operations along with extensive implementation guidance and examples. Refer to [here](operations.html) for details.
- Addition of support for GenomicStudy to capture structed, study level metadata. This is back porting a resource introduced in R5 as a set of profiles, code systems, and value sets into this R4 based IG. This includes structured extensions to capture region studied details, and the existing profile was removed. See [here](StructureDefinition-genomic-study.html) for more information.
- Broadening support for biomarker observations by introducing a new, more generic MolecularBiomarker profile, along with refactoring existing profiles and examples. Explore the new profile [here](StructureDefinition-molecular-biomarker.html).
- Improved guidance on the Somatic Reporting page, including a detailed synthetic report and additional example instances. See the new page [here](somatics.html).
- Update in the representation of molecular consequences through the creation of a new Molecular Consequences observation profile that is treated as an Implication. This is a non-passive change, as several Variant(Observation).component and DiagnosticImplication(Observation).component slices were moved to the new profile. See [here](StructureDefinition-molecular-consequence.html) for the new profile. A list of changes includes: 
  * Variant
    * rename component:coding-hgvs to component:representative-coding-hgvs (same LOINC code)
    * rename component:transcript-ref-seq to component:representative-transcript-ref-seq (same LOINC code)
    * rename component:protein-hgvs to component:representative-protein-hgvs (same LOINC code)
    * delete component:amino-acid-change-type
    * move component:molecular-consequence to Molecular Consequence profile, renamed component:feature-consequence
  * DiagnosticImplication
    * move component:functional-effect to Molecular Consequence profile
- Support repeat expansions on the Variant profile. See [here](sequencing.html#defining-repeat-expansion-variants) for guidance on the new slices.

#### Trackers

|JIRA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|Summary|
|----|-------|
|[FHIR-25170](https://jira.hl7.org/browse/FHIR-25170)|Send related artifacts at the Observation.component level|
|[FHIR-28943](https://jira.hl7.org/browse/FHIR-28943)|Introduced new MolecularBiomarker artifacts|
|[FHIR-31030](https://jira.hl7.org/browse/FHIR-31030)|Add pattern for GenomicReport.code for LOINC 51969-4|
|[FHIR-31506](https://jira.hl7.org/browse/FHIR-31506)|Add genetics category to observation profiles|
|[FHIR-32101](https://jira.hl7.org/browse/FHIR-32101)|Observation.component to capture variant inheritance basis|
|[FHIR-32696](https://jira.hl7.org/browse/FHIR-32696)|Improved somatic reporting guidance|
|[FHIR-34418](https://jira.hl7.org/browse/FHIR-34418)|Support repeat expansions|
|[FHIR-35864](https://jira.hl7.org/browse/FHIR-35864)|Add GenomicStudy to support study-level metadata|
|[FHIR-36041](https://jira.hl7.org/browse/FHIR-36041)|New operations, additional guidance|
|[FHIR-37892](https://jira.hl7.org/browse/FHIR-37892)|Add phase data to find subject variants operation|
|[FHIR-37893](https://jira.hl7.org/browse/FHIR-37893)|Add ranges parameter to subject phenotype operations|
|[FHIR-40320](https://jira.hl7.org/browse/FHIR-40320)|Create a new MolecularConsequence profile|
|[FHIR-40805](https://jira.hl7.org/browse/FHIR-40805)|Support copy number range and decimal in Variant profile|
|[FHIR-41245](https://jira.hl7.org/browse/FHIR-41245)|Merge predicted-therapeutic-implication slice into therapeutic-implication|
|[FHIR-41246](https://jira.hl7.org/browse/FHIR-41246)|Remove prognosis slice from implications, and prognostic-implication TBD code|
|[FHIR-41247](https://jira.hl7.org/browse/FHIR-41247)|For therapy- and medication-assessed extensions, move extensions to corresponding component slices|
|[FHIR-41248](https://jira.hl7.org/browse/FHIR-41248)|Add region studied meta data to Genomic Study and remove existing profile|
|[FHIR-41355](https://jira.hl7.org/browse/FHIR-41355)|Add new molecular consequence phenotype operations|
|[FHIR-41587](https://jira.hl7.org/browse/FHIR-41587)|Additional meta data for Genomic Study for regions: studied, called, uncalled|
|[FHIR-41610](https://jira.hl7.org/browse/FHIR-41610)|Guidance for consistently representing Variant value (especially for pertinent negatives)|
|[FHIR-42850](https://jira.hl7.org/browse/FHIR-42850)|Cleanup guidance for star alleles|
|[FHIR-43574](https://jira.hl7.org/browse/FHIR-43574)|Resolve discrepancies on Somatic page|
|[FHIR-43517](https://jira.hl7.org/browse/FHIR-43517)|Enhance somatic table of examples|
|[FHIR-43744](https://jira.hl7.org/browse/FHIR-43744)|Add additional GenomicStudyAnalysis metadata|
|[FHIR-43745](https://jira.hl7.org/browse/FHIR-43745)|Advance several GenomicStudyAnalysis value sets to Preferred|
|[FHIR-45434](https://jira.hl7.org/browse/FHIR-45434)|Add clarity to representation of Significance and Evidence in implication profiles|
|[FHIR-43691](https://jira.hl7.org/browse/FHIR-43691)|Remove Overall Interpretation profile and provide [guidance](StructureDefinition-genomic-report.html#overall-interpretation-and-conclusion) for GenomicsReport attributes for conclusion and conclusionCode.
|[FHIR-43745](https://jira.hl7.org/browse/FHIR-43745)|Advance several GenomicStudyAnalysis value sets to Preferred|
