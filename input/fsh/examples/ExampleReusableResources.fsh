Instance: ExamplePatient
InstanceOf: Patient
//Usage: #inline
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">This would contain patient identifiers, demographics, etc.</div>"

Instance: ExampleSpecimen
InstanceOf: Specimen
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/specimen"
* subject = Reference(ExamplePatient)

Instance: ExampleLab
InstanceOf: Organization
Usage: #inline
* name = "Some lab"

Instance: ExampleServiceRequest
InstanceOf: GenomicsServiceRequest
Usage: #inline
* status = #active
* intent = #original-order
* code.coding = $loinc#81247-9
* subject = Reference(ExamplePatient)
* reasonCode.text = "Worried about family planning"
