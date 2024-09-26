Profile:        GenomicBase
Parent:         Observation
Id:             genomic-base
Title:          "Genomic Base"
Description:    "Base profile that defines characteristics shared by all genetic observations."
* ^abstract = true
//* extension contains GenomicStudy named genomic-study 0..*
//* extension[GenomicStudy] ^short = "Reference to full details of an genomic study associated with the diagnostic report"
* extension contains http://hl7.org/fhir/StructureDefinition/observation-secondaryFinding named secondary-finding 0..1
                 and http://hl7.org/fhir/StructureDefinition/bodySite named body-structure 0..1
* derivedFrom ^slicing.discriminator.type = #profile
* derivedFrom ^slicing.discriminator.path = "resolve()"
* derivedFrom ^slicing.rules = #open
* derivedFrom ^slicing.description = "Slice based on the reference profile pattern"

* partOf only Reference(MedicationAdministration or MedicationDispense or MedicationStatement or Procedure or Immunization or ImagingStudy or GenomicStudy)
* category 2..*
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "coding"
* category ^slicing.rules = #open
* category ^slicing.ordered = false   // can be omitted, since false is the default
* category ^slicing.description = "Slice based on the category.code pattern"

* category contains labCategory 1..1
                and geCategory 1..1
* category[labCategory].coding 1..1
* category[labCategory].coding = $OBSCAT#laboratory
* category[geCategory].coding 1..1
* category[geCategory].coding = $DIAGNOSTICSERVICE#GE
* note only CodedAnnotation
* note ^short = "Comments about the Observation that also contain a coded type"
* note ^requirements = "Need to be able to provide free text additional information. Notes SHALL NOT contain information which can be captured in a structured way."
* note ^comment = """
May include general statements about the observation, or statements about significant, unexpected or unreliable results values, or information about its source when relevant to its interpretation.
The CodedAnnotation data type, while not allowing for or intending to make the content computable, does allow the author to indicate the type of note. This does not replace the use of interpretation, value, or component values.
One important note is that Annotation is a FHIR data type, this is **NOT** about annotations in the genomic context.
"""
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
* component contains conclusion-string 0..1
* component[conclusion-string] ^short = "Clinical Conclusion"
* component[conclusion-string] ^definition = "Concise and clinically contextualized summary conclusion (interpretation/impression) of the observation"
* component[conclusion-string] ^requirements = "Need to be able to provide a conclusion that is not lost among the basic result data."
* component[conclusion-string] ^comment = "An example would be the interpretative information, typically canned, about a variant identified in the patient."
* component[conclusion-string].code = TbdCodesCS#conclusion-string
* component[conclusion-string].code ^short = "conclusion-string"
* component[conclusion-string].value[x] only string
* component[conclusion-string].value[x] ^short = "Summary conclusion (interpretation/impression)"

Profile:        SequencePhaseRelationship
Parent:         GenomicFinding
Id:             sequence-phase-relationship
Title:          "Sequence Phase Relationship"
Description:    "Indicates whether two entities are in Cis (same strand) or Trans (opposite strand) relationship to each other."
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* code = $LNC#82120-7
* code ^short = "82120-7"
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from SequencePhaseRelationshipVS (required)
* value[x] ^short = "Cis | Trans | Indeterminate | Unknown"
* method from http://loinc.org/vs/LL4050-2 (extensible)
* method ^short = "Directly measured | Family DNA | Family history | Inferred from population data"
// * derivedFrom ^slicing.discriminator.type = #profile
// * derivedFrom ^slicing.discriminator.path = "resolve()"
// * derivedFrom ^slicing.rules = #open
// * derivedFrom ^slicing.description = "Slice based on the profile"
* derivedFrom contains variant 0..* and 
    haplotype 0..*
* derivedFrom[variant] only Reference(Variant)
* derivedFrom[variant] ^short = "Variant in the relationship"
* derivedFrom[haplotype] only Reference(Haplotype)
* derivedFrom[haplotype] ^short = "Haplotype in the relationship"

Alias: $workflow-relatedArtifact = http://hl7.org/fhir/StructureDefinition/workflow-relatedArtifact
Alias: $supporting-info = http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo
Alias: $hla-genotyping-results-allele-database = http://hl7.org/fhir/StructureDefinition/hla-genotyping-results-allele-database
Alias: $hla-genotyping-results-glstring = http://hl7.org/fhir/StructureDefinition/hla-genotyping-results-glstring

Profile:        GenomicReport
Parent:         DiagnosticReport
Id:             genomic-report
Title:          "Genomic Report"
Description:    "Genomic profile of DiagnosticReport."
* extension contains RecommendedAction named recommended-action 0..*
    and GenomicRiskAssessment named genomic-risk-assessment 0..*
    and GenomicReportNote named coded-note 0..*
    and $supporting-info named supporting-info 0..*
    and GenomicStudyReference named genomic-study 0..*
    and $hla-genotyping-results-allele-database named hla-genotyping-results-allele-database 0..1
    and $hla-genotyping-results-glstring named hla-genotyping-results-glstring 0..1
    and $workflow-relatedArtifact named workflow-relatedArtifact 0..*
* extension[GenomicReportNote] ^short = "Comments about the report that also contain a coded type"
* extension[GenomicReportNote] ^requirements = "Need to be able to provide free text additional information. Notes SHALL NOT contain information which can be captured in a structured way."
* extension[GenomicReportNote] ^comment = """
May include general statements about the report, or statements about significant, unexpected or unreliable results values, or information about its source when relevant to its interpretation.
The CodedAnnotation data type, while not allowing for or intending to make the content computable, does allow the author to indicate the type of note. This does not replace the use of results or conclusion or conclusionCode.
One important note is that Annotation is a FHIR data type, this is **NOT** about annotations in the genomic context.
"""
// add this comment to prevent an link error, as the base spec includes a link to 'supportingInfo extension' but the link doesn't convert correctly
* extension[$workflow-relatedArtifact] ^comment = """
Note that in contrast this extension, the supportingInfo extension references other resources from the patient record that were used in creating the resource.
"""

* extension[GenomicStudyReference] ^short = "Reference to full details of an genomic study associated with the diagnostic report"
* code = $LNC#51969-4
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "coding"
* category ^slicing.rules = #open
* category ^slicing.description = "Slice based on the category code pattern"
* category contains Genetics 1..1
//* category[Genetics].coding.system = "http://terminology.hl7.org/CodeSystem/v2-0074"
* category[Genetics].coding 1..1
* category[Genetics].coding = $DIAGNOSTICSERVICE#GE
* effective[x] only dateTime
* result ^slicing.discriminator.type = #profile
* result ^slicing.discriminator.path = "resolve()"
* result ^slicing.rules = #open
* result ^slicing.description = "Slice based on the reference profile and code pattern"
* result contains 
    diagnostic-implication 0..* and
    therapeutic-implication 0..* and
	molecular-consequence 0..* and
    variant 0..* and
    sequence-phase-relation 0..* and 
    genotype 0..* and 
    haplotype 0..* and
    biomarker 0..* 
* result[diagnostic-implication] only Reference(DiagnosticImplication)
* result[diagnostic-implication] ^short = "Diagnostic Implication"
* result[therapeutic-implication] only Reference(TherapeuticImplication)
* result[therapeutic-implication] ^short = "Therapeutic Implication"
* result[molecular-consequence] only Reference(MolecularConsequence)
* result[molecular-consequence] ^short = "Molecular Consequence"
* result[variant] only Reference(Variant)
* result[variant] ^short = "Variant"
* result[sequence-phase-relation] only Reference(SequencePhaseRelationship)
* result[sequence-phase-relation] ^short = "Sequence Phase Relationship"
* result[genotype] only Reference(Genotype)
* result[genotype] ^short = "Genotype"
* result[haplotype] only Reference(Haplotype)
* result[haplotype] ^short = "Haplotype"
* result[biomarker] only Reference(MolecularBiomarker)
* result[biomarker] ^short = "MolecularBiomarker"
* conclusion ^short = "Assessment of overall results"
* conclusionCode ^short = "Coarse overall interpretation of the genomic results"

Profile:        GenomicDataFile
Parent:         DocumentReference
Id:             genomic-data-file
Title:          "Genomic Data File"
Description:    "A profile of DocumentReference used to represent a genomics file."
* context.related only Reference(GenomicReport)
* description ^short = "Human-readable description to provide guidance on how the file was generated"
