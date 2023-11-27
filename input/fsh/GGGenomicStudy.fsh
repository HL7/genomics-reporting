Extension:   GenomicStudyReference
Id:          genomic-study-reference
Title:      "Genomic Study Reference"
Description: "Used to reference a GenomicStudy profile"
* ^context[+].type = #element
* ^context[=].expression = "DiagnosticReport"
* ^context[+].type = #element
* ^context[=].expression = "Observation"
* value[x] only Reference(GenomicStudy)

Extension:   GenomicStudyAnalysisExt
Id:          genomic-study-analysis-ext
Title:      "Genomic Study Analysis Extension"
Description: "Used to transmit the one or more analysis per GenomimcStudy"
* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* value[x] only Reference(GenomicStudyAnalysis)

Extension:   GenomicStudyReferrerExt
Id:          genomic-study-referrer-ext
Title:      "Genomic Study Referrer Extension"
Description: "Used to reference to the referrer of the study"
* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* value[x] only Reference(Practitioner or PractitionerRole)

Profile: GenomicStudy
Parent: Procedure
Id: genomic-study
Title: "Genomic Study"
Description: "A genomic study is a set of analyses performed to analyze and generate genomic data."
* extension contains GenomicStudyAnalysisExt named genomic-study-analysis 0..* 
  and GenomicStudyReferrerExt named referrer 0..1
* extension[GenomicStudyAnalysisExt] ^short = "GenomicStudy.analysis"
* extension[GenomicStudyReferrerExt] ^short = "GenomicStudy.referrer"
* text ^short = "GenomicStudy.description"
* identifier ^short = "GenomicStudy.identifier"
* instantiatesCanonical only Canonical(PlanDefinition)
  * ^short = "GenomicStudy.instantiatesCanonical"
* instantiatesUri ^short = "GenomicStudy.instantiatesUri"
* status 
  * ^short = "GenomicStudy.status"
  * ^definition = "GenomicStudy.status is different from Procedure.status, see [mapping](ConceptMap-GenomicStudyStatusMap.html)"
* category 1..1
* category.coding = $OBSCAT#laboratory
* code from GenomicStudyTypeVS (example)
  * ^short = "GenomicStudy.type"
* subject ^short = "GenomicStudy.subject"
* encounter ^short = "GenomicStudy.encounter"
* performed[x] only dateTime
* performedDateTime ^short = "GenomicStudy.startDate"
* basedOn only Reference(ServiceRequest)
  * ^short = "GenomicStudy.basedOn"
* asserter only Reference(Practitioner or PractitionerRole)
  * ^short = "GenomicStudy.interpreter"
* reasonCode ^short = "GenomicStudy.reason"
* reasonReference only Reference(Condition or Observation)
  * ^short = "GenomicStudy.reason"
* note ^short = "GenomicStudy.note"
* partOf 0..0
* statusReason 0..0
* recorder 0..0
* location 0..0
* bodySite 0..0
* outcome 0..0
* report 0..0
* complication 0..0
* complicationDetail 0..0
* followUp 0..0
* focalDevice 0..0
* usedReference 0..0
* usedCode 0..0

Extension:   GenomicStudyAnalysisMethodType
Id:          genomic-study-analysis-method-type
Title:      "Genomic Study Analysis Method Type"
Description: "Defines a method type for a genomic analysis"
* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* value[x] only CodeableConcept
* valueCodeableConcept from GenomicStudyMethodTypeVS (example)

Extension:   GenomicStudyAnalysisChangeType
Id:          genomic-study-analysis-change-type
Title:      "Genomic Study Analysis Change Type"
Description: "Defines the change type for a genomic analysis"
* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* value[x] only CodeableConcept
* valueCodeableConcept from GenomicStudyChangeTypeVS (example)

Extension:   GenomicStudyAnalysisGenomeBuild
Id:          genomic-study-analysis-genome-build
Title:      "Genomic Study Analysis Genome Build"
Description: "Defines the genome build for a genomic analysis"
* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* value[x] only CodeableConcept
* valueCodeableConcept from http://loinc.org/vs/LL1040-6 (extensible)

Extension:      GenomicStudyAnalysisInput
Id:             genomic-study-analysis-input
Title:         "Genomic Study Analysis Input"
Description:   "Genomic Study Analysis Input"
* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* extension contains
    file 0..1 and
    type 0..1 and
    generatedBy 0..1
* extension[file] ^short = "GenomicStudy.analysis.input.file"
* extension[file].value[x] only Reference(GenomicDataFile)
* extension[type] ^short = "GenomicStudy.analysis.input.type"
* extension[type].value[x] only CodeableConcept
* extension[type].valueCodeableConcept from GenomicStudyDataFormatVS (example)
* extension[generatedBy] ^short = "GenomicStudy.analysis.input.generatedBy"
* extension[generatedBy].value[x] only Identifier or Reference(GenomicStudy)

Extension:      GenomicStudyAnalysisOutput
Id:             genomic-study-analysis-output
Title:         "Genomic Study Analysis Output"
Description:   "Genomic Study Analysis Output"
* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* extension contains
    file 0..1 and
    type 0..1 
* extension[file] ^short = "GenomicStudy.analysis.output.file"
* extension[file].value[x] only Reference(GenomicDataFile)
* extension[type] ^short = "GenomicStudy.analysis.output.type"
* extension[type].value[x] only CodeableConcept
* extension[type].valueCodeableConcept from GenomicStudyDataFormatVS (example)

Extension:   GenomicStudyAnalysisTitle
Id:          genomic-study-analysis-title
Title:      "Genomic Study Analysis Title"
Description: "Defines a title for a genomic analysis"
* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* value[x] only string

Extension:   GenomicStudyAnalysisFocus
Id:          genomic-study-analysis-focus
Title:      "Genomic Study Analysis Focus"
Description: "Defines a focus for a genomic analysis"
* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* value[x] only Reference(Resource)

Extension:   GenomicStudyAnalysisSpecimen
Id:          genomic-study-analysis-specimen
Title:      "Genomic Study Analysis Specimen"
Description: "Defines a specimen for a genomic analysis"
* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* value[x] only Reference(Specimen)

Extension:   GenomicStudyAnalysisProtocolPerformed
Id:          genomic-study-analysis-protocol-performed
Title:      "Genomic Study Analysis Protocol Performed"
Description: "Defines a protocol that was performed for a genomic analysis"
* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* value[x] only Reference(Procedure or Task)

Extension:   GenomicStudyAnalysisMetrics
Id:          genomic-study-analysis-metrics
Title:       "Genomic Study Analysis Metrics"
Description: "Metrics about the sequencing analysis that was performed"
* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* extension contains
    read-depth 0..1 and
    sequencing-coverage 0..1 and
    metrics-description 0..1
* extension[read-depth] ^short = "Read Depth"
* extension[read-depth] ^definition = "The average read depth (number of reads for a position) for the sequencing test"
* extension[read-depth] ^requirements = "This value is typically represented with an 'x' after the number (30x). Simply share the quantity here."
* extension[read-depth].value[x] only SimpleQuantity
* extension[read-depth].value[x] ^short = "30, 100"
* extension[sequencing-coverage] ^short = "Sequencing Coverage"
* extension[sequencing-coverage] ^definition = "The percentage of the targeted regions that were sequenced"
* extension[sequencing-coverage] ^requirements = "This value is typically represented with an '%' after the number (95%). Simply share the quantity here."
* extension[sequencing-coverage].value[x] only SimpleQuantity
* extension[sequencing-coverage].value[x] ^short = "95, 100"
* extension[metrics-description] ^short = "Metrics Description"
* extension[metrics-description] ^definition = "Freetext description of the coverage metrics for the sequencing test"
* extension[metrics-description].value[x] only string

Extension:   GenomicStudyAnalysisRegions
Id:          genomic-study-analysis-regions
Title:       "Genomic Study Analysis Regions"
Description: "Defines the regions targeted, regions called, and regions deemed uncallable (generally due to low coverage)"
* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* extension contains
    description 0..1 and
    targeted 0..* and
    called 0..* and
    uncalled 0..*
* extension[description] ^short = "Regions Targeted Description"
* extension[description] ^definition = "Freetext description of the regions targeted for the sequencing test"
* extension[description].value[x] only string

* extension[targeted] ^short = "Genes or Regions Targeted (GenomicStudy.analysis.regionsStudied)"
* extension[targeted] ^definition = "The genes or regions that were targeted in the analysis."
* extension[targeted] ^requirements = "Shared as a coded list of HGNC gene symbols or a BED file. For coded genes, the HGNC gene symbol is to be used as display text and the HGNC gene ID used as the code. If no HGNC code issued for this gene yet, NCBI gene IDs SHALL be used. If details beyond a coded list of genes are needed, a BED file SHALL be used to further describe the regions targeted in the analysis."
* extension[targeted].value[x] only CodeableConcept or Reference(GenomicDataFile)
* extension[targeted].value[x] 1..1
* extension[targeted].value[x] ^short = "Gene codes or BED file"
* extension[targeted].value[x] from HGNCVS (extensible)

* extension[called] ^short = "Genes or Regions Called (GenomicStudy.analysis.regionsCalled)"
* extension[called] ^definition = "The genes or regions that were targeted for the analysis with sufficient coverage and quality to be called."
* extension[called] ^requirements = "Shared as a coded list of HGNC gene symbols or a BED file. For coded genes, the HGNC gene symbol is to be used as display text and the HGNC gene ID used as the code. If no HGNC code issued for this gene yet, NCBI gene IDs SHALL be used. If details beyond a coded list of genes are needed, a BED file SHALL be used to further describe the regions deemed callable."
* extension[called].value[x] only CodeableConcept or Reference(GenomicDataFile)
* extension[called].value[x] 1..1
* extension[called].value[x] ^short = "Gene codes or BED file"
* extension[called].value[x] from HGNCVS (extensible)

* extension[uncalled] ^short = "Genes or Regions Uncalled"
* extension[uncalled] ^definition = "The genes or regions that were targeted for the analysis but were deemed uncallable."
* extension[uncalled] ^requirements = "Shared as a coded list of HGNC gene symbols or a BED file. For coded genes, the HGNC gene symbol is to be used as display text and the HGNC gene ID used as the code. If no HGNC code issued for this gene yet, NCBI gene IDs SHALL be used. If details beyond a coded list of genes are needed, a BED file SHALL be used to further describe the regions deemed uncallable."
* extension[uncalled].value[x] only CodeableConcept or Reference(GenomicDataFile)
* extension[uncalled].value[x] 1..1
* extension[uncalled].value[x] ^short = "Gene codes or BED file"
* extension[uncalled].value[x] from HGNCVS (extensible)

Extension:      GenomicStudyAnalysisDevice
Id:             genomic-study-analysis-device
Title:         "Genomic Study Analysis Device"
Description:   "Genomic Study Analysis Device"
* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* extension contains
    device 0..1 and
    function 0..1 
* extension[device] ^short = "GenomicStudy.analysis.device.device"
* extension[device].value[x] only Reference(Device)
* extension[function] ^short = "GenomicStudy.analysis.device.type"
* extension[function].value[x] only CodeableConcept

Profile: GenomicStudyAnalysis
Parent: Procedure
Id: genomic-study-analysis
Title: "Genomic Study Analysis"
Description: "A genomic study analysis is a component of a genomic study."
* extension contains GenomicStudyAnalysisMethodType named method-type 0..*
                 and GenomicStudyAnalysisChangeType named change-type 0..*
                 and GenomicStudyAnalysisGenomeBuild named genome-build 0..1
                 and GenomicStudyAnalysisTitle named title 0..1
                 and GenomicStudyAnalysisFocus named focus 0..*
                 and GenomicStudyAnalysisSpecimen named specimen 0..*
                 and GenomicStudyAnalysisMetrics named metrics 0..1
                 and GenomicStudyAnalysisRegions named regions 0..1
                 and GenomicStudyAnalysisDevice named device 0..*
                 and GenomicStudyAnalysisProtocolPerformed named protocol-performed 0..1
                 and GenomicStudyAnalysisInput named input 0..*
                 and GenomicStudyAnalysisOutput named output 0..*
* extension[GenomicStudyAnalysisMethodType] ^short = "GenomicStudy.analysis.methodType"
* extension[GenomicStudyAnalysisChangeType] ^short = "GenomicStudy.analysis.changeType"
* extension[GenomicStudyAnalysisGenomeBuild] ^short = "GenomicStudy.analysis.genomeBuild"
* extension[GenomicStudyAnalysisTitle] ^short = "GenomicStudy.analysis.title"
* extension[GenomicStudyAnalysisFocus] ^short = "GenomicStudy.analysis.focus"
* extension[GenomicStudyAnalysisSpecimen] ^short = "GenomicStudy.analysis.specimen"
* extension[GenomicStudyAnalysisMetrics] ^short = "Genomic Study Analysis Metrics"
* extension[GenomicStudyAnalysisRegions] ^short = "Genomic Study Analysis Regions"
* extension[GenomicStudyAnalysisDevice] ^short = "GenomicStudy.analysis.device"
* extension[GenomicStudyAnalysisProtocolPerformed] ^short = "GenomicStudy.protocolPerformed"
* extension[GenomicStudyAnalysisInput] ^short = "GenomicStudy.analysis.input"
* extension[GenomicStudyAnalysisOutput] ^short = "GenomicStudy.analysis.output"
* identifier ^short = "GenomicStudy.analysis.identifier"
* instantiatesCanonical only Canonical(PlanDefinition or ActivityDefinition)
  * ^short = "GenomicStudy.analysis.instantiatesCanonical"
* instantiatesUri ^short = "GenomicStudy.analysis.instantiatesUri"
* status = #completed
* category 1..1
* category.coding = $OBSCAT#laboratory
* performed[x] only dateTime
* performedDateTime ^short = "GenomicStudy.analysis.date"
* performer.actor only Reference(Practitioner or PractitionerRole or Organization or Device)
  * ^short = "GenomicStudy.analysis.performer.actor"
* performer.function ^short = "GenomicStudy.analysis.performer.role"
* note ^short = "GenomicStudy.analysis.note"
* basedOn 0..0
* partOf 0..0
* statusReason 0..0
* code 0..0
* encounter 0..0
* recorder 0..0
* asserter 0..0
* location 0..0
* bodySite 0..0
* outcome 0..0
* complication 0..0
* complicationDetail 0..0
* followUp 0..0
* focalDevice 0..0
* usedReference 0..0
* usedCode 0..0
* reasonCode 0..0
* reasonReference 0..0
* report 0..0

// Concept Maps
Instance: GenomicStudyStatusMap
InstanceOf: ConceptMap
Usage: #definition
Description: "Mapping from Procedure's EventStatus (http://hl7.org/fhir/ValueSet/event-status) ValueSet for 'status' to http://hl7.org/fhir/uv/genomics-reporting/ValueSet/genomicstudy-status-vs codes"
* title = "Genomic Study Status Map"
* experimental = false
* name = "GenomicStudyStatusMap"
* description = "Mapping from Procedure's EventStatus (http://hl7.org/fhir/ValueSet/event-status) ValueSet for 'status' to http://hl7.org/fhir/uv/genomics-reporting/ValueSet/genomicstudy-status-vs codes"
* status = #draft
* publisher = "HL7 International Clinical Genomics Work Group"
* sourceCanonical = "http://hl7.org/fhir/ValueSet/event-status"
* targetCanonical = "http://hl7.org/fhir/uv/genomics-reporting/ValueSet/genomic-study-status-vs"
* group[+].source = "http://hl7.org/fhir/event-status"
* group[=].target = "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/genomic-study-status-cs"
* group[=].element[+].code = http://hl7.org/fhir/event-status#completed
* group[=].element[=].display = "Completed"
* group[=].element[=].target[+].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/genomic-study-status-cs#available
* group[=].element[=].target[=].display = "Available"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = http://hl7.org/fhir/event-status#preparation
* group[=].element[=].display = "Preparation"
* group[=].element[=].target[+].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/genomic-study-status-cs#registered
* group[=].element[=].target[=].display = "Registered"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[+].code = http://hl7.org/fhir/event-status#in-progress
* group[=].element[=].display = "In Progress"
* group[=].element[=].target[+].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/genomic-study-status-cs#registered
* group[=].element[=].target[=].display = "Registered"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[+].code = http://hl7.org/fhir/event-status#on-hold
* group[=].element[=].display = "On Hold"
* group[=].element[=].target[+].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/genomic-study-status-cs#registered
* group[=].element[=].target[=].display = "Registered"
* group[=].element[=].target[=].equivalence = #wider

* group[=].element[+].code = http://hl7.org/fhir/event-status#not-done
* group[=].element[=].display = "Not Done"
* group[=].element[=].target[+].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/genomic-study-status-cs#cancelled
* group[=].element[=].target[=].display = "Cancelled"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[+].code = http://hl7.org/fhir/event-status#stopped
* group[=].element[=].display = "Stopped"
* group[=].element[=].target[+].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/genomic-study-status-cs#cancelled
* group[=].element[=].target[=].display = "Cancelled"
* group[=].element[=].target[=].equivalence = #wider

* group[=].element[+].code = http://hl7.org/fhir/event-status#entered-in-error
* group[=].element[=].display = "Entered in Error"
* group[=].element[=].target[+].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/genomic-study-status-cs#entered-in-error
* group[=].element[=].target[=].display = "Entered in Error"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = http://hl7.org/fhir/event-status#unknown
* group[=].element[=].display = "Unknown"
* group[=].element[=].target[+].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/genomic-study-status-cs#unknown
* group[=].element[=].target[=].display = "Unknown"
* group[=].element[=].target[=].equivalence = #equivalent

CodeSystem: GenomicStudyStatusCS
Id: genomic-study-status-cs
Title: "Genomic Study Status CodeSystem"
Description: "Backport of http://hl7.org/fhir/genomicstudy-status"
* ^caseSensitive = true
* ^experimental = false
* #registered "Registered" "The existence of the genomic study is registered, but there is nothing yet available."
* #available "Available" "At least one instance has been associated with this genomic study."
* #cancelled "Cancelled" "The genomic study is unavailable because the genomic study was not started or not completed (also sometimes called 'aborted')."
* #entered-in-error "Entered in Error" "The genomic study has been withdrawn following a previous final release. This electronic record should never have existed, though it is possible that real-world decisions were based on it. (If real-world activity has occurred, the status should be 'cancelled' rather than 'entered-in-error'.)."
* #unknown "Unknown" "The system does not know which of the status values currently applies for this request. Note: This concept is not to be used for 'other' - one of the listed statuses is presumed to apply, it's just not known which one."

ValueSet: GenomicStudyStatusVS
Id: genomic-study-status-vs
Title: "Genomic Study Status ValueSet"
Description: "Backport of http://hl7.org/fhir/ValueSet/genomicstudy-status"
* ^experimental = false
* include codes from system GenomicStudyStatusCS

CodeSystem: GenomicStudyTypeCS
Id: genomic-study-type-cs
Title: "Genomic Study Type CodeSystem"
Description: "Backport of http://hl7.org/fhir/genomicstudy-type"
* ^caseSensitive = true
* ^experimental = true
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
Id: genomic-study-type-vs
Title: "Genomic Study Type ValueSet"
Description: "Backport of http://hl7.org/fhir/ValueSet/genomicstudy-type"
* ^experimental = true
* include codes from system GenomicStudyTypeCS

CodeSystem: GenomicStudyMethodTypeCS
Id: genomic-study-method-type-cs
Title: "Genomic Study Method Type CodeSystem"
Description: "Backport of http://hl7.org/fhir/genomicstudy-methodtype"
* ^caseSensitive = true
* ^experimental = true
* #biochemical-genetics "Biochemical Genetics"
* #cytogenetics "Cytogenetics"
* #molecular-genetics "Molecular Genetics"
* #analyte "Analyte"
* #chromosome-breakage-studies "Chromosome breakage studies"
* #deletion-duplication-analysis "Deletion/duplication analysis"
* #detection-of-homozygosity "Detection of homozygosity"
* #enzyme-assay "Enzyme assay"
* #fish-interphase "FISH-interphase"
* #fish-metaphase "FISH-metaphase"
* #flow-cytometry "Flow cytometry"
* #fish "Fluorescence in situ hybridization (FISH)"
* #immunohistochemistry "Immunohistochemistry"
* #karyotyping "Karyotyping"
* #linkage-analysis "Linkage analysis"
* #methylation-analysis "Methylation analysis"
* #msi "Microsatellite instability testing (MSI)"
* #m-fish "Multicolor FISH (M-FISH)"
* #mutation-scanning-of-select-exons "Mutation scanning of select exons"
* #mutation-scanning-of-the-entire-coding-region "Mutation scanning of the entire coding region"
* #protein-analysis "Protein analysis"
* #protein-expression "Protein expression"
* #rna-analysis "RNA analysis"
* #sequence-analysis-of-select-exons "Sequence analysis of select exons"
* #sequence-analysis-of-the-entire-coding-region "Sequence analysis of the entire coding region"
* #sister-chromatid-exchange "Sister chromatid exchange"
* #targeted-variant-analysis "Targeted variant analysis"
* #udp "Uniparental disomy study (UPD)"
* #aspe "Allele-specific primer extension (ASPE)"
* #alternative-splicing-detection "Alternative splicing detection"
* #bi-directional-sanger-sequence-analysis "Bi-directional Sanger Sequence Analysis"
* #c-banding "C-banding"
* #cia "Chemiluminescent Immunoassay (CIA)"
* #chromatin-immunoprecipitation-on-chip "Chromatin Immunoprecipitation on ChIP"
* #comparative-genomic-hybridization "Comparative Genomic Hybridization"
* #damid "DamID"
* #digital-virtual-karyotyping "Digital / Virtual karyotyping"
* #digital-microfluidic-microspheres "Digital microfluidic microspheres"
* #enzymatic-levels "Enzymatic levels"
* #enzyme-activity "Enzyme activity"
* #elisa "Enzyme-Linked Immunosorbent Assays (ELISA)"
* #fluorometry "Fluorometry"
* #fusion-genes-microarrays "Fusion genes microarrays"
* #g-banding "G-banding"
* #gc-ms "Gas chromatographymass spectrometry (GC-MS)"
* #gene-expression-profiling "Gene expression profiling"
* #gene-id "GeneID"
* #gold-nanoparticle-probe-technology "Gold nanoparticle probe technology"
* #hplc "High-performance liquid chromatography (HPLC)"
* #lc-ms "Liquid chromatography mass spectrometry (LC-MS)"
* #lc-ms-ms "Liquid chromatography-tandem mass spectrometry (LC-MS/MS)"
* #metabolite-levels "Metabolite levels"
* #methylation-specific-pcr "Methylation-specific PCR"
* #microarray "Microarray"
* #mlpa "Multiplex Ligation-dependent Probe Amplification (MLPA)"
* #ngs-mps "Next-Generation (NGS)/Massively parallel sequencing (MPS)"
* #ola "Oligonucleotide Ligation Assay (OLA)"
* #oligonucleotide-hybridization-based-dna-sequencing "Oligonucleotide hybridization-based DNA sequencing"
* #other "Other"
* #pcr "PCR"
* #pcr-with-allele-specific-hybridization "PCR with allele specific hybridization"
* #pcr-rflp-with-southern-hybridization "PCR-RFLP with Southern hybridization"
* #protein-truncation-test "Protein truncation test"
* #pyrosequencing "Pyrosequencing"
* #q-banding "Q-banding"
* #qpcr "Quantitative PCR (qPCR)"
* #r-banding "R-banding"
* #rflp "RFLP"
* #rt-lamp "RT-LAMP"
* #rt-pcr "RT-PCR"
* #rt-pcr-with-gel-analysis "RT-PCR with gel analysis"
* #rt-qpcr "RT-qPCR"
* #snp-detection "SNP Detection"
* #silver-staining "Silver staining"
* #sky "Spectral karyotyping (SKY)"
* #t-banding "T-banding"
* #ms-ms "Tandem mass spectrometry (MS/MS)"
* #tetra-nucleotide-repeat-by-pcr-or-southern-blot "Tetra-nucleotide repeat by PCR or Southern Blot"
* #tiling-arrays "Tiling Arrays"
* #trinucleotide-repeat-by-pcr-or-southern-blot "Trinucleotide repeat by PCR or Southern Blot"
* #uni-directional-sanger-sequencing "Uni-directional Sanger sequencing"

ValueSet: GenomicStudyMethodTypeVS
Id: genomic-study-method-type-vs
Title: "Genomic Study Method Type ValueSet"
Description: "Backport of http://hl7.org/fhir/ValueSet/genomicstudy-methodtype"
* ^experimental = true
* include codes from system GenomicStudyMethodTypeCS

CodeSystem: GenomicStudyChangeTypeCS
Id: genomic-study-change-type-cs
Title: "Genomic Study Change Type CodeSystem"
Description: "Backport of http://hl7.org/fhir/genomicstudy-changetype"
* ^caseSensitive = true
* ^experimental = true
* #DNA "DNA change" "Change that involves Deoxyribonucleic acid (DNA) sequences."
* #RNA "RNA change" "Change that involves Ribonucleic Acid (RNA) sequences."
* #AA "Protein/amino Acids change" "Change that involves Amino Acid (AA) or protein sequences."
* #CHR "Chromosomal changes" "Change that involves number or strcture of chromosomes."
* #CNV "Copy number variations" "Change that involves copy number variations among various genomes."

ValueSet: GenomicStudyChangeTypeVS
Id: genomic-study-change-type-vs
Title: "Genomic Study Change Type ValueSet"
Description: "Backport of http://hl7.org/fhir/ValueSet/genomicstudy-changetype"
* ^experimental = true
* include codes from system GenomicStudyChangeTypeCS

CodeSystem: GenomicStudyDataFormatCS
Id: genomic-study-data-format-cs
Title: "Genomic Study Data Format CodeSystem"
Description: "Backport of http://hl7.org/fhir/genomicstudy-dataformat"
* ^caseSensitive = true
* ^experimental = true
* #bam "BAM"
* #bed "BED"
* #bedpe "BEDPE"
* #bedgraph "BedGraph"
* #bigbed "bigBed"
* #bigWig "bigWig"
* #birdsuite-files "Birdsuite-Files"
* #broadpeak "broadPeak"
* #cbs "CBS"
* #chemical-reactivity-probing-profiles "Chemical-Reactivity-Probing-Profiles"
* #chrom-sizes "chrom-sizes"
* #cn "CN"
* #custom-file-formats "Custom-File-Formats"
* #cytoband "Cytoband"
* #fasta "FASTA"
* #gct "GCT"
* #cram "CRAM"
* #genepred "genePred"
* #gff-gtf "GFF/GTF"
* #gistic "GISTIC"
* #goby "Goby"
* #gwas "GWAS"
* #igv "IGV"
* #loh "LOH"
* #maf-multiple-alignment-format "MAF-Multiple Alignment Format"
* #maf-mutation-annotation-format "MAF-Mutation-Annotation-Format"
* #merged-bam-file "Merged BAM File"
* #mut "MUT"
* #narrowpeak "narrowPeak"
* #psl "PSL"
* #res "RES"
* #rna-secondary-structure-formats "RNA-Secondary-Structure-Formats"
* #sam "SAM"
* #sample-info-attributes-file "Sample-Info-Attributes-file"
* #seg "SEG"
* #tdf "TDF"
* #track-line "Track Line"
* #type-line "Type Line"
* #vcf "VCF"
* #wig "WIG"

ValueSet: GenomicStudyDataFormatVS
Id: genomic-study-data-format-vs
Title: "Genomic Study Data Format ValueSet"
Description: "Backport of http://hl7.org/fhir/ValueSet/genomicstudy-dataformat"
* ^experimental = true
* include codes from system GenomicStudyDataFormatCS
