Profile:        GenomicSpecimen
Parent:         Specimen
Id:             specimen
Title:          "Genomics specimen"
Description:    "A sample to be used for analysis."

* subject 1..1
* subject only Reference(Patient or Group or Location)


Profile:        GenomicsBase
Parent:         Observation
Id:             genomics-base
Title:          "Genomics base"
Description:    "Base profile that defines characteristics shared by all genetic observations. (FSH version)"

* bodySite from http://hl7.org/fhir/StructureDefinition/bodySite (extensible) // MLT: optimized how this is represented. The original is a duplicate element modeled as an extension. Not sure why this was necessary.
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "code"
* category ^slicing.rules = #open
* category ^slicing.ordered = false   // can be omitted, since false is the default
* category ^slicing.description = "Slice based on the category.code pattern"
* category contains labCategory 1..*
* category[labCategory] = ObsCat#laboratory
* subject 0..1
* subject only Reference(Patient or Group or Location)
* performer 0..1
* performer only Reference(Patient or Organization or Patient or RelatedPerson)
* extension contains http://hl7.org/fhir/StructureDefinition/observation-secondaryFinding named secondaryfinding 0..1


Profile:        GenomicFinding
Parent:         GenomicsBase
Id:             finding
Title:          "Finding"
Description:    "Properties common to genetic findings whose results are expressed as computable discrete elements (e.g. genotypes, haplotypes, variants, etc.). (FSH version)"

* specimen only Reference(GenomicSpecimen)
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
* component contains GeneStudied 0..* and CytogenicLocation 0..* and RefSequenceAssembly 0..*
* component[GeneStudied] ^short = "Gene studied [ID]"
* component[GeneStudied] ^definition = "HUGO Gene Nomenclature Committee (HGNC) identifier for a gene. List the gene(s) examined in full or in part by the study. If the study addresses multiple genes, these can be recorded in multiple gene studied components. The required coding will use the HGNC gene symbol as the display text and HGNC gene ID as the code."
* component[GeneStudied].code = LNC#48018-6
* component[GeneStudied].value[x] only CodeableConcept
* component[GeneStudied].value[x] ^short = "If no HGNC code issued for this gene yet, NCBI gene IDs SHALL be used."
* component[GeneStudied].valueCodeableConcept 1..1
* component[GeneStudied].valueCodeableConcept from HGNCVS (extensible)
* component[CytogenicLocation] ^short = "Cytogenetic (chromosome) location"
* component[CytogenicLocation] ^definition = "Some observations have multiple component observations. These component observations are expressed as separate code value pairs that share the same attributes. Examples include systolic and diastolic component observations for blood pressure measurement and multiple component observations for genetics observations."
* component[CytogenicLocation].code = LNC#48001-2
* component[CytogenicLocation].value[x] only CodeableConcept
* component[CytogenicLocation].valueCodeableConcept 1..1
* component[RefSequenceAssembly] ^short = "Human reference sequence assembly version"
* component[RefSequenceAssembly] ^definition = "Human reference sequence assembly version"
* component[RefSequenceAssembly].code = LNC#62374-4
* component[RefSequenceAssembly].value[x] only CodeableConcept
* component[RefSequenceAssembly].valueCodeableConcept 1..1
* component[RefSequenceAssembly].valueCodeableConcept from http://loinc.org/vs/LL378-1 (extensible)


Profile:        TMB
Parent:         GenomicsBase
Id:             tmb
Title:          "Tumor Mutation Burden"
Description:    "Definitions for the tmb resource profile. The total number of mutations (changes) found in the DNA of cancer cells. [Source: NCI Dictionary](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/tumor-mutational-burden)"

* code = LNC#94076-7 // Mutations/Megabase [# Ratio] in Tumor
* valueQuantity = UCUM#1/1000000{Base}
* valueQuantity.unit = "Mutations/Megabase"
* interpretation from HighLowCodesVS

Profile:        Variant
Parent:         GenomicFinding
Id:             variant
Title:          "Tumor Mutation Burden"
Description:    "Definitions for the tmb resource profile. The total number of mutations (changes) found in the DNA of cancer cells. [Source: NCI Dictionary](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/tumor-mutational-burden)"

* code = LNC#69548-6 //"Genetic variant assessment"
* method from http://loinc.org/vs/LL4048-6 (extensible)
* valueCodeableConcept from http://loinc.org/vs/LL1971-2 (required)
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
* component contains
    dna-chg 0..1 and
    dna-chg-type 0..1 and
    functional-annotation 0..1 and 
    variation-code 0..1 and
    dbSNP-id 0..1 and
    genomic-dna-chg 0..1 and
    genomic-source-class 0..1 and
    amino-acid-chg 0..1 and
    amino-acid-chg-type 0..1 and
    transcript-ref-seq 0..1 and
    genomic-ref-seq 0..1 and
    sample-allelic-frequency 0..1 and
    allelic-read-depth 0..1 and
    allelic-state 0..1 and
    copy-number 0..1 and 
    ref-allele 0..1

* component[dna-chg] ^short = "DNA Change - Transcript (cHGVS)"
* component[dna-chg] ^definition = "Human Genome Variation Society (HGVS) nomenclature for a single DNA marker."
* component[dna-chg].code = LNC#48004-6
* component[dna-chg].value[x] only CodeableConcept
* component[dna-chg].valueCodeableConcept 1..1
* component[dna-chg].valueCodeableConcept from HGVSVS (required)
* component[dna-chg-type] ^short = "DNA Change Type"
* component[dna-chg-type] ^definition = "Codified type for associated DNA Marker. DNA Marker's use the HGVS notation which implies the DNA Marker Type, but the concurrent use of this code will allow a standard and explicit type for technical and display convenience."
* component[dna-chg-type].code = LNC#48019-4
* component[dna-chg-type].value[x] only CodeableConcept
* component[dna-chg-type].value[x] ^short = "Concepts in sequence ontology under SO:0002072 (see http://www.sequenceontology.org/browser/current_release/term/SO:0002072)."
* component[dna-chg-type].valueCodeableConcept 1..1
* component[dna-chg-type].valueCodeableConcept from DNAChangeTypeVS (extensible)
* component[functional-annotation] ^short = "Functional Annotation"
* component[functional-annotation] ^definition = "Annotated changes to sequence features caused by this variant."
* component[functional-annotation].code.coding.system = "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes"
* component[functional-annotation].code.coding.code = #functional-annotation
* component[functional-annotation].value[x] only CodeableConcept
* component[functional-annotation].value[x] ^short = "Concepts in sequence ontology under SO:0001537 (see http://www.sequenceontology.org/browser/current_release/term/SO:0001537)."
* component[functional-annotation].valueCodeableConcept 1..1
* component[functional-annotation].valueCodeableConcept from FunctionalAnnotationVS (extensible)
* component[variation-code] ^short = "Variation Code"
* component[variation-code] ^definition = "The name of a structural variant reported using HGVS nomenclature."
* component[variation-code].code = LNC#81252-9
* component[variation-code].value[x] only CodeableConcept
* component[variation-code].valueCodeableConcept 1..1
// * component[VariationCode].valueCodeableConcept from unbound (example) // MLT: this should be "unbound (example)". Waiting on reply from FSH team on how to represent it.
* component[dbSNP-id] ^short = "dbSNP ID"
* component[dbSNP-id] ^definition = "The unique identifier for the variant represented as a small nucleotide polymorphism (SNP). The dbSNP ID is used routinely as the base identifier in pharmacogenomics as well as arrCGH studies. For example, for the simple variant NM_014049.4(ACAD9):c.1249C>T (p.Arg417Cys), the dbSNP ID is 368949613. [http://www.ncbi.nlm.nih.gov/clinvar/variation/30880/]."
* component[dbSNP-id].code = LNC#81255-2
* component[dbSNP-id].value[x] only CodeableConcept
* component[dbSNP-id].valueCodeableConcept 1..1
// * component[dbSNP-id].valueCodeableConcept from unbound (example) // MLT: this should be "unbound (example)". Waiting on reply from FSH team on how to represent it.
* component[genomic-dna-chg] ^short = "DNA Change - Genomic (gHGVS)"
* component[genomic-dna-chg] ^definition = "The name of a structural variant reported using HGVS nomenclature."
* component[genomic-dna-chg].code = LNC#81290-9
* component[genomic-dna-chg].value[x] only CodeableConcept
* component[genomic-dna-chg].valueCodeableConcept 1..1
* component[genomic-dna-chg].valueCodeableConcept from HGVSVS (required)
* component[genomic-source-class] ^short = "Genomic Source Class"
* component[genomic-source-class] ^definition = "The genomic class of the specimen being analyzed: Germline for inherited genome, somatic for cancer genome, and prenatal for fetal genome."
* component[genomic-source-class].code = LNC#48002-0
* component[genomic-source-class].value[x] only CodeableConcept
* component[genomic-source-class].valueCodeableConcept 1..1
* component[genomic-source-class].valueCodeableConcept from http://loinc.org/vs/LL378-1 (extensible)
* component[amino-acid-chg] ^short = "Amino acid change (pHGVS)"
* component[amino-acid-chg] ^definition = "Human Genome Variation Society (HGVS) nomenclature for an amino acid sequence. This value is derivable from the DNA Marker value if available. It is provided for convenience. The use of the nomenclature must be extended to describe non-variations (aka. wild types) see samples for wild type examples."
* component[amino-acid-chg].code = LNC#48005-3
* component[amino-acid-chg].value[x] only CodeableConcept
* component[amino-acid-chg].valueCodeableConcept 1..1
* component[amino-acid-chg].valueCodeableConcept from HGVSVS (required)
* component[amino-acid-chg-type] ^short = "Amino acid change type"
* component[amino-acid-chg-type] ^definition = "Codified type for associated Amino Acid Marker. Amino Acid Marker's use the HGVS notation which implies the Amino Acid Marker Type, but the concurrent use of this code will allow a standard and explicit type for technical and display convenience."
* component[amino-acid-chg-type].code = LNC#48006-1
* component[amino-acid-chg-type].value[x] only CodeableConcept
* component[amino-acid-chg-type].valueCodeableConcept 1..1
* component[amino-acid-chg-type].valueCodeableConcept from http://loinc.org/vs/LL380-7 (extensible)
* component[transcript-ref-seq] ^short = "Transcript reference sequence ID"
* component[transcript-ref-seq] ^definition = "TThis field carries the ID for the transcribed reference sequence, which is the part of the genomic reference sequence that is converted to messenger RNA (i.e., after the introns are removed)."
* component[transcript-ref-seq].code = LNC#51958-7
* component[transcript-ref-seq].value[x] only CodeableConcept
* component[transcript-ref-seq].valueCodeableConcept 1..1
// * component[transcript-ref-seq].valueCodeableConcept from unbound (example) // MLT: this should be "unbound (example)". Waiting on reply from FSH team on how to represent it.
* component[genomic-ref-seq] ^short = "Genomic reference sequence ID"
* component[genomic-ref-seq] ^definition = "This field carries the ID for the genomic reference sequence. The genomic reference sequence is a contiguous stretch of chromosome DNA that spans all of the exons of the gene and includes transcribed and non transcribed stretches. For this ID use either the NCBI genomic nucleotide RefSeq IDs with their version number (see: NCBI.NLM.NIH.Gov/RefSeq) or use the LRG identifiers, without transcript (t or p) extensions -- when they become available. (See- Report sponsored by GEN2PHEN at the European Bioinformatics Institute at Hinxton UK April 24-25, 2008). The NCI RefSeq genomic IDs are distinguished by a prefix of 'NG' for genes from the nuclear chromosomes and prefix of 'NC' for genes from mitochondria. The LRG Identifiers have a prefix of 'LRG_' Mitochondrial genes are not in the scope of LRG."
* component[genomic-ref-seq].code = LNC#48013-7
* component[genomic-ref-seq].value[x] only CodeableConcept
* component[genomic-ref-seq].valueCodeableConcept 1..1
// * component[genomic-ref-seq].valueCodeableConcept from unbound (example) // MLT: this should be "unbound (example)". Waiting on reply from FSH team on how to represent it.
* component[sample-allelic-frequency] ^short = "Sample Allelic Frequency"
* component[sample-allelic-frequency].code = LNC#81258-6
* component[sample-allelic-frequency].value[x] only CodeableConcept
* valueQuantity.value only decimal
* component[allelic-read-depth] ^short = "Allelic read depth"
* component[allelic-read-depth] ^definition = "Specifies the number of reads that identified the allele in question whether it consists of one or a small sequence of contiguous nucleotides. Different methods and purposes require different numbers of reads to be acceptable. Often >400, sometimes as few as 2-4."
* component[allelic-read-depth].code = LNC#82121-5
* component[allelic-read-depth].value[x] only Quantity
* component[allelic-state] ^short = "Allelic state"
* component[allelic-state] ^definition = "The level of occurrence of a single DNA Marker within a set of chromosomes. Heterozygous indicates the DNA Marker is only present in one of the two genes contained in homologous chromosomes. Homozygous indicates the DNA Marker is present in both genes contained in homologous chromosomes. Hemizygous indicates the DNA Marker exists in the only single copy of a gene in a non-homologous chromosome (The male X and Y chromosome are non-homologous). Hemiplasmic indicates that the DNA Marker is present in some but not all of the copies of mitochondrial DNA. Homoplasmic indicates that the DNA Maker is present in all of the copies of mitochondrial DNA."
* component[allelic-state].code = LNC#53034-5
* component[allelic-state].value[x] only CodeableConcept
* component[allelic-state].valueCodeableConcept 1..1
* component[allelic-state].valueCodeableConcept from http://loinc.org/vs/LL381-5 (extensible)
* component[copy-number] ^short = "Genomic structural variant copy number"
* component[copy-number] ^definition = "The copy number of the large variant. In HGVS, this is the numeric value following the “X”. It is a unit-less value. Note that a copy number of 1 implies a deletion. The copy number can usually be inferred from the HGVS or ISCN fields."
* component[copy-number].code = LNC#82155-3
* component[copy-number].value[x] only Quantity  // MLT: follow-up on how to constrain to Count
* component[ref-allele] ^short = "Genomic ref allele"
* component[ref-allele] ^definition = "Reference values ('normal') examined within the Reference Sequence."
* component[ref-allele].code = LNC#69547-8
* component[ref-allele].value[x] only string 
