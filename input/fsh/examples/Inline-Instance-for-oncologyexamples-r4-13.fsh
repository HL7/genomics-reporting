Instance: Inline-Instance-for-oncologyexamples-r4-13
InstanceOf: GenomicsReport
Usage: #inline
* status = #final
* category = $v2-0074#GE
* code = $loinc#81247-9 "Master HL7 genetic variant reporting panel"
  * text = "Genetic analysis report"
* subject = Reference(urn:uuid:d0b4affa-91d6-46d1-af01-b30d9f16ef6d)
* performer = Reference(urn:uuid:a48256f8-db37-44e0-a0f6-d7af16c7c9ef)
* specimen = Reference(urn:uuid:a5d6a6a9-4859-480e-85b2-56974fef3b9d)
* result[0] = Reference(urn:uuid:16fdd5fc-e665-48af-99e4-48d603f3e12d) "SNV analysis for JAK2 variant"
* result[+] = Reference(urn:uuid:772de7d7-e1bd-4183-bdb5-cea8eda317cd) "SNV analysis for KDR variant"
* result[+] = Reference(urn:uuid:b33eb7ec-d83e-49d2-b0f3-729d024ebe01) "SNV analysis for ERBB4 variant"
* result[+] = Reference(urn:uuid:40e85eda-4d31-4bd2-a5a0-c39d63f9824f) "TMB value analysis"
* result[+] = Reference(urn:uuid:64b91716-6431-41bd-8fd4-7ac99bebdee9) "MSI status analysis"
* result[+] = Reference(urn:uuid:1bf9642d-fd1c-4819-8c5d-44fae4bad524) "Therapy match result 1"
* result[+] = Reference(urn:uuid:1301943b-55db-4adf-8355-3635f7268a1b) "Therapy match result 2"
* result[+] = Reference(urn:uuid:05713d1c-0df5-46d5-a5a9-2085eef56c20) "Therapy match result 3"
* result[+] = Reference(urn:uuid:294f1401-e2eb-4df1-b6d2-09e1b7a6eca4) "Therapy match result 4"