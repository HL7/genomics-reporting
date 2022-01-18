Instance: diagnosticreport-cgexample
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[0].fullUrl = "http://example.org/fhir/DiagnosticReport/report"
* entry[=].resource = report
* entry[+].fullUrl = "http://example.org/fhir/Patient/ExamplePatient"
* entry[=].resource = patient
* entry[+].fullUrl = "http://example.org/fhir/Specimen/specimen"
* entry[=].resource = specimen
* entry[+].fullUrl = "http://example.org/fhir/Organization/lab"
* entry[=].resource = lab
* entry[+].fullUrl = "http://example.org/fhir/DiagnosticRequest/request"
* entry[=].resource = request
* entry[+].fullUrl = "http://example.org/fhir/Observation/overall-interp"
* entry[=].resource = overall-interp
* entry[+].fullUrl = "http://example.org/fhir/Observation/discrete-variant"
* entry[+].fullUrl = "http://example.org/fhir/Observation/dis-path"
* entry[=].resource = dis-path
* entry[+].fullUrl = "http://example.org/fhir/Observation/complex-variant"
* entry[=].resource = complex-variant
* entry[+].fullUrl = "http://example.org/fhir/Observation/complex-dis-path"
* entry[=].resource = complex-dis-path
* entry[+].fullUrl = "http://example.org/fhir/Observation/complex-component-D"
* entry[+].fullUrl = "http://example.org/fhir/Observation/complex-component-E"
* entry[+].fullUrl = "http://example.org/fhir/Observation/haplotype"
* entry[=].resource = haplotype
* entry[+].fullUrl = "http://example.org/fhir/Observation/genotype"
* entry[=].resource = genotype
* entry[+].fullUrl = "http://example.org/fhir/Observation/metab"
* entry[=].resource = metab
* entry[+].fullUrl = "http://example.org/fhir/Observation/efficacy"
* entry[=].resource = efficacy
* entry[+].fullUrl = "http://example.org/fhir/Observation/highrisk"
* entry[=].resource = highrisk
* entry[+].fullUrl = "http://example.org/fhir/Task/usage"
* entry[=].resource = usage