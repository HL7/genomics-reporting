Alias: $sct = http://snomed.info/sct
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $sequenceontology = http://sequenceontology.org
Alias: $loinc = http://loinc.org
Alias: $CodeSystem-v3-ParticipationType.html = http://terminology.hl7.org/3.1.0/CodeSystem-v3-ParticipationType.html
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $v3-Confidentiality = http://terminology.hl7.org/CodeSystem/v3-Confidentiality

Instance: lungMass
InstanceOf: Procedure
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study"
* extension[0].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-ext"
* extension[=].valueReference = Reference(Procedure/lungMass-analysis1)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-ext"
* extension[=].valueReference = Reference(Procedure/lungMass-analysis2)
* status = #completed
* code = $sct#443968007 "Whole Exome Sequencing - Sequencing of entire coding region of gene (procedure)"
* category = $observation-category#laboratory
* subject = Reference(Patient/genomicPatient)
* performedDateTime = "2019-03-01"
* basedOn = Reference(ServiceRequest/genomicServiceRequest)
* asserter = Reference(Practitioner/practitioner02)
* reasonCode.coding.system = "http://snomed.info/sct"
* reasonCode.coding.code = #309529002
* reasonCode.coding.display = "Lung mass (finding)"
* note.text = "For technical reasons, PIK3CB was deemed uncallable."

Instance: lungMass-analysis1
InstanceOf: Procedure
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis"
* extension[0].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-method-type"
* extension[=].valueCodeableConcept = $sct#117040002 "Nucleic acid sequencing (procedure)"
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-change-type"
* extension[=].valueCodeableConcept = $sequenceontology#SO:0001483 "SNV"
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-change-type"
* extension[=].valueCodeableConcept = $sequenceontology#SO:0002007 "MNV"
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-change-type"
* extension[=].valueCodeableConcept = $sequenceontology#SO:1000032 "delins"
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-genome-build"
* extension[=].valueCodeableConcept = $loinc#LA26806-2 "GRCh38"
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-specimen"
* extension[=].valueReference = Reference(Specimen/genomicSpecimen)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-focus"
* extension[=].valueReference = Reference(Patient/genomicPatient)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-regions-studied"
* extension[=].valueReference = Reference(DocumentReference/WES-FullSequencedRegion-GRCh38)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-regions-called"
* extension[=].valueReference = Reference(DocumentReference/SimpleVariantAnalysis-called)
* instantiatesUri = "https://pubmed.ncbi.nlm.nih.gov/33927380/"
* status = #completed
* category = $observation-category#laboratory
* performedDateTime = "2019-03-01T01:01:10-06:00"
* note.text = "For technical reasons, PIK3CB was deemed uncallable using this method."
* performer.actor = Reference(Practitioner/practitioner02)
* performer.function = $CodeSystem-v3-ParticipationType.html#PRF "Performer"
* report = Reference(DocumentReference/genomicVCFfile-simple)
* subject = Reference(Patient/genomicPatient)

Instance: lungMass-analysis2
InstanceOf: Procedure
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis"
* extension[0].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-method-type"
* extension[=].valueCodeableConcept = $sct#117040002 "Nucleic acid sequencing (procedure)"
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-change-type"
* extension[=].valueCodeableConcept = $sequenceontology#SO:0001019 "CNV"
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-genome-build"
* extension[=].valueCodeableConcept = $loinc#LA26806-2 "GRCh38"
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-specimen"
* extension[=].valueReference = Reference(Specimen/genomicSpecimen)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-focus"
* extension[=].valueReference = Reference(Patient/genomicPatient)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-regions-studied"
* extension[=].valueReference = Reference(DocumentReference/WES-FullSequencedRegion-GRCh38)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-study-analysis-regions-called"
* extension[=].valueReference = Reference(DocumentReference/CNVAnalysis-called)
* instantiatesUri = "https://pubmed.ncbi.nlm.nih.gov/33927380/"
* status = #completed
* category = $observation-category#laboratory
* performedDateTime = "2019-03-01T01:01:10-06:00"
* note.text = "For technical reasons, PIK3CB was deemed uncallable using this method."
* performer.actor = Reference(Practitioner/practitioner02)
* performer.function = $CodeSystem-v3-ParticipationType.html#PRF "Performer"
* report = Reference(DocumentReference/genomicVCFfile-cnv)
* subject = Reference(Patient/genomicPatient)

Instance: genomicSpecimen
InstanceOf: Specimen
Usage: #example
* identifier.system = "http://www.somesystemabc.net/identifiers/specimens"
* identifier.value = "4"
* status = #available
* type = $sct#122610009 "Specimen from lung obtained by biopsy (specimen)"
* subject = Reference(Patient/genomicPatient) "John Doe"
* receivedTime = "2019-03-01T01:01:01Z"
* request = Reference(ServiceRequest/genomicServiceRequest)
* collection.collector = Reference(Practitioner/practitioner02)
* collection.collectedDateTime = "2019-03-01T01:01:00Z"
* collection.quantity.value = 1
* collection.quantity.unit = "mm2"
* collection.method = $sct#129314006 "Biopsy - action"

Instance: genomicPatient
InstanceOf: Patient
Usage: #example
* identifier.use = #temp
* identifier.type = $v2-0203#MR "Medical record number"
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
Usage: #example
* identifier.use = #temp
* identifier.type = $v2-0203#PRN "Provider number"
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
Usage: #example
* identifier.type = $v2-0203#LACSN
* identifier.type.text = "Laboratory Accession ID"
* identifier.system = "http://www.somesystemabc.net/identifiers/serviceRequests"
* identifier.value = "111111112"
* status = #active
* intent = #plan
* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #405825005
* code.coding.display = "Molecular genetic test (procedure)"
* subject = Reference(Patient/genomicPatient)

Instance: WES-FullSequencedRegion-GRCh38
InstanceOf: DocumentReference
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
InstanceOf: DocumentReference
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
InstanceOf: DocumentReference
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
InstanceOf: DocumentReference
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
InstanceOf: DocumentReference
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