Instance: servicerequest-hla-a-r4
InstanceOf: ServiceRequest
Description: "Example ServiceRequest for genomics"
Usage: #example
* identifier.system = "http:/aDonorRegistry.com"
* identifier.value = "1234.5678"
* status = #completed
* intent = #order
* category = SCT#108252007 "Laboratory procedure"
* priority = #routine
* code = LNC#13298-5 "HLA-A [Type]"
* subject.identifier.value = "001^24680"
* requester.type = "Organization"
* requester.display = "aDonorRegistry"
* performer.type = "Organization"
* performer.display = "aTypingLab, Inc"
* specimen.type = "Specimen"
* specimen.display = "buccal swab: 123456789"