Profile: GenomicStudy
Parent: Procedure
Id: GenomicStudy
Title: "GenomicStudy"
Description: "This is the backport of the GenomicStudy Resource from R5"
* identifier ^short = "GenomicStudy.identifier"
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