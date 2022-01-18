Instance: servicerequest-hla-a-r4
InstanceOf: GenomicsServiceRequest
Usage: #example
* identifier.system = "http:/aDonorRegistry.com"
* identifier.value = "1234.5678"
* status = #completed
* intent = #order
* category = $sct#108252007 "Laboratory procedure"
* priority = #routine
* code = $loinc#13298-5 "HLA-A [Type]"
* subject.identifier.value = "001^24680"
* requester.type = "Organization"
* requester.display = "aDonorRegistry"
* performer.type = "Organization"
* performer.display = "aTypingLab, Inc"
* specimen.type = "Specimen"
* specimen.display = "buccal swab: 123456789"