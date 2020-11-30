Instance: CGServiceRequestExampleservicerequest-hla-a-r4
InstanceOf: ServiceRequest
Description: "Example for ServiceRequest. "
* category.coding = http://snomed.info/sct#108252007 "Laboratory procedure"
* code.coding = http://loinc.org#13298-5 "HLA-A [Type]"
* id = "servicerequest-hla-a-r4"
* identifier.system = "http:/aDonorRegistry.com"
* identifier.value = "1234.5678"
* intent = #order
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/servicerequest"
* performer.display = "aTypingLab, Inc"
* performer.type = #Organization
* priority = #routine
* requester.display = "aDonorRegistry"
* requester.type = #Organization
* specimen.display = "buccal swab: 123456789"
* specimen.type = #Specimen
* status = #completed
* subject.identifier.value = "001^24680"
