Instance: GenomicSpecimenExample01 
InstanceOf: GenomicSpecimen
Description: "Example for Genomic Specimen"
* id = "GenomicSpecimenExample01"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/specimen"
// * text = "Genomic specimen example"
* status = #available "Available"
* subject = Reference(CGPatientExample01)
* processing.timeDateTime = "2020-10-05"
* type = SPTY#TISS "Tissue"

Instance: CGPatientExample01 
InstanceOf: Patient
Description: "Example for Patient. Supports references to subject for multiple genomics reporting profile conforming instances."
* id = "CGPatientExample01"
// * text = "Patient example used for subject reference by CG FHIR examples"
* identifier.use = #usual
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
* identifier.system = "http://hospital.example.org"
* identifier.value = "m123"
* name.family = "Everyman"
* name.given[0] = "Adam"
* name.given[1] = "B."
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "555-555-5555"
* contact.telecom[0].use = #home
* contact.telecom[1].system = #email
* contact.telecom[1].value = "adam.everyman@example.com"
* gender = #male
* birthDate = "1951-01-20"
* address.line = "123 Main St"
* address.city = "Anytown"
* address.postalCode = "12345"
* address.country = "US"
* communication.language = urn:ietf:bcp:47#en-US "English (Region=United States)"
* communication.language.text = "English"