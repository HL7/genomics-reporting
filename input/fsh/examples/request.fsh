Instance: request
InstanceOf: GenomicsServiceRequest
Usage: #inline
* status = #active
* intent = #original-order
* code.coding = $loinc#81247-9
* subject = Reference(ExamplePatient)
* reasonCode.text = "Worried about family planning"