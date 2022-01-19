Instance: bundle-sequence-phase-relation-CYP2C19
InstanceOf: Bundle
Usage: #example
* type = #transaction
* entry[0].fullUrl = "urn:uuid:20ac0aeb-6bd4-4e92-a891-d44a807bfe00"
* entry[=].resource = dv-5c7e9e1ca8252
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:20ac0aeb-6bd4-4e92-a891-d44a807bfe01"
* entry[=].resource = dv-5c7e9e1ca82e4
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:20ac0aeb-6bd4-4e92-a891-d44a807bfe02"
* entry[=].resource = sid-5c7e9e1ca8a29
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:20ac0aeb-6bd4-4e92-a891-d44a807bfe03"
* entry[=].resource = sequence-phase-relation-CYP2C19
* entry[=].request.method = #POST
* entry[=].request.url = "DiagnosticReport"

Instance: sequence-phase-relation-CYP2C19
InstanceOf: GenomicsReport
Usage: #inline
* status = #final
* category = DiagnosticService#GE
* code = LNC#81254-5
  * text = "Genetic analysis report"
* result[0] = Reference(dv-5c7e9e1ca8252)
* result[+] = Reference(dv-5c7e9e1ca82e4)
* result[+] = Reference(sid-5c7e9e1ca8a29)
