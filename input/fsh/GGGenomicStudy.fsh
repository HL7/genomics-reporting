Extension:   GenomicsStudyAnalysisExt
Id:          genomics-study-analysis-ext
Title:       "Genomics Study Analysis Extension"
Description: "Used to transmit the one or more analysis per GenomimcStudy"
* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* value[x] only Reference(GenomicStudyAnalysis)


Profile: GenomicStudy
Parent: Procedure
Id: GenomicStudy
Title: "GenomicStudy"
Description: "This is the backport of the GenomicStudy Resource from R5"
* extension contains GenomicsStudyAnalysisExt named genomics-study-analysis-ext 0..*
* extension[GenomicsStudyAnalysisExt] ^short = "GenomicStudy.analysis"
* identifier ^short = "GenomicStudy.identifier"
* instantiatesCanonical ^short = "GenomicStudy.instantiatesCanonical (canonical(PlanDefinition))"
* instantiatesUri ^short = "GenomicStudy.instantiatesUri (uri)"
* status 
  * ^short = "GenomicStudy.status"
  //TODO: status mapping...
  * ^definition = "GenomicStudy.status is different from Procedure.status, see mapping: ..."
* code from GenomicStudyTypeVS
  * ^short = "GenomicStudy.type"
  //TODO: backport CS & VS & add binding
* subject ^short = "GenomicStudy.subject"
* encounter ^short = "GenomicStudy.encounter"
* performedDateTime ^short = "GenomicsStudy.startDate"
* basedOn ^short = "GenomicsStudy.basedOn"
* asserter ^short = "GenomicStudy.interpreter"
* performer.function ^short = "referrer"
* performer.actor ^short = "GenomicStudy.referrer"
* reasonCode ^short = "GenomicStudy.reason (CodeableReference)"
* reasonReference ^short = "GenomicStudy.reason (CodeableReference(Condition,Observation))"
* note ^short = "GenomicStudy.note (Annotation)"
//"GenomicStudy.description (markdown)"

Profile: GenomicStudyAnalysis
Parent: Procedure
Id: GenomicStudyAnalysis
Title: "GenomicStudyAnalysis"
Description: "This is the backport of the GenomicStudy.analysis BackboneElement from R5"
* identifier ^short = "GenomicStudy.analysis.identifier"
* instantiatesCanonical ^short = "GenomicStudy.analysis.instantiatesCanonical (canonical(PlanDefinition, ActivityDefinition))"
* instantiatesUri ^short = "GenomicStudy.analysis.instantiatesUri (uri)"
//"GenomicStudy.analysis.methodType (CodeableConcept)"
//"GenomicStudy.analysis.changeType (CodeableConcept)"
//"GenomicStudy.analysis.genomeBuild (CodeableConcept)"
//"GenomicStudy.analysis.title (string)"
//"GenomicStudy.analysis.focus (Reference(Any))"
//"GenomicStudy.analysis.specimen (Reference(Specimen))"
//"GenomicStudy.analysis.date (dateTime)"
//"GenomicStudy.analysis.note (Annotation)"
//"GenomicStudy.analysis.protocolPerformed (Reference(Procedure, Task))"
//"GenomicStudy.analysis.regionsStudied (Reference(DocumentReference, Observation))"
//"GenomicStudy.analysis.regionsCalled (Reference(DocumentReference, Observation))"
//"GenomicStudy.analysis.input"
//"GenomicStudy.analysis.input.file (Reference(DocumentReference))"
//"GenomicStudy.analysis.input.type (CodeableConcept)"
//"GenomicStudy.analysis.input.generatedBy[x] (Identifier,Reference(GenomicStudy))"
//"GenomicStudy.analysis.output"
//"GenomicStudy.analysis.output.file (Reference(DocumentReference))"
//"GenomicStudy.analysis.output.type (CodeableConcept)"
//"GenomicStudy.analysis.performer"
//"GenomicStudy.analysis.performer.actor (Reference(Practitioner, PractitionerRole, Organization, Device))"
//"GenomicStudy.analysis.performer.role (CodeableConcept)"
//"GenomicStudy.analysis.device"
//"GenomicStudy.analysis.performer.device (Reference(Device))"
//"GenomicStudy.analysis.performer.function (CodeableConcept)"




CodeSystem: GenomicStudyType
Id: GenomicStudyType
Title: "GenomicStudyType"
Description: "Backport of http://hl7.org/fhir/genomicstudy-type"
* #alt-splc "Alternative splicing detection" "Identification of multiple different processed mRNA transcripts from the same DNA template"
* #chromatin "Chromatin conformation" "Analysis of the spacial organization of chromatin within a cell"
* #cnv "CNV detection" "Detection of a change in the number of copies of a defined region of genomic DNA sequence resulting in structural variation when compared to the reference sequence"
* #epi-alt-hist "Epigenetic Alterations - histone modifications" "Detection of biochemical modifications covalently bound to the N-terminal tail of a histone protein. These modifications may alter chromatin compaction and gene expression"
* #epi-alt-dna "Epigenetic Alterations -DNA methylation" "Detection of the presence of an additional methyl group on a DNA nucleobase, which may alter gene transcription"
* #fam-var-segr "Familial variant segregation" "Determining if a variant identified in an individual is present in other family members"
* #func-var "Functional variation detection" "Detection of sequence variants which may alter gene expression or gene product function when compared to the reference sequence"
* #gene-expression "Gene expression profiling" "Measurement and characterization of activity from all gene products"
* #post-trans-mod "Post-translational Modification Identification" "Detection of biochemical modifications covalently bound to the amino acid monomers of a processed protein"
* #snp "SNP Detection" "Determination of which nucleotide is base present at a known variable location of the genomic sequence"
* #str "STR count" "Quantification of the number of sequential microsatellite units in a repetitive sequence region"
* #struc-var "Structural variation detection" "Detection of deletions, insertions, or rearrangements of DNA segments compared to the reference sequence"

ValueSet: GenomicStudyTypeVS
Id: GenomicStudyTypeVS
Title: "GenomicStudyTypeVS"
Description: "Backport of http://hl7.org/fhir/ValueSet/genomicstudy-type"
* include codes from system GenomicStudyType