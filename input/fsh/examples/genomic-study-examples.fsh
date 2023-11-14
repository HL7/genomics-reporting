Instance: lungMass
InstanceOf: GenomicStudy
Description: "Example of solid tumor whole exome sequencing panel"
Usage: #example
* extension[GenomicStudyAnalysisExt][+].valueReference = Reference(lungMass-analysis1)
* extension[GenomicStudyAnalysisExt][+].valueReference = Reference(lungMass-analysis2)
* status = #completed
* code.text = "Solid tumor whole exome sequencing panel"
* category = $OBSCAT#laboratory
* subject = Reference(Patient/genomicPatient)
* performedDateTime = "2019-03-01"
* basedOn = Reference(ServiceRequest/genomicServiceRequest)
* asserter = Reference(Practitioner/practitioner02)
* reasonCode = $SCT#309529002 "Lung mass (finding)"
* note.text = "For technical reasons, PIK3CB was deemed uncallable."

Instance: lungMass-analysis1
InstanceOf: GenomicStudyAnalysis
Description: "Example of Sequence analysis of the entire coding region"
Usage: #example
* extension[GenomicStudyAnalysisMethodType][+].valueCodeableConcept = $GSMETHODTYPE#sequence-analysis-of-the-entire-coding-region "Sequence analysis of the entire coding region"
* extension[GenomicStudyAnalysisChangeType][+].valueCodeableConcept = $SEQONT#SO:0001483 "SNV"
* extension[GenomicStudyAnalysisChangeType][+].valueCodeableConcept = $SEQONT#SO:0002007 "MNV"
* extension[GenomicStudyAnalysisChangeType][+].valueCodeableConcept = $SEQONT#SO:1000032 "delins"
* extension[GenomicStudyAnalysisGenomeBuild][+].valueCodeableConcept = $LNC#LA26806-2 "GRCh38"
* extension[GenomicStudyAnalysisSpecimen][+].valueReference = Reference(Specimen/genomicSpecimen)
* extension[GenomicStudyAnalysisFocus][+].valueReference = Reference(Patient/genomicPatient)
* extension[GenomicStudyAnalysisDevice][+].extension[device].valueReference = Reference(Device/triodenovo-software)
* extension[GenomicStudyAnalysisRegionsStudied][+].valueReference = Reference(DocumentReference/WES-FullSequencedRegion-GRCh38)
* extension[GenomicStudyAnalysisRegionsCalled][+].valueReference = Reference(DocumentReference/SimpleVariantAnalysis-called)
* extension[GenomicStudyAnalysisRegionsUncallable][+].valueReference = Reference(DocumentReference/UncallableRegions)
* extension[GenomicStudyAnalysisOutput][+].extension[type].valueCodeableConcept = $GSFILETYPE#vcf "VCF"
* extension[GenomicStudyAnalysisOutput][=].extension[file].valueReference = Reference(DocumentReference/genomicVCFfile-simple)
* instantiatesUri = "https://pubmed.ncbi.nlm.nih.gov/33927380/"
* status = #completed
* category = $OBSCAT#laboratory
* performedDateTime = "2019-03-01T01:01:10-06:00"
* note.text = "For technical reasons, PIK3CB was deemed uncallable using this method."
* performer.actor = Reference(Practitioner/practitioner02)
* performer.function = $PARTICIPATIONTYPE#PRF "Performer"
* subject = Reference(Patient/genomicPatient)

Instance: lungMass-analysis2
InstanceOf: GenomicStudyAnalysis
Description: "Example of Deletion/duplication analysis"
Usage: #example
* extension[GenomicStudyAnalysisMethodType][+].valueCodeableConcept = $GSMETHODTYPE#deletion-duplication-analysis "Deletion/duplication analysis"
* extension[GenomicStudyAnalysisChangeType][+].valueCodeableConcept = $SEQONT#SO:0001019 "CNV"
* extension[GenomicStudyAnalysisGenomeBuild][+].valueCodeableConcept = $LNC#LA26806-2 "GRCh38"
* extension[GenomicStudyAnalysisSpecimen][+].valueReference = Reference(Specimen/genomicSpecimen)
* extension[GenomicStudyAnalysisFocus][+].valueReference = Reference(Patient/genomicPatient)
* extension[GenomicStudyAnalysisRegionsStudied][+].valueReference = Reference(DocumentReference/WES-FullSequencedRegion-GRCh38)
* extension[GenomicStudyAnalysisRegionsCalled][+].valueReference = Reference(DocumentReference/CNVAnalysis-called)
* extension[GenomicStudyAnalysisOutput][+].extension[type].valueCodeableConcept = $GSFILETYPE#vcf "VCF"
* extension[GenomicStudyAnalysisOutput][=].extension[file].valueReference = Reference(DocumentReference/genomicVCFfile-cnv)
* instantiatesUri = "https://pubmed.ncbi.nlm.nih.gov/33927380/"
* status = #completed
* category = $OBSCAT#laboratory
* performedDateTime = "2019-03-01T01:01:10-06:00"
* note.text = "For technical reasons, PIK3CB was deemed uncallable using this method."
* performer.actor = Reference(Practitioner/practitioner02)
* performer.function = $PARTICIPATIONTYPE#PRF "Performer"
* subject = Reference(Patient/genomicPatient)

Instance: genomicSpecimen
InstanceOf: Specimen
Description: "Example of lung specimen obtained by biopsy"
Usage: #example
* identifier.system = "http://www.somesystemabc.net/identifiers/specimens"
* identifier.value = "4"
* status = #available
* type = $SCT#122610009 "Specimen from lung obtained by biopsy (specimen)"
* subject = Reference(Patient/genomicPatient) "John Doe"
* receivedTime = "2019-03-01T01:01:01Z"
* request = Reference(ServiceRequest/genomicServiceRequest)
* collection.collector = Reference(Practitioner/practitioner02)
* collection.collectedDateTime = "2019-03-01T01:01:00Z"
* collection.quantity.value = 1
* collection.quantity.unit = "mm2"
* collection.method = $SCT#129314006 "Biopsy - action"

Instance: genomicPatient
InstanceOf: Patient
Description: "Example patient"
Usage: #example
* identifier.use = #temp
* identifier.type = $IDTYPE#MR "Medical record number"
* identifier.system = "http://www.somesystemabc.net/identifiers/persons"
* identifier.value = "11117"
* identifier.period.start = "2021-01-01"
* identifier.assigner.display = "General Hospital"
* active = true
* name.use = #official
* name.family = "Doe"
* name.given[0] = "John"
* name.given[+] = "Junior"
* gender = #unknown
* birthDate = "2001-01-01"

Instance: practitioner02
InstanceOf: Practitioner
Description: "Example practitioner"
Usage: #example
* identifier.use = #temp
* identifier.type = $IDTYPE#PRN "Provider number"
* identifier.system = "http://www.somesystemabc.net/identifiers/persons"
* identifier.value = "11116"
* identifier.period.start = "2021-01-01"
* identifier.assigner.display = "Child Hospital"
* active = true
* name.family = "Doel"
* name.given = "Jane"
* name.prefix = "Dr"

Instance: genomicServiceRequest
InstanceOf: ServiceRequest
Description: "Example of Molecular genetic test"
Usage: #example
* identifier.type = $IDTYPE#LACSN
* identifier.type.text = "Laboratory Accession ID"
* identifier.system = "http://www.somesystemabc.net/identifiers/serviceRequests"
* identifier.value = "111111112"
* status = #active
* intent = #plan
* code = $SCT#405825005 "Molecular genetic test (procedure)"
* subject = Reference(Patient/genomicPatient)

Instance: WES-FullSequencedRegion-GRCh38
InstanceOf: GenomicDataFile
Description: "WES_FullSequencedRegion_GRCh38: A sample Document Reference instance representing a BED file that may be used as input or output of a genomic analysis pipeline."
Usage: #example
* identifier.system = "http://www.somesystemabc.net/identifiers/files"
* identifier.value = "11117"
* status = #current
* docStatus = #preliminary
* description = "WES_FullSequencedRegion_GRCh38: A sample Document Reference instance representing a BED file that may be used as input or output of a genomic analysis pipeline."
* securityLabel = $CONFIDENTIALITY#R "Restricted"
* content.attachment.url = "https://chat.fhir.org/user_uploads/10155/BILYJerATC59WlG15J316BEf/WES_FullSequencedRegion_GRCh38.bed"
* content.attachment.title = "WES_FullSequencedRegion_GRCh38"
* content.attachment.creation = "2019-03-01T01:02:01+01:00"

Instance: CNVAnalysis-called
InstanceOf: GenomicDataFile
Description: "CNVAnalysis_called: A sample Document Reference instance representing a BED file that may be used as input or output of a genomic analysis pipeline."
Usage: #example
* identifier.system = "http://www.somesystemabc.net/identifiers/files"
* identifier.value = "11120"
* status = #current
* docStatus = #preliminary
* description = "CNVAnalysis_called: A sample Document Reference instance representing a BED file that may be used as input or output of a genomic analysis pipeline."
* securityLabel = $CONFIDENTIALITY#R "Restricted"
* content.attachment.url = "https://chat.fhir.org/user_uploads/10155/Hnv3LtumKn-1QjeyS2KVuw4R/CNVAnalysis_called.bed"
* content.attachment.title = "CNVAnalysis_called"
* content.attachment.creation = "2019-03-01T01:02:01+01:00"

Instance: genomicVCFfile-cnv
InstanceOf: GenomicDataFile
Description: "genomicVCFfile_cnv: A sample Document Reference instance representing a VCF file that may be used as input or output of a genomic analysis pipeline."
Usage: #example
* identifier.system = "http://www.somesystemabc.net/identifiers/files"
* identifier.value = "11121"
* status = #current
* docStatus = #preliminary
* description = "genomicVCFfile_cnv: A sample Document Reference instance representing a VCF file that may be used as input or output of a genomic analysis pipeline."
* securityLabel = $CONFIDENTIALITY#R "Restricted"
* content.attachment.url = "https://chat.fhir.org/user_uploads/10155/dxn3s6R1Y-Cv0h-1bTCu-JvY/genomicVCFFile_cnv.vcf"
* content.attachment.title = "genomicVCFfile_cnv"
* content.attachment.creation = "2019-03-01T01:02:01+01:00"

Instance: genomicVCFfile-simple
InstanceOf: GenomicDataFile
Description: "genomicVCFfile_simple: A sample Document Reference instance representing a VCF file that may be used as input or output of a genomic analysis pipeline."
Usage: #example
* identifier.system = "http://www.somesystemabc.net/identifiers/files"
* identifier.value = "11119"
* status = #current
* docStatus = #preliminary
* description = "genomicVCFfile_simple: A sample Document Reference instance representing a VCF file that may be used as input or output of a genomic analysis pipeline."
* securityLabel = $CONFIDENTIALITY#R "Restricted"
* content.attachment.url = "https://chat.fhir.org/user_uploads/10155/gdL90-np7lJjGwUxeARapUHB/genomicVCFFile_simple.vcf"
* content.attachment.title = "genomicVCFfile_simple"
* content.attachment.creation = "2019-03-01T01:02:01+01:00"

Instance: SimpleVariantAnalysis-called
InstanceOf: GenomicDataFile
Description: "SimpleVariantAnalysis_called: A sample Document Reference instance representing a BED file that may be used as input or output of a genomic analysis pipeline."
Usage: #example
* identifier.system = "http://www.somesystemabc.net/identifiers/files"
* identifier.value = "11118"
* status = #current
* docStatus = #preliminary
* description = "SimpleVariantAnalysis_called: A sample Document Reference instance representing a BED file that may be used as input or output of a genomic analysis pipeline."
* securityLabel = $CONFIDENTIALITY#R "Restricted"
* content.attachment.url = "https://chat.fhir.org/user_uploads/10155/jQZWWKs4JO8ZfhfrbsCbbMUA/SimpleVariantAnalysis_called.bed"
* content.attachment.title = "SimpleVariantAnalysis_called"
* content.attachment.creation = "2019-03-01T01:02:01+01:00"

Instance: UncallableRegions
InstanceOf: GenomicDataFile
Description: "Representing a BED file that represents uncallable regions"
Usage: #example
* identifier.system = "http://www.somesystemabc.net/identifiers/files"
* identifier.value = "11125"
* status = #current
* docStatus = #preliminary
* description = "Representing a BED file that represents uncallable regions"
* securityLabel = $CONFIDENTIALITY#R "Restricted"
* content.attachment.url = "https://chat.fhir.org/user_uploads/10155/jQZWWKs4JO8ZfhfrbsCbbMUA/uncallable_regions.bed"
* content.attachment.title = "Uncalleable Regions"
* content.attachment.creation = "2019-03-01T01:02:01+01:00"


Instance: genomicstudy-trio2
InstanceOf: GenomicStudy
Description: "GenomicStudy example of a trio analysis"
Usage: #example
* extension[GenomicStudyAnalysisExt][+].valueReference = Reference(genomicstudyanalysis-trio2)
* extension[GenomicStudyAnalysisMethodType][+].valueCodeableConcept.text =  "Trio-analysis"
* extension[GenomicStudyReferrerExt].valueReference = Reference(Practitioner/practitioner02)
* identifier[+]
  * use = #temp
  * system = "http://www.somesystemabc.net/identifiers/genomicstudies"
  * value = "urn:uuid:1111-1111-1111-1113"
* status = #completed
* code.text = "Trio Analysis"
* category = $OBSCAT#laboratory
* subject = Reference(Patient/denovoChild)
* performedDateTime = "2023-10-01"
* asserter = Reference(Practitioner/practitioner02)
* note.text = "De novo mutation study of the patient. The Prenatal Trio Whole Exome Sequencing (Prenatal Trio WES) test is ordered by a physician and must be accompanied with a consent form and detailed clinical information. In general, the test is used when prenatal imaging detects an anomaly that strongly suggests that there is an underlying genetic etiology. Prenatal Trio WES is often considered only after fetal chromosome microarray analysis has been non-diagnostic."

Instance: genomicstudyanalysis-trio2
InstanceOf: GenomicStudyAnalysis
Description: "GenomicStudy Analysis example of a trio analysis"
Usage: #example
* extension[GenomicStudyAnalysisGenomeBuild][+].valueCodeableConcept = $LNC#LA26806-2 "GRCh38"
* extension[GenomicStudyAnalysisFocus][+].valueReference = Reference(Patient/denovoFather)
* extension[GenomicStudyAnalysisFocus][+].valueReference = Reference(Patient/denovoMother)
* extension[GenomicStudyAnalysisTitle].valueString = "Parental Sequence Variation Detection Using Next Generation Sequencing"
* extension[GenomicStudyAnalysisProtocolPerformed].valueReference = Reference(Procedure/SequencingProcedure)
* extension[GenomicStudyAnalysisInput][+]
  * extension[file].valueReference = Reference(DocumentReference/genomicFileProbandBAM)
  * extension[type].valueCodeableConcept = GenomicStudyDataFormatCS#bam "BAM"
* extension[GenomicStudyAnalysisInput][+]
  * extension[file].valueReference = Reference(DocumentReference/genomicFileMotherBAM)
  * extension[type].valueCodeableConcept = GenomicStudyDataFormatCS#bam "BAM"
* extension[GenomicStudyAnalysisInput][+]
  * extension[file].valueReference = Reference(DocumentReference/genomicFileFatherBAM)
  * extension[type].valueCodeableConcept = GenomicStudyDataFormatCS#bam "BAM"
* extension[GenomicStudyAnalysisOutput][+]
  * extension[file].valueReference = Reference(DocumentReference/genomicFileProbandVCF)
  * extension[type].valueCodeableConcept = GenomicStudyDataFormatCS#vcf "VCF"
* status = #completed
* category = $OBSCAT#laboratory
* performedDateTime = "2023-10-01"
* instantiatesUri = "https://pubmed.ncbi.nlm.nih.gov/33927380/"
* subject = Reference(Patient/denovoChild)

Instance: triodenovo-software
InstanceOf: Device
Description: "Triodenovo Software"
Usage: #example
* id = "triodenovo-software"
* identifier[+]
  * system = "http://www.somesystemabc.net/identifiers/devices"
  * value = "11112"
* status = #active
* manufacturer = "Vanderbilt Genetics Institute"
* deviceName[+]
  * name = "Triodenovo Software"
  * type = #user-friendly-name
* type = $SCT#706687001 "Software (physical object)"
* version[+].value = "0.06"

Instance: denovoChild
InstanceOf: Patient
Description: "Child of a trio"
Usage: #example
* identifier[+]
  * use = #temp
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical record number"
  * system = "http://www.somesystemabc.net/identifiers/persons"
  * value = "1234-11111"
* name[+]
  * use = #official
  * family = "Denovo"
  * given[+] = "Child"

Instance: denovoFather
InstanceOf: Patient
Description: "Father of a trio"
Usage: #example
* identifier[+]
  * use = #temp
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical record number"
  * system = "http://www.somesystemabc.net/identifiers/persons"
  * value = "6789-11111"
* name[+]
  * use = #official
  * family = "Denovo"
  * given[+] = "Father"

Instance: denovoMother
InstanceOf: Patient
Description: "Mother of a trio"
Usage: #example
* identifier[+]
  * use = #temp
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical record number"
  * system = "http://www.somesystemabc.net/identifiers/persons"
  * value = "0987-11111"
* name[+]
  * use = #official
  * family = "Denovo"
  * given[+] = "Mother"

Instance: genomicFileProbandBAM
InstanceOf: GenomicDataFile
Description: "A sample Document Reference instance representing a generic genomic file that may ber used as input or output of a genomic analysis pipeline"
Usage: #example
* identifier[+]
  * system = "http://www.somesystemabc.net/identifiers/files"
  * value = "11118"
* status = #current
* docStatus = #preliminary
* subject = Reference(Patient/denovoChild)
* description = "A sample Document Reference instance representing a generic genomic file that may ber used as input or output of a genomic analysis pipeline."
* securityLabel[+] = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#R "Restricted"
* content[+].attachment
  * url = "http://www.somesystemabc.net/identifiers/files/11111"
  * title = "Probands BAM file"

Instance: genomicFileMotherBAM
InstanceOf: GenomicDataFile
Description: "A sample Document Reference instance representing a generic genomic file that may ber used as input or output of a genomic analysis pipeline"
Usage: #example
* identifier[+]
  * system = "http://www.somesystemabc.net/identifiers/files"
  * value = "11125"
* status = #current
* docStatus = #preliminary
* subject = Reference(Patient/denovoMother)
* description = "A sample Document Reference instance representing a generic genomic file that may ber used as input or output of a genomic analysis pipeline."
* securityLabel[+] = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#R "Restricted"
* content[+].attachment
  * url = "http://www.somesystemabc.net/identifiers/files/11125"
  * title = "Mothers BAM file"

Instance: genomicFileFatherBAM
InstanceOf: GenomicDataFile
Description: "A sample Document Reference instance representing a generic genomic file that may ber used as input or output of a genomic analysis pipeline"
Usage: #example
* identifier[+]
  * system = "http://www.somesystemabc.net/identifiers/files"
  * value = "11132"
* status = #current
* docStatus = #preliminary
* subject = Reference(Patient/denovoFather)
* description = "A sample Document Reference instance representing a generic genomic file that may ber used as input or output of a genomic analysis pipeline."
* securityLabel[+] = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#R "Restricted"
* content[+].attachment
  * url = "http://www.somesystemabc.net/identifiers/files/11132"
  * title = "Fathers BAM file"

Instance: genomicFileProbandVCF
InstanceOf: GenomicDataFile
Description: "A sample Document Reference instance representing a generic genomic file that may ber used as input or output of a genomic analysis pipeline"
Usage: #example
* identifier[+]
  * system = "http://www.somesystemabc.net/identifiers/files"
  * value = "11150"
* status = #current
* docStatus = #preliminary
* subject = Reference(Patient/denovoChild)
* description = "A sample Document Reference instance representing a generic genomic file that may ber used as input or output of a genomic analysis pipeline."
* securityLabel[+] = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#R "Restricted"
* content[+].attachment
  * url = "http://www.somesystemabc.net/identifiers/files/11150"
  * title = "Probands VCF file"

Instance: SequencingProcedure
InstanceOf: Procedure
Description: "Very simple producure representing a genomic study's protocol"
Usage: #example
* status = #completed
* code = $SCT#443968007 "Sequencing of entire coding region of gene (procedure)"
* subject = Reference(Patient/denovoChild)
* performer.actor = Reference(Practitioner/practitioner02)
