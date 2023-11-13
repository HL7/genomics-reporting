Instance: bundle-sequence-phase-relation-CYP2C19
InstanceOf: Bundle
Description: "Example Sequence Phase Relation showing a report with two variants in cis"
Usage: #example
* type = #transaction
* entry[0].fullUrl = "urn:uuid:19ac0aeb-6bd4-4e92-a891-d44a807bfe60"
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
* entry[+].fullUrl = "urn:uuid:19ac0aeb-6bd4-4e92-a891-d44a807bfeab"
* entry[=].resource = performingLab
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"
* entry[+].fullUrl = "urn:uuid:19ac0aeb-6bd4-4e92-a891-d44a807bfeac"
* entry[=].resource = patient
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"

Instance: sequence-phase-relation-CYP2C19
InstanceOf: GenomicReport
Usage: #inline
* status = #final
* category[Genetics] = $DIAGNOSTICSERVICE#GE
* code = $LNC#81254-5
  * text = "Genetic analysis report"
* result[0] = Reference(urn:uuid:19ac0aeb-6bd4-4e92-a891-d44a807bfe60)
* result[+] = Reference(urn:uuid:20ac0aeb-6bd4-4e92-a891-d44a807bfe01)
* result[+] = Reference(urn:uuid:20ac0aeb-6bd4-4e92-a891-d44a807bfe02)
