Instance: ExamplePatient
InstanceOf: Patient
Description: "Patient example"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">This would contain patient identifiers, demographics, etc.</div>"

Instance: ExampleSpecimen
InstanceOf: Specimen
Description: "Specimen example"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/specimen"
* subject = Reference(ExamplePatient)

Instance: ExampleLab
InstanceOf: Organization
Description: "Organization (lab) example"
* name = "Some lab"

Instance: ExampleServiceRequest
InstanceOf: GenomicsServiceRequest
Description: "ServiceRequest (order) example"
* status = #active
* intent = #original-order
* code.coding = LNC#81247-9
* subject = Reference(ExamplePatient)
* reasonCode.text = "Worried about family planning"

Instance: MedicationStatementWarfarin
InstanceOf: MedicationStatement
Description: "MedicationStatement for Warfarin"
* status = #unknown
* medicationCodeableConcept.coding = RXN#11289 "Warfarin"
* subject = Reference(ExamplePatient)
