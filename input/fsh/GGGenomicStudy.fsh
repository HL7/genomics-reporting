Extension:   GenomicsStudyReference
Id:          genomics-study-reference
Title:      "Genomics Study Reference"
Description: "Used to reference a GenomicStudy profile"
* ^context[+].type = #element
* ^context[=].expression = "DiagnosticReport"
* ^context[+].type = #element
* ^context[=].expression = "Observation"
* value[x] only Reference(GenomicStudy)

Extension:   GenomicsStudyAnalysisExt
Id:          genomics-study-analysis-ext
Title:      "Genomics Study Analysis Extension"
Description: "Used to transmit the one or more analysis per GenomimcStudy"
* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* value[x] only Reference(GenomicStudyAnalysis)


Profile: GenomicStudy
Parent: Procedure
Id: genomic-study
Title: "Genomic Study"
Description: "A genomic study is a set of analyses performed to analyze and generate genomic data."
* extension contains GenomicsStudyAnalysisExt named genomics-study-analysis-ext 0..*
* extension[GenomicsStudyAnalysisExt] ^short = "GenomicStudy.analysis"
* text ^short = "GenomicStudy.description"
* identifier ^short = "GenomicStudy.identifier"
* instantiatesCanonical only Canonical(PlanDefinition)
  * ^short = "GenomicStudy.instantiatesCanonical"
* instantiatesUri ^short = "GenomicStudy.instantiatesUri"
* status 
  * ^short = "GenomicStudy.status"
  * ^definition = "GenomicStudy.status is different from Procedure.status, see [mapping](ConceptMap-GenomicStudyStatusMap.html)"
* category 1..1
* category.coding = $OBSCAT#laboratory //kp -- perhaps should find a SNOMED code for laboratory?
* code from GenomicStudyTypeVS (example)
  * ^short = "GenomicStudy.type"
* subject ^short = "GenomicStudy.subject"
* encounter ^short = "GenomicStudy.encounter"
* performed[x] only dateTime
* performedDateTime ^short = "GenomicsStudy.startDate"
* basedOn only Reference(ServiceRequest)
  * ^short = "GenomicsStudy.basedOn"
* asserter only Reference(Practitioner or PractitionerRole)
  * ^short = "GenomicStudy.interpreter"
* reasonCode ^short = "GenomicStudy.reason"
* reasonReference only Reference(Condition or Observation)
  * ^short = "GenomicStudy.reason"
* note ^short = "GenomicStudy.note"
//GenomicStudy.referrer (Reference(Practitioner, PractitionerRole))
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

Extension:   GenomicsStudyAnalysisMethodType
Id:          genomics-study-analysis-method-type
Title:      "Genomics Study Analysis Type"
Description: "Defines a method type for a genomic analysis"
* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* value[x] only CodeableConcept
* valueCodeableConcept from GenomicStudyMethodTypeVS (example)

Extension:   GenomicsStudyAnalysisChangeType
Id:          genomics-study-analysis-change-type
Title:      "Genomics Study Analysis Change Type"
Description: "Defines the change type for a genomic analysis"
* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* value[x] only CodeableConcept
* valueCodeableConcept from GenomicStudyChangeTypeVS (example)

Extension:   GenomicsStudyAnalysisGenomeBuild
Id:          genomics-study-analysis-genome-build
Title:      "Genomics Study Analysis Genome Build"
Description: "Defines the genome build for a genomic analysis"
* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* value[x] only CodeableConcept
* valueCodeableConcept from http://loinc.org/vs/LL1040-6 (extensible)

Extension:      GenomicsStudyAnalysisInput
Id:             genomics-study-analysis-input
Title:         "Genomic Study Analysis Input"
Description:   "Genomic Study Analysis Input"
* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* extension contains
    file 0..1 and
    type 0..1 and
    generatedBy 0..1
* extension[file] ^short = "GenomicStudy.analysis.input.file"
* extension[file].value[x] only Reference(DocumentReference)
* extension[type] ^short = "GenomicStudy.analysis.input.type"
* extension[type].value[x] only CodeableConcept
* extension[type].valueCodeableConcept from GenomicStudyDataFormatVS (example)
* extension[generatedBy] ^short = "GenomicStudy.analysis.input.generatedBy"
* extension[generatedBy].value[x] only Identifier or Reference(GenomicStudy)

Extension:      GenomicsStudyAnalysisOutput
Id:             genomics-study-analysis-output
Title:         "Genomic Study Analysis Output"
Description:   "Genomic Study Analysis Output"
* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* extension contains
    file 0..1 and
    type 0..1 
* extension[file] ^short = "GenomicStudy.analysis.output.file"
* extension[file].value[x] only Reference(DocumentReference)
* extension[type] ^short = "GenomicStudy.analysis.output.type"
* extension[type].value[x] only CodeableConcept
* extension[type].valueCodeableConcept from GenomicStudyDataFormatVS (example)

Extension:   GenomicsStudyAnalysisTitle
Id:          genomics-study-analysis-title
Title:      "Genomics Study Analysis Title"
Description: "Defines a title for a genomic analysis"
* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* value[x] only string

Extension:   GenomicsStudyAnalysisFocus
Id:          genomics-study-analysis-focus
Title:      "Genomics Study Analysis Focus"
Description: "Defines a focus for a genomic analysis"
* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* value[x] only Reference(Resource)

Extension:   GenomicsStudyAnalysisSpecimen
Id:          genomics-study-analysis-specimen
Title:      "Genomics Study Analysis Specimen"
Description: "Defines a specimen for a genomic analysis"
* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* value[x] only Reference(Specimen)

Extension:   GenomicsStudyAnalysisProtocolPerformed
Id:          genomics-study-analysis-protocol-performed
Title:      "Genomics Study Analysis Protocol Performed"
Description: "Defines a protocol that was performed for a genomic analysis"
* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* value[x] only Reference(Procedure or Task)

Extension:   GenomicsStudyAnalysisRegionsStudied
Id:          genomics-study-analysis-regions-studied
Title:      "Genomics Study Analysis Regions Studied"
Description: "Defines a regions studied for a genomic analysis"
* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* value[x] only Reference(GenomicsDocumentReference or RegionStudied)

Extension:   GenomicsStudyAnalysisRegionsCalled
Id:          genomics-study-analysis-regions-called
Title:      "Genomics Study Analysis Regions called"
Description: "Defines a regions called for a genomic analysis"
* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* value[x] only Reference(GenomicsDocumentReference or RegionStudied)

Extension:      GenomicsStudyAnalysisDevice
Id:             genomics-study-analysis-device
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
* extension contains GenomicsStudyAnalysisMethodType named genomics-study-analysis-method-type 0..*
                 and GenomicsStudyAnalysisChangeType named genomics-study-analysis-change-type 0..*
                 and GenomicsStudyAnalysisGenomeBuild named genomics-study-analysis-genome-build 0..1
                 and GenomicsStudyAnalysisTitle named genomics-study-analysis-title 0..1
                 and GenomicsStudyAnalysisFocus named genomics-study-analysis-focus 0..*
                 and GenomicsStudyAnalysisSpecimen named genomics-study-analysis-specimen 0..*
                 and GenomicsStudyAnalysisRegionsStudied named genomics-study-analysis-regions-studied 0..*
                 and GenomicsStudyAnalysisRegionsCalled named genomics-study-analysis-regions-called 0..*
                 and GenomicsStudyAnalysisInput named genomics-study-analysis-input 0..*
                 and GenomicsStudyAnalysisOutput named genomics-study-analysis-output 0..*
                 and GenomicsStudyAnalysisDevice named genomics-study-analysis-device 0..*
* extension[GenomicsStudyAnalysisMethodType] ^short = "GenomicStudy.analysis.methodType"
* extension[GenomicsStudyAnalysisChangeType] ^short = "GenomicStudy.analysis.changeType"
* extension[GenomicsStudyAnalysisGenomeBuild] ^short = "GenomicStudy.analysis.genomeBuild"
* extension[GenomicsStudyAnalysisTitle] ^short = "GenomicStudy.analysis.title"
* extension[GenomicsStudyAnalysisFocus] ^short = "GenomicStudy.analysis.focus"
* extension[GenomicsStudyAnalysisSpecimen] ^short = "GenomicStudy.analysis.specimen"
* extension[GenomicsStudyAnalysisRegionsStudied] ^short = "GenomicStudy.analysis.regionsStudied"
* extension[GenomicsStudyAnalysisRegionsCalled] ^short = "GenomicStudy.analysis.regionsCalled"
* extension[GenomicsStudyAnalysisInput] ^short = "GenomicStudy.analysis.input"
* extension[GenomicsStudyAnalysisOutput] ^short = "GenomicStudy.analysis.output"
* extension[GenomicsStudyAnalysisDevice] ^short = "GenomicStudy.analysis.device"
* identifier ^short = "GenomicStudy.analysis.identifier"
* instantiatesCanonical only Canonical(PlanDefinition or ActivityDefinition)
  * ^short = "GenomicStudy.analysis.instantiatesCanonical"
* instantiatesUri ^short = "GenomicStudy.analysis.instantiatesUri"
* status = #completed
* category 1..1
* category.coding = $OBSCAT#laboratory //kp -- perhaps should find a SNOMED code for laboratory?
* performed[x] only dateTime
* performedDateTime ^short = "GenomicsStudy.analysis.date"
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
Title: "Genomic Study Status"
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
Title: "Genomic Study Status"
Description: "Backport of http://hl7.org/fhir/ValueSet/genomicstudy-status"
* ^experimental = false
* include codes from system GenomicStudyStatusCS

CodeSystem: GenomicStudyTypeCS
Id: genomic-study-type-cs
Title: "Genomic Study Type"
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
Title: "Genomic Study Type"
Description: "Backport of http://hl7.org/fhir/ValueSet/genomicstudy-type"
* ^experimental = true
* include codes from system GenomicStudyTypeCS

CodeSystem: GenomicStudyMethodTypeCS
Id: genomic-study-method-type-cs
Title: "Genomic Study Method Type"
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
Title: "Genomic Study Method Type"
Description: "Backport of http://hl7.org/fhir/ValueSet/genomicstudy-methodtype"
* ^experimental = true
* include codes from system GenomicStudyMethodTypeCS

CodeSystem: GenomicStudyChangeTypeCS
Id: genomic-study-change-type-cs
Title: "Genomic Study Change Type"
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
Title: "Genomic Study Change Type"
Description: "Backport of http://hl7.org/fhir/ValueSet/genomicstudy-changetype"
* ^experimental = true
* include codes from system GenomicStudyChangeTypeCS

CodeSystem: GenomicStudyDataFormatCS
Id: genomic-study-data-format-cs
Title: "Genomic Study Data Format"
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
Title: "Genomic Study Data Format"
Description: "Backport of http://hl7.org/fhir/ValueSet/genomicstudy-dataformat"
* ^experimental = true
* include codes from system GenomicStudyDataFormatCS
