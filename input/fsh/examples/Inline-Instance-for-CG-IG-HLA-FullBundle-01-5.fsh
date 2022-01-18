Instance: Inline-Instance-for-CG-IG-HLA-FullBundle-01-5
InstanceOf: GenomicsServiceRequest
Usage: #inline
* status = #completed
* intent = #order
* code = $loinc#13303-3 "HLA-A+B+C (class I) [Type]"
* subject = Reference(urn:uuid:13f34265-335c-4853-bc38-0815315edafa) "John Storm"
  * type = "Patient"
* authoredOn = "2016-11-15"
* requester = Reference(urn:uuid:00ef18ad-ed04-4b2c-81ee-b69bb243f0d5) "aDonorRegistry"
  * type = "Organization"
* performer = Reference(urn:uuid:9243cc20-27bd-4f87-ba90-0328ed474950) "aTypingLab, Inc"
  * type = "Organization"
* reasonCode.text = "tissue typing for donor registry"