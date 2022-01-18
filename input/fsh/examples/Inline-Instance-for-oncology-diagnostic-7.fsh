Instance: Inline-Instance-for-oncology-diagnostic-7
InstanceOf: GenomicsReport
Usage: #inline
* status = #final
* category = $v2-0074#GE
* code = $loinc#81247-9 "Master HL7 genetic variant reporting panel"
  * text = "Genetic analysis report"
* subject = Reference(urn:uuid:d0b4affa-91d6-46d1-af01-b30d9f16ef6d)
* performer = Reference(urn:uuid:a48256f8-db37-44e0-a0f6-d7af16c7c9ef)
* specimen = Reference(urn:uuid:a5d6a6a9-4859-480e-85b2-56974fef3b9d)
* result[0] = Reference(urn:uuid:16fdd5fc-e665-48af-99e4-48d603f3e12d) "BRAF V600E mutation observed"
* result[+] = Reference(urn:uuid:1bf9642d-fd1c-4819-8c5d-44fae4bad524) "melanoma implicated"