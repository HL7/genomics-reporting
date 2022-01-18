Instance: Inline-Instance-for-oncology-report-example-16
InstanceOf: DiagnosticReport
Usage: #inline
* identifier.system = "http://molit.eu/fhir/genomics/NamingSystem/cegat/reportID"
* identifier.value = "42867"
* status = #final
* category = $v2-0074#GE "Genetics"
* code = $loinc#81247-9 "Master HL7 genetic variant reporting panel"
* subject = Reference(urn:uuid:f7a438e6-f484-453d-97e8-aa4d51008648)
* issued = "2019-09-15T11:35:05.722-04:00"
* performer = Reference(urn:uuid:fc16d84c-8584-4e1d-baae-64e2f95bfe17)
* specimen = Reference(urn:uuid:a2041c83-b73d-4fc8-9466-4ba4a92da516)
* result[0] = Reference(urn:uuid:dac358c3-403a-4dbb-b478-4259aed882ae)
* result[+] = Reference(urn:uuid:1d773d66-cec7-44a2-b92a-46d00adeae00)
* result[+] = Reference(urn:uuid:842d9ab9-d940-4f0c-adf9-e5c528f5c0e5)
* result[+] = Reference(urn:uuid:9a9f9a4a-52e3-4738-bd0b-a25374bbf358)
* result[+] = Reference(urn:uuid:58828523-8893-45fc-973b-16290366c5e5)
* result[+] = Reference(urn:uuid:2c28b23f-3e9f-4c03-8c8f-0e76bc5dc9c2)
* result[+] = Reference(urn:uuid:41bebbe5-e06f-4867-aa22-7c06db69dbd1)
* result[+] = Reference(urn:uuid:1642f190-e2c6-4999-8040-b9b2a70618bf)
* result[+] = Reference(urn:uuid:c3587931-242f-4129-93f9-be24500c8f29)
* result[+] = Reference(urn:uuid:41695fc0-1fd5-4cc8-95e6-82b2848a5cb6)
* result[+] = Reference(urn:uuid:58eb14f6-4059-4168-86a9-155ae61d30e2)
* result[+] = Reference(urn:uuid:1a71e80f-b044-4a91-80e1-eadbe5a53dca)