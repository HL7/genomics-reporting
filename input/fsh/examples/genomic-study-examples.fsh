Instance: lungMass
InstanceOf: GenomicStudy
Description: "Example of solid tumor whole exome sequencing panel"
Usage: #example
* extension[GenomicsStudyAnalysisExt][+].valueReference = Reference(lungMass-analysis1)
* extension[GenomicsStudyAnalysisExt][+].valueReference = Reference(lungMass-analysis2)
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
* extension[GenomicsStudyAnalysisMethodType][+].valueCodeableConcept = $methodType#sequence-analysis-of-the-entire-coding-region "Sequence analysis of the entire coding region"
* extension[GenomicsStudyAnalysisChangeType][+].valueCodeableConcept = $SEQONT#SO:0001483 "SNV"
* extension[GenomicsStudyAnalysisChangeType][+].valueCodeableConcept = $SEQONT#SO:0002007 "MNV"
* extension[GenomicsStudyAnalysisChangeType][+].valueCodeableConcept = $SEQONT#SO:1000032 "delins"
* extension[GenomicsStudyAnalysisGenomeBuild][+].valueCodeableConcept = $LNC#LA26806-2 "GRCh38"
* extension[GenomicsStudyAnalysisSpecimen][+].valueReference = Reference(Specimen/genomicSpecimen)
* extension[GenomicsStudyAnalysisFocus][+].valueReference = Reference(Patient/genomicPatient)
* extension[GenomicsStudyAnalysisRegionsStudied][+].valueReference = Reference(DocumentReference/WES-FullSequencedRegion-GRCh38)
* extension[GenomicsStudyAnalysisRegionsCalled][+].valueReference = Reference(DocumentReference/SimpleVariantAnalysis-called)
* extension[GenomicsStudyAnalysisOutput][+].extension[type].valueCodeableConcept = $fileType#vcf "VCF"
* extension[GenomicsStudyAnalysisOutput][=].extension[file].valueReference = Reference(DocumentReference/genomicVCFfile-simple)
* instantiatesUri = "https://pubmed.ncbi.nlm.nih.gov/33927380/"
* status = #completed
* category = $OBSCAT#laboratory
* performedDateTime = "2019-03-01T01:01:10-06:00"
* note.text = "For technical reasons, PIK3CB was deemed uncallable using this method."
* performer.actor = Reference(Practitioner/practitioner02)
* performer.function = $CodeSystem-v3-ParticipationType.html#PRF "Performer"
* subject = Reference(Patient/genomicPatient)

Instance: lungMass-analysis2
InstanceOf: GenomicStudyAnalysis
Description: "Example of Deletion/duplication analysis"
Usage: #example
* extension[GenomicsStudyAnalysisMethodType][+].valueCodeableConcept = $methodType#deletion-duplication-analysis "Deletion/duplication analysis"
* extension[GenomicsStudyAnalysisChangeType][+].valueCodeableConcept = $SEQONT#SO:0001019 "CNV"
* extension[GenomicsStudyAnalysisGenomeBuild][+].valueCodeableConcept = $LNC#LA26806-2 "GRCh38"
* extension[GenomicsStudyAnalysisSpecimen][+].valueReference = Reference(Specimen/genomicSpecimen)
* extension[GenomicsStudyAnalysisFocus][+].valueReference = Reference(Patient/genomicPatient)
* extension[GenomicsStudyAnalysisRegionsStudied][+].valueReference = Reference(DocumentReference/WES-FullSequencedRegion-GRCh38)
* extension[GenomicsStudyAnalysisRegionsCalled][+].valueReference = Reference(DocumentReference/CNVAnalysis-called)
* extension[GenomicsStudyAnalysisOutput][+].extension[type].valueCodeableConcept = $fileType#vcf "VCF"
* extension[GenomicsStudyAnalysisOutput][=].extension[file].valueReference = Reference(DocumentReference/genomicVCFfile-cnv)
* instantiatesUri = "https://pubmed.ncbi.nlm.nih.gov/33927380/"
* status = #completed
* category = $OBSCAT#laboratory
* performedDateTime = "2019-03-01T01:01:10-06:00"
* note.text = "For technical reasons, PIK3CB was deemed uncallable using this method."
* performer.actor = Reference(Practitioner/practitioner02)
* performer.function = $CodeSystem-v3-ParticipationType.html#PRF "Performer"
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
InstanceOf: GenomicsDocumentReference
Description: "WES_FullSequencedRegion_GRCh38: A sample Document Reference instance representing a BED file that may be used as input or output of a genomic analysis pipeline."
Usage: #example
* identifier.system = "http://www.somesystemabc.net/identifiers/files"
* identifier.value = "11117"
* status = #current
* docStatus = #preliminary
* description = "WES_FullSequencedRegion_GRCh38: A sample Document Reference instance representing a BED file that may be used as input or output of a genomic analysis pipeline."
* securityLabel = $v3-Confidentiality#R "Restricted"
* content.attachment.url = "https://chat.fhir.org/user_uploads/10155/BILYJerATC59WlG15J316BEf/WES_FullSequencedRegion_GRCh38.bed"
* content.attachment.title = "WES_FullSequencedRegion_GRCh38"
* content.attachment.creation = "2019-03-01T01:02:01+01:00"

Instance: CNVAnalysis-called
InstanceOf: GenomicsDocumentReference
Description: "CNVAnalysis_called: A sample Document Reference instance representing a BED file that may be used as input or output of a genomic analysis pipeline."
Usage: #example
* identifier.system = "http://www.somesystemabc.net/identifiers/files"
* identifier.value = "11120"
* status = #current
* docStatus = #preliminary
* description = "CNVAnalysis_called: A sample Document Reference instance representing a BED file that may be used as input or output of a genomic analysis pipeline."
* securityLabel = $v3-Confidentiality#R "Restricted"
* content.attachment.url = "https://chat.fhir.org/user_uploads/10155/Hnv3LtumKn-1QjeyS2KVuw4R/CNVAnalysis_called.bed"
* content.attachment.title = "CNVAnalysis_called"
* content.attachment.creation = "2019-03-01T01:02:01+01:00"

Instance: genomicVCFfile-cnv
InstanceOf: GenomicsDocumentReference
Description: "genomicVCFfile_cnv: A sample Document Reference instance representing a VCF file that may be used as input or output of a genomic analysis pipeline."
Usage: #example
* identifier.system = "http://www.somesystemabc.net/identifiers/files"
* identifier.value = "11121"
* status = #current
* docStatus = #preliminary
* description = "genomicVCFfile_cnv: A sample Document Reference instance representing a VCF file that may be used as input or output of a genomic analysis pipeline."
* securityLabel = $v3-Confidentiality#R "Restricted"
* content.attachment.url = "https://chat.fhir.org/user_uploads/10155/dxn3s6R1Y-Cv0h-1bTCu-JvY/genomicVCFFile_cnv.vcf"
* content.attachment.title = "genomicVCFfile_cnv"
* content.attachment.creation = "2019-03-01T01:02:01+01:00"

Instance: genomicVCFfile-simple
InstanceOf: GenomicsDocumentReference
Description: "genomicVCFfile_simple: A sample Document Reference instance representing a VCF file that may be used as input or output of a genomic analysis pipeline."
Usage: #example
* identifier.system = "http://www.somesystemabc.net/identifiers/files"
* identifier.value = "11119"
* status = #current
* docStatus = #preliminary
* description = "genomicVCFfile_simple: A sample Document Reference instance representing a VCF file that may be used as input or output of a genomic analysis pipeline."
* securityLabel = $v3-Confidentiality#R "Restricted"
* content.attachment.url = "https://chat.fhir.org/user_uploads/10155/gdL90-np7lJjGwUxeARapUHB/genomicVCFFile_simple.vcf"
* content.attachment.title = "genomicVCFfile_simple"
* content.attachment.creation = "2019-03-01T01:02:01+01:00"

Instance: SimpleVariantAnalysis-called
InstanceOf: GenomicsDocumentReference
Description: "SimpleVariantAnalysis_called: A sample Document Reference instance representing a BED file that may be used as input or output of a genomic analysis pipeline."
Usage: #example
* identifier.system = "http://www.somesystemabc.net/identifiers/files"
* identifier.value = "11118"
* status = #current
* docStatus = #preliminary
* description = "SimpleVariantAnalysis_called: A sample Document Reference instance representing a BED file that may be used as input or output of a genomic analysis pipeline."
* securityLabel = $v3-Confidentiality#R "Restricted"
* content.attachment.url = "https://chat.fhir.org/user_uploads/10155/jQZWWKs4JO8ZfhfrbsCbbMUA/SimpleVariantAnalysis_called.bed"
* content.attachment.title = "SimpleVariantAnalysis_called"
* content.attachment.creation = "2019-03-01T01:02:01+01:00"